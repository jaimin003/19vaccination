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

            ViewState["fname"] = Request.QueryString.Get("simg").ToString();

            Image1.ImageUrl = "~/Hos_service_img/" + Request.QueryString.Get("simg");
            txtdname.Text = Request.QueryString.Get("sname");

            txtbio.Text = Request.QueryString.Get("sdes");

        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        fname = ViewState["fname"].ToString();
        cn.Open();
        qry = "update service_mstr set servicename='" + txtdname.Text + "',dis='" + txtbio.Text + "',img='" + fname + "' where sid='" + Request.QueryString.Get("sid") + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("Vservice.aspx");
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
                    FileUpload1.SaveAs(Server.MapPath("~/Hos_service_img/" + fname));
                    Label1.Text = "file uploaded successsfully";
                    Image1.ImageUrl = "~/Hos_service_img/" + fname;
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