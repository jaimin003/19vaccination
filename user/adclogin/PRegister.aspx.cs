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
public partial class ExtraCovid_Register : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    string fname;
    int k;
    Random ran = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {
        k = ran.Next(1000, 2000);
        Image1.Visible = false;
    }



    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
            {

                fname = FileUpload1.FileName;
                ViewState["fname"] = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/User_img/" + fname));
                Label1.Text = "file uploaded successsfully";
                 Image1.ImageUrl = "~/User_img/" + fname;

                fname = ViewState["fname"].ToString();
                cn.Open();
                qry = "insert into Uregister_mstr values('" + txtname.Text + "','" + txtmail.Text + "','" + txtpass.Text + "','" + txtcno.Text + "','" + k.ToString() + "','0','" + fname + "','" + txtage.Text + "')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();






                MailMessage mail = new MailMessage();
                string mailid = txtmail.Text;
                mail.To.Add(mailid);
                mail.From = new MailAddress("jaiminpatel.mca21@scet.ac.in");
                mail.Subject = "PUBLIC HEALTH CARE";
                string Body = "YOUR OTP NUMBER IS : " + k.ToString();
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
                cn.Close();
                Response.Write("<script lang='javascript'>alert('Email Sent Successfullyy!!')</script>");
                Response.Redirect("PLogin.aspx");
            }
            else
            {
                Label1.Text = "select a image file";
                
            }
        }
        else
        {
            Label1.Text = "please select a file";          
        }

        //fname = ViewState["fname"].ToString();
        
    }


  
    //private string CreateBody()
    //{
    //    string body = string.Empty;
    //    using (StreamReader reader = new StreamReader(Server.MapPath("~/emaild/otp.html")))
    //    {

    //        body = reader.ReadToEnd();

    //    }

    //    body = body.Replace("UNAME", txtname.Text); //replacing Parameters

    //    //body = body.Replace("{lname}", txt_lname.Text);

    //    body = body.Replace("OTP", k.ToString());

    //    return body;

    //}
}