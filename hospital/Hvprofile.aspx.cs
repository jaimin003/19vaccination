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
    SqlDataReader dr;
    int cid, sid;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from hosp_reg where hname='" + Session["hname"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            txthname.Text = dr["hname"].ToString();
            txtemail.Text = dr["hemail"].ToString();           
            txtphno.Text = dr["phno"].ToString();
            txtadd.Text = dr["address"].ToString();
            sid = Convert.ToInt32(dr["state"]);
            cid = Convert.ToInt32(dr["city"]);
        }
        cn.Close();

        cn.Open();
        qry = "select * from state_mstr where sid='" + sid+ "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            txtstate.Text = dr["sname"].ToString();         
        }
        cn.Close();


        cn.Open();
        qry = "select * from city_mstr where cid='" + cid + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            txtcity.Text = dr["cname"].ToString();         
        }
        cn.Close();
                  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Hhome.aspx");
    }
}