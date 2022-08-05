using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class user_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    String totc;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select  Sum(tot_case) from Soutbreak";
        cmd = new SqlCommand(qry, cn);
        totc = cmd.ExecuteScalar().ToString();
        //tc1.Text = totc.ToString();
        if (totc != "0")
        {
            Label1.Text = totc;
        }
        else
        {
            Label1.Text = "0";
        }
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../user/adclogin/FeedBack.aspx");
    }
}