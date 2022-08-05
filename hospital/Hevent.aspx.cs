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
    string einame;
    DateTime vdate = System.DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bt_upload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
            {

                einame = FileUpload1.FileName;
                ViewState["einame"] = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/event_img/" + einame));
                Label1.Text = "file uploaded successsfully";
                Image1.ImageUrl = "~/event_img/" + einame;


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
    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime txt = Convert.ToDateTime(txtdate.Text);
        if (txt > vdate)
        {
            einame = ViewState["einame"].ToString();
            cn.Open();
            qry = "insert into event_mstr values('" + Session["hname"].ToString() + "','" + txtename.Text + "','" + txtedesc.Text + "','" + txtdate.Text + "','" + einame + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Vevent.aspx");
        }
        else
        {
            Response.Write("<script lang='javascript'>alert('Please Select Valid Date!!')</script>");
        }
    }
}