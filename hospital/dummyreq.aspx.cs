using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class hospital_Default : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    string qry;
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    int id;
    string action;
    string dosename, cname, tdose;
    string pname1, email1, cname1, hname1, idname, vdose1, vname1, date1, phno1, idno1, gender, time;
    int age1, price1;
    protected void Page_Load(object sender, EventArgs e)
    {
        dosename = Request.QueryString.Get("dose");
        cname = Request.QueryString.Get("pname");
        action = Request.QueryString.Get("action");
        id = Convert.ToInt32(Request.QueryString.Get("bid"));

        if (action == "ACCEPTED")
        {

            cn.Open();
            qry = "select * from VBook_mstr where pname='" + cname + "' and bid='" + id + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                pname1 = dr["pname"].ToString();
                email1 = dr["email"].ToString();
                phno1 = dr["phno"].ToString();
                cname1 = dr["cname"].ToString();
                hname1 = dr["hname"].ToString();
                idno1 = dr["idno"].ToString();
                idname = dr["idname"].ToString();
                gender = dr["gender"].ToString();
                vdose1 = dr["vdose"].ToString();
                time = dr["time"].ToString();
                price1 = Convert.ToInt32(dr["price"].ToString());
                age1 = Convert.ToInt32(dr["age"]);
                vname1 = dr["vname"].ToString();
                date1 = dr["date"].ToString();
                cn.Close();
                if (dosename == "2nd Dose")
                {



                    id = Convert.ToInt32(Request.QueryString.Get("bid"));
                    //cn.Open();
                    //qry = "update Vpaid set status = 1,pdate ='" + DateTime.Now.ToString("dd-MM-yyyy") + "' where bid='" + id + "'";
                    //cmd = new SqlCommand(qry, cn);
                    //cmd.ExecuteNonQuery();
                    //cn.Close();                 
                    cn.Open();
                    qry = "update VBook_mstr set status = 2,date='" + System.DateTime.Today + "' where bid='" + id + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    cn.Open();
                    qry = "insert into sdose values('" + id + "','" + pname1 + "','" + email1 + "','" + phno1 + "','" + cname1 + "','" + hname1 + "','" + idname + "','" + idno1 + "','" + gender + "','" + vdose1 + "','2','" + age1 + "','" + vname1 + "','" + price1 + "','" + System.DateTime.Today + "','" + time + "')";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    MailMessage mail = new MailMessage();
                    string mailid = Request.QueryString.Get("mail");
                    mail.To.Add(mailid);
                    mail.From = new MailAddress("jaiminpatel.mca21@scet.ac.in");
                    mail.Subject = "REGARDING VACCINATION";
                    string Body = "DEAR " + pname1 + ", YOUR HAVE SUCCESSFULLY  BEEN VACCINATED WITH YOUR " + dosename + " WITH " + vname1 + " ON " + date1 + " AT " + time + "." + " YOU MAY DOWNLOAD YOUR VACCINATION CERTIFICATE FROM - " + "http://localhost:1666/proj2/user/dummycerti.aspx" + "STAY SAFE";
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
                    Response.Write("<script lang='javascript'>alert('Email Sent Successfully!!')</script>");
                    Response.Redirect("Vreq_list.aspx");
                }
                else
                {
                    cn.Close();
                    id = Convert.ToInt32(Request.QueryString.Get("bid"));
                    cn.Open();
                    qry = "update VBook_mstr set status = 1,date='" + System.DateTime.Today + "' where bid='" + id + "'";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    //cn.Open();
                    //qry = "update Vpaid set status = 1,pdate ='" + DateTime.Now.ToString("dd-MM-yyyy") + "' where bid='" + id + "'";
                    //cmd = new SqlCommand(qry, cn);
                    //cmd.ExecuteNonQuery();
                    //cn.Close();                 

                    cn.Open();
                    qry = "insert into Fdose values('" + id + "','" + pname1 + "','" + email1 + "','" + phno1 + "','" + cname1 + "','" + hname1 + "','" + idname + "','" + idno1 + "','" + gender + "','" + vdose1 + "','1','" + age1 + "','" + vname1 + "','" + price1 + "','" + System.DateTime.Today + "','" + time + "')";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    MailMessage mail = new MailMessage();
                    string mailid = Request.QueryString.Get("mail");
                    mail.To.Add(mailid);
                    mail.From = new MailAddress("jaiminpatel.mca21@scet.ac.in");
                    mail.Subject = "REGARDING VACCINATION";
                    string Body = "DEAR " + pname1 + ", YOUR HAVE SUCCESSFULLY  BEEN VACCINATED WITH YOUR " + dosename + " WITH " + vname1 + " ON " + date1 + " AT " + time + "." + " YOU MAY DOWNLOAD YOUR VACCINATION CERTIFICATE FROM - " + "http://localhost:1666/proj2/user/dummycerti.aspx" + "STAY SAFE";
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
                    Response.Write("<script lang='javascript'>alert('Email Sent Successfully!!')</script>");
                    Response.Redirect("Vreq_list.aspx");
                }

            }

        }                  
    }
}