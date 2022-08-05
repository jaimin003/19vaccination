using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class hospital_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry, Hname;
    int cid;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            Hname = Session["hname"].ToString();
            cn.Open();
            qry = "select * from hosp_reg where hname='" + Hname + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            {
                dr.Read();
                txthname.Text = dr["hname"].ToString();
                txtemail.Text = dr["hemail"].ToString();
                txtphno.Text = dr["phno"].ToString();
                txtadd.Text = dr["address"].ToString();
            }
            cn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "update hosp_reg set hname='" + txthname.Text + "',hemail='" + txtemail.Text + "',phno='" + txtphno.Text + "',address='" + txtadd.Text + "' where hname='" + Session["hname"] + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Session["hname"] = txthname.Text;
        Response.Redirect("Hhome.aspx");
        cn.Close();  
    }
}