using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString.Get("name");      
        txthname.Text = Request.QueryString.Get("hos");      
        txtdname.Text = Request.QueryString.Get("name");
        txtemail.Text = Request.QueryString.Get("email");        
        txtphno.Text = Request.QueryString.Get("phno");
        txtbio.Text = Request.QueryString.Get("bio");
        txtfees.Text = Request.QueryString.Get("fees");
        lbldname.Text = Request.QueryString.Get("name");
        lblcno.Text = Request.QueryString.Get("phno");
        lblemail.Text = Request.QueryString.Get("email");
        Image1.ImageUrl = "~/DocImg/" + Request.QueryString.Get("img");
    }
}