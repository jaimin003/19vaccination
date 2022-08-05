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
    String qry;
    SqlDataReader dr;
    int totcase=0;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int tid = Convert.ToInt32(Request.QueryString.Get("oid"));
            qry = "select * from outbreak where oid='" + tid + "'";
            cn.Open();
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                //ddlstate.Text = Request.QueryString.Get("sname");
                //ddlstate.SelectedItem.Value = Request.QueryString.Get("sname");
                txtsname.Text = dr["sname"].ToString();
                txtcname.Text = dr["cname"].ToString();
                txttotcase.Text = dr["tot_case"].ToString();
                txtrecover.Text = dr["tot_recover"].ToString();
                txtdeath.Text = dr["tot_death"].ToString();
                txtactive.Text = dr["tot_active"].ToString();
                txtneg.Text = dr["tot_neg"].ToString();              
            }
            cn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        totcase = Convert.ToInt32(txtrecover.Text) + Convert.ToInt32(txtdeath.Text) + Convert.ToInt32(txtactive.Text) + Convert.ToInt32(txtneg.Text);                
        int tid = Convert.ToInt32(Request.QueryString.Get("oid"));
        qry = "update outbreak set tot_case='" + totcase + "',tot_recover='" + txtrecover.Text + "',tot_death='" + txtdeath.Text  + "',tot_active='" +txtactive.Text  + "',tot_neg='" + txtneg.Text + "' where oid='" + tid + "'";
        cn.Open();
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("O_list.aspx");
    }
}