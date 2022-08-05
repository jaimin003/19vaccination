using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
using System.IO;
public partial class UserCovid_adclogin_Forgot : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry,pass,uname;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Uregister_mstr where email='" + txtmail.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            pass = dr["password"].ToString();
            uname = dr["name"].ToString();
            MailMessage mail = new MailMessage();
            string mailid = txtmail.Text;
            mail.To.Add(mailid);
            mail.From = new MailAddress("jaiminpatel.mca21@scet.ac.in");
            mail.Subject = "FORGOT PASSWORD";
            string Body = "YOUR NAME IS : " + uname + " YOUR PASSWORD IS :" + pass;
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

            Response.Redirect("PLogin.aspx");

        }
        else
        {
            Response.Write("<script lang='javascript'>alert('Invalid Email')</script>");
        }
    }
    //private string CBody()
    //{
    //    string body = string.Empty;
    //    using (StreamReader reader = new StreamReader(Server.MapPath("~/forgot/forgot.html")))
    //    {
    //        body = reader.ReadToEnd();
    //    }

    //    body = body.Replace("Uname", uname);
    //    body = body.Replace("Ans", pass);
    //    return body;

    //}
}