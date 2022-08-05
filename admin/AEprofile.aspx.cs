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
    string qry, img, fname;
    SqlDataReader dr;
    int tid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {            
            txtname.Text = Session["Aname"].ToString();
            txtemail.Text = Session["Aemail"].ToString();
        }
    }
    protected void btn_change_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "update admin_reg set aname='" + txtname.Text + "',aemail='" + txtemail.Text + "' where aname='" + Session["Aname"] + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Session["Aname"] = txtname.Text;
        Session["Aemail"] = txtemail.Text;
        Response.Redirect("Ahome.aspx");
        cn.Close(); 
    }
}