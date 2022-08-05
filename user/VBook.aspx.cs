using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Data;
using System.IO;
public partial class user_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry, vname;
    string fname, idno, idname, gender;
    int dage, flag = 0, flag1 = 0;
    SqlDataReader dr;
    int status, st, price, age1;
    DateTime date1, date2 = new DateTime();
    DateTime vdate = System.DateTime.Now;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Uregister_mstr where name='" + Application["uname"] + "' and email='" + Session["umail"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
        }
        else
        {
            Response.Redirect("../user/adclogin/PLogin.aspx");
        }
        cn.Close();

        price = Convert.ToInt32(Request.QueryString.Get("price"));
        age1 = Convert.ToInt32(Request.QueryString.Get("aage"));
        dage = Convert.ToInt32(Session["age"]);
        if (age1 >=15)
        {
            if (dage >= 15 && dage <= 110)
            {
                flag1 = 1;
            }
            else
            {
                Response.Write("<script lang='javascript'>alert('Your Age is Not Applicable For This Center!!')</script>");
                Response.Redirect("Ageerror.aspx");
            }
        }
        //if (age1 == 45)
        //{
        //    if (dage >= 45)
        //    {
        //        flag1 = 1;
        //    }
        //    else
        //    {
        //        Response.Write("<script lang='javascript'>alert('Your Age is Not Applicable For This Center!!')</script>");
        //        Response.Redirect("Ageerror.aspx");
        //    }
        //}
        cn.Open();
        qry = "select * from VBook_mstr where pname='" + Session["uname"] + "' and email='" + Session["umail"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            st = Convert.ToInt32(dr["status"]);
            if (st == 0)
            {
                Response.Redirect("Msg.aspx");
            }
        }
        cn.Close();



        cn.Open();
        qry = "select * from VBook_mstr where pname='" + Session["uname"] + "' and email='" + Session["umail"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            gender = dr["gender"].ToString();
            idname = dr["idname"].ToString();
            idno = dr["idno"].ToString();
            status = Convert.ToInt32(dr["status"]);
            date1 = Convert.ToDateTime(dr["date"]);
            date2 = System.DateTime.Today;
            System.TimeSpan diff = date2.Subtract(date1);
            System.TimeSpan diff1 = date2 - date1;
            int dd = Convert.ToInt32((date2 - date1).TotalDays);
            int dd1 = 90;
            if (status == 1)
            {
                if (dd >= dd1)
                {
                    txtano.Text = idno;
                    txtano.ReadOnly = true;

                    ddlidname.Text = idname;
                    ddlidname.Enabled = false;

                    txtdose.Text = "2nd Dose";
                    txtdose.ReadOnly = true;

                    rdgen.Text = gender;
                    rdgen.Enabled = false;
                }
                else
                {
                    Response.Redirect("Acc_vdetails.aspx");
                }

            }
            else if (status == 2)
            {
                Response.Redirect("2_dose_msg.aspx");
            }
        }
        else
        {
            txtdose.Text = "1st Dose";
            txtdose.ReadOnly = true;
        }
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        DateTime txt = Convert.ToDateTime(txtdate.Text);
        if (txt >= vdate)
        {

            //dage = Convert.ToInt32(Session["age"]);
            if (flag1 == 1)
            {
                if (status == 1)
                {
                    cn.Open();
                    qry = "select * from Fdose where pname='" + Application["uname"] + "' and email='" + Session["umail"] + "'";
                    cmd = new SqlCommand(qry, cn);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        vname = dr["vname"].ToString();
                    }
                    if (vname == Request.QueryString.Get("vname"))
                    {

                        cn.Close();

                        cn.Open();
                        qry = "update VBook_mstr set cname='" + Request.QueryString.Get("cname") + "',vname='" + Request.QueryString.Get("vname") + "',hname='" + Request.QueryString.Get("hname") + "',vdose='" + txtdose.Text + "',status='0',time='" + ddlslot.SelectedItem.Text + "',price='" + price + "',date='" + txtdate.Text + "' where  pname='" + Session["uname"].ToString() + "'";
                        Application["price"] = price;
                        cmd = new SqlCommand(qry, cn);
                        cmd.ExecuteNonQuery();
                        cn.Close();
                        MailMessage mail = new MailMessage();
                        string mailid = Session["umail"].ToString();
                        mail.To.Add(mailid);
                        mail.From = new MailAddress("jaiminpatel.mca21@scet.ac.in");
                        mail.Subject = "REGARDING VACCINATION";
                        string Body = "DEAR " + Session["uname"].ToString() + ", YOUR VACCINATION IS SCHEDULED FOR " + txtdate.Text + " " + ddlslot.SelectedItem.Text + " AT " + Request.QueryString.Get("cname") + " FOR " + txtdose.Text + ".";
                        mail.Body = Body;
                        mail.IsBodyHtml = true;

                        SmtpClient smtp = new SmtpClient();

                        //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
                        //  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


                        smtp.Host = "smtp.gmail.com";
                        smtp.Credentials = new System.Net.NetworkCredential("jaiminpatel.mca21@scet.ac.in", "HarHarMhadev003");
                        smtp.Port = 587;  //465
                        smtp.EnableSsl = true;
                        smtp.Send(mail);
                        Response.Write("<script lang='javascript'>alert('Email Sent Successfullyy!!')</script>");
                        Response.Redirect("../payment/PaytmF.aspx");
                        cn.Close();
                    }
                    else
                    {
                        flag = 1;
                        Response.Redirect("Vac_info.aspx?flag1=" + flag);
                    }
                }
                else
                {
                    if (flag1 == 1)
                    {
                        cn.Open();
                        qry = "insert into VBook_mstr values('" + Session["uname"].ToString() + "','" + Session["umail"].ToString() + "','" + Session["cno"].ToString() + "','" + Request.QueryString.Get("cname") + "','" + Request.QueryString.Get("hname") + "','" + ddlidname.SelectedItem.Text + "','" + txtano.Text + "','" + rdgen.SelectedItem.Text + "','" + txtdose.Text + "','0','" + Convert.ToInt32(Session["age"]) + "','" + Request.QueryString.Get("vname") + "','" + price + "','" + ddlslot.SelectedItem.Text + "','" + txtdate.Text + "')";
                        Application["price"] = price;
                        cmd = new SqlCommand(qry, cn);
                        cmd.ExecuteNonQuery();

                        MailMessage mail = new MailMessage();
                        string mailid = Session["umail"].ToString();
                        mail.To.Add(mailid);
                        mail.From = new MailAddress("jaiminpatel.mca21@scet.ac.in");
                        mail.Subject = "REGARDING VACCINATION";
                        string Body = "DEAR " + Session["uname"].ToString() + ", YOUR VACCINATION IS SCHEDULED FOR " + txtdate.Text + " " + ddlslot.SelectedItem.Text + " AT " + Request.QueryString.Get("cname") + " FOR " + txtdose.Text + ".";
                        mail.Body = Body;
                        mail.IsBodyHtml = true;

                        SmtpClient smtp = new SmtpClient();

                        //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
                        //  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


                        smtp.Host = "smtp.gmail.com";
                        smtp.Credentials = new System.Net.NetworkCredential("jaiminpatel.mca21@scet.ac.in", "HarHarMhadev003");
                        smtp.Port = 587;  //465
                        smtp.EnableSsl = true;
                        smtp.Send(mail);
                        Response.Write("<script lang='javascript'>alert('Email Sent Succhttp://localhost:19817/PHC_revised/UserCovid/Uhome.aspxessfullyy!!')</script>");
                        Response.Redirect("../payment/PaytmF.aspx");
                        cn.Close();
                    }
                }

            }

        }
        else
        {
            Response.Write("<script lang='javascript'>alert('Please Select Valid Date!!')</script>");
        }
    }
}

