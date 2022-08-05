using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class ExtraCovid_OTP : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;    
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_validate_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Uregister_mstr where otp= '" + txtotp.Text + "' and email='" + Session["mail"].ToString() + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            cn.Close();
            cn.Open();
            qry = "update Uregister_mstr set status='1' where email='" + Session["mail"].ToString() + "'";

            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("../Uhome.aspx");
        }
        else
        {
            Response.Write("<script lang='javascript'>alert('Invalid OTP!!')</script>");
        }
        cn.Close();
    }
}