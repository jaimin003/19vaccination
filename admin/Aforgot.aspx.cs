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
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class admin_Aforgot : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry, aname, pass;
    SqlDataReader dr;
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
protected void  Button1_Click(object sender, EventArgs e)
{
    cn.Open();
    qry = "select * from admin_reg where aemail='" + txtmail.Text + "'";
    cmd = new SqlCommand(qry, cn);
    dr = cmd.ExecuteReader();
    if (dr.HasRows)
    {
        dr.Read();
        pass = dr["pass"].ToString();
        aname = dr["aname"].ToString();
        cn.Close();
        MailMessage mail = new MailMessage();
        string mailid = txtmail.Text;
        mail.To.Add(mailid);
        mail.From = new MailAddress("jaiminpatel.mca21@scet.ac.in");
        mail.Subject = "FORGOT PASSWORD";
        //mail.Subject = "SUBJECT";
        string Body = "Your Password is:" + pass;
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
        Response.Redirect("Alogin.aspx");
    }
    else
    {
        Response.Write("<script lang='javascript'>alert('Invalid Email')</script>");
    }        
  /*  MailMessage mail = new MailMessage();
    string mailid = txtmail.Text;
    mail.To.Add(mailid);
    mail.From = new MailAddress("jaiminpatel.mca21@scet.ac.in");
    mail.Subject = "SUBJECT";
    string Body = "TYPE UR MSG HERE......";
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
    Response.Redirect("Alogin.aspx");*/
}
}



