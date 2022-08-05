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
    string qry = "";
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    int sumcase=0,totcase;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        totcase = Convert.ToInt32(txttotcase.Text);
        sumcase = Convert.ToInt32(txtrecover.Text) + Convert.ToInt32(txtdeath.Text) + Convert.ToInt32(txtactive.Text) + Convert.ToInt32(txtneg.Text);                
        if(sumcase>totcase)
        {
            Response.Write("<script lang='javascript'>alert('Please enter correct Data.(check data agin).')</script>");
        }
        else
        {
            qry = "insert into outbreak values('"+ ddlstate.SelectedValue +"','" + ddlcity.SelectedValue + "','"  + ddlstate.SelectedItem.Text + "','" + ddlcity.SelectedItem.Text + "','" + txttotcase.Text + "','" + txtrecover.Text + "','" + txtdeath.Text + "','" + txtactive.Text + "','" + txtneg.Text + "')";
            cn.Open();
            SqlCommand cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("O_list.aspx");
        }
        
    }
}