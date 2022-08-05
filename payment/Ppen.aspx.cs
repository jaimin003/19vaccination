using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
public partial class payment_Ppen : System.Web.UI.Page
{
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
        int status1;
    string pname1,email1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_refresh_Click(object sender, EventArgs e)
    {
        pname1 = Application["uname"].ToString();
        email1 = Application["umail"].ToString();
        cn.Open();
        qry = "select * from Vpaid where pname='" + pname1 + "' and email='" + email1 + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            status1 = Convert.ToInt32(dr["status"]);
        }
        if(status1 == 1)
        {
            Response.Redirect("Suc.aspx");
        }
        else
        {
            cn.Close();
            cn.Open();
            qry = "delete from VaccineBook_mstr where pname='" + pname1 + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            cn.Open();
            qry = "delete from Vpaid where pname='" + pname1 + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        
            Response.Redirect("Tfail.aspx");
        }
    }
}





        