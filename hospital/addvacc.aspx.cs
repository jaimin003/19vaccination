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
    int sumvacc = 0, totvacc;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        totvacc = Convert.ToInt32(txttotvac.Text);
        sumvacc = Convert.ToInt32(txtuvac.Text) + Convert.ToInt32(txtremain.Text);
        if (sumvacc > totvacc)
        {
            Response.Write("<script lang='javascript'>alert('Please enter correct Data.(check data agin).')</script>");
        }
        else
        {
            cn.Open();
            qry = "insert into vacc_mstr values('" + txtvname.Text + "','" + ddlage.SelectedValue + "','" + txtvtype.Text + "','" + txtmfg.Text + "','" + Convert.ToInt32(txtprc.Text) + "','" + Convert.ToInt32(txttotvac.Text) + "','" + Convert.ToInt32(txtuvac.Text) + "','" + Convert.ToInt32(txtremain.Text) + "','" + Session["hname"].ToString() + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("vacclist.aspx");
        }
    }
}