using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class hospital_h_login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    String qry;
    SqlDataReader dr;
    int tstatus;
    int cid, sid;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {

        qry = "select * from hosp_reg where hemail='" + txtemail.Text + "' and pass='" + txtpass.Text + "'";
        cn.Open();
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            tstatus = Convert.ToInt32(dr["status"]);
            sid = Convert.ToInt32(dr["state"]);
            cid = Convert.ToInt32(dr["city"]);
        }
        else
        {
            Response.Redirect("H_reg.aspx");
        }
        if (tstatus == 1)
        {
            Session["tdate"] = System.DateTime.Now;
            Session["hname"] = dr["hname"].ToString();
            cn.Close();
            cn.Open();
            qry = "select * from state_mstr where sid='" + sid + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Session["sname"] = dr["sname"].ToString(); ;
            }
            cn.Close();


            cn.Open();
            qry = "select * from city_mstr where cid='" + cid + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Session["cname"] = dr["cname"].ToString(); ;
            }        
            Response.Redirect("Hhome.aspx");

        }
        else
        {
            Response.Write("<script lang='javascript'>alert('Your Hospital not Verified from Admin Side.')</script>");
            txtemail.Text = "";
            txtpass.Text = "";
        }
        cn.Close();
        /*qry = "select * from hosp_reg where hemail='" + txtemail.Text + "' and pass='" + txtpass.Text + "' and status=1";
        cn.Open();
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Session["hname"] = dr["hname"].ToString();
            Session["hemail"] = dr["hemail"].ToString();
            Response.Redirect("Hhome.aspx");
        }
        else
        {
            Response.Redirect("H_reg.aspx");
        }
        cn.Close();*/
    }
}