using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class hospital_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    string fname;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            ViewState["fname"] = Request.QueryString.Get("img").ToString();

            Image1.ImageUrl = "~/DocImg/" + Request.QueryString.Get("img");
            txtdname.Text = Request.QueryString.Get("name");
            txtmail.Text = Request.QueryString.Get("email");           
            txtphno.Text = Request.QueryString.Get("phno");
            txtbio.Text = Request.QueryString.Get("bio");
            txtfees.Text = Request.QueryString.Get("fees");
        }
       
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        fname = ViewState["fname"].ToString();
        cn.Open();
        qry = "update doctor_mstr set dname='" + txtdname.Text + "',demail='" + txtmail.Text + "',phno='" + txtphno.Text + "',bio='" + txtbio.Text + "',img='" + fname + "',fees='" + Convert.ToInt32(txtfees.Text) + "' where did='" + Request.QueryString.Get("did") + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("Doc_list.aspx");
        cn.Close();  
    }
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
            {
                if (FileUpload1.PostedFile.ContentLength <= 500000)
                {
                    fname = FileUpload1.FileName;
                    ViewState["fname"] = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/DocImg/" + fname));
                    Label1.Text = "file uploaded successsfully";
                    Image1.ImageUrl = "~/DocImg/" + fname;
                }
                else
                {
                    Label1.Text = "plzz select < 500 kb file";
                }
            }
            else
            {
                Label1.Text = "select a image file";
            }
        }
        else
        {
            Label1.Text = "plzz select a file";

        }
        
     
    }
}