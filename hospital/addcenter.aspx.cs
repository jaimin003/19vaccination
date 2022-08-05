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
    SqlDataReader dr;
    string qry,qry1;
    int tvid,tprice,tage;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    protected void btn_submit_Click1(object sender, EventArgs e)
    {
        tvid = Convert.ToInt32(ddlvname.SelectedItem.Value);
        cn.Open();
        qry1 = "select * from vacc_mstr where vid='" + tvid + "'";
        cmd = new SqlCommand(qry1,cn);
        dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            dr.Read();
            tprice = Convert.ToInt32(dr["price"]);
            tage = Convert.ToInt32(dr["age"]);
        }
        cn.Close();
        cn.Open();
        qry = "insert into vcenter_mstr values('" + ddlvname.SelectedItem.Value + "','" + Session["hname"].ToString() + "','" + txtcname.Text + "','" + txtadd.Text + "','" + Session["sname"].ToString() + "','" + Session["cname"].ToString() + "','" + txtphno.Text + "','" + ddlvname.SelectedItem.Text + "','" + tprice + "','" + tage +"')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("centerlist.aspx");
    }
}