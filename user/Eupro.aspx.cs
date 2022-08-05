using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class user_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry, img, fname;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cn.Open();
            qry = "Select * from Uregister_mstr where name='" + Session["uname"] + "' and email='" + Session["umail"] + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txtname.Text = dr["name"].ToString();
                txtemail.Text = dr["email"].ToString();
                txtcno.Text = dr["cno"].ToString();
                txtage.Text = dr["age"].ToString();
                img = dr["img"].ToString();
                Image1.ImageUrl = "../User_img/" + img;
                ViewState["fname"] = img;
                cn.Close();
            }
            else
            {
                Response.Redirect("../user/adclogin/PLogin.aspx");
            }
          }
      }

    protected void Button1_Click(object sender, EventArgs e)
    {
        fname = ViewState["fname"].ToString();
        cn.Open();
        qry = "update Uregister_mstr set name='" + txtname.Text + "',email='" + txtemail.Text + "',cno='" + txtcno.Text + "',img='" + fname + "',age='" + Convert.ToInt32(txtage.Text) + "' where name='" + Session["uname"] + "' and id='" + Session["uid"] + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Session["uname"] = txtname.Text;
        //Response.Redirect("../user/adclogin/Plogin.aspx");
        cn.Close();

        cn.Open();
        qry = "update FeedBack_mstr set img='" + fname + "' where name='" + Session["uname"].ToString() + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();        
        Response.Redirect("../user/adclogin/Plogin.aspx");
        cn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
            {
                if (FileUpload1.PostedFile.ContentLength <= 500000)
                {
                    fname = FileUpload1.FileName;
                    ViewState["fname"] = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/User_img/" + fname));
                    lblpic.Text = "file uploaded successsfully";
                    Image1.ImageUrl = "~/User_img/" + fname;
                    Session["img"] = fname;
                    cn.Close();

                }
                else
                {
                    lblpic.Text = "plzz select < 500 kb file";
                }
            }
            else
            {
                lblpic.Text = "select a image file";
            }
        }
        else
        {
            lblpic.Text = "plzz select a file";

        }
    }
}