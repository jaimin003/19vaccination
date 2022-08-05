using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_Alogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    String qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        qry = "select * from admin_reg where aemail='" + txtemail.Text + "' and pass='" + txtpass.Text + "'";
        cn.Open();
        cmd = new SqlCommand(qry,cn);
        dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            dr.Read();
            Session["Aname"] = dr["aname"].ToString();            
            Session["Aemail"] = dr["aemail"].ToString();
            Response.Redirect("Ahome.aspx");
        }
        else
        {
            Response.Redirect("Areg.aspx");
        }
        cn.Close();
    }
}