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
        }
        else
        {
            Response.Redirect("../user/adclogin/PLogin.aspx");
        }
        cn.Close();
    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Uhome.aspx");
    }
}