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
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = "../Hos_service_img/" + Request.QueryString.Get("img");
        Label1.Text = Request.QueryString.Get("hname");
        Label2.Text = Request.QueryString.Get("sname");
        Label3.Text = Request.QueryString.Get("dis");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into Feedback_mstr values('" + Session["uname"].ToString() + "','" + Session["umail"].ToString() + "','" + Session["img"].ToString() + "','" + txtview.Text + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("Sdetails.aspx?sname=" + Request.QueryString.Get("sname") +  "&img=" + Request.QueryString.Get("img") + "&dis=" + Request.QueryString.Get("dis") + "&hname=" + Request.QueryString.Get("hname"));
    }
}