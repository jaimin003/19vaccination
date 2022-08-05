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

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
        int tid = Convert.ToInt32(Request.QueryString.Get("cid"));
        qry = "select * from vcenter_mstr where cid='" + tid + "'";
        cn.Open();
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            //ddlstate.Text = Request.QueryString.Get("sname");
            //ddlstate.SelectedItem.Value = Request.QueryString.Get("sname");
            txtcname.Text = dr["cname"].ToString();
            txtadd.Text = dr["address"].ToString();
            txtphno.Text = dr["phno"].ToString();
        }
        cn.Close();
        }
    }


    protected void btn_update_Click(object sender, EventArgs e)
    {
        int tid = Convert.ToInt32(Request.QueryString.Get("cid"));
        cn.Open();
        qry = "update vcenter_mstr set cname='" + txtcname.Text + "',address='" + txtadd.Text + "',phno='" + txtphno.Text + "' where cid='" + tid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("centerlist.aspx");
        cn.Close();   
    }
}

