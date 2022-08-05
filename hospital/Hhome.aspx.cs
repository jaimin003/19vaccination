using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class hospital_Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    String totc,tota,totd,totr,totvc,totdoc;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select  Sum(tot_case) from Soutbreak";
        cmd = new SqlCommand(qry, cn);
        totc = cmd.ExecuteScalar().ToString();     
        if (totc != "0")
        {
            lbltcase.Text = totc;
        }
        else
        {
            lbltcase.Text = "0";
        }
        cn.Close();


        cn.Open();
        qry = "select  Sum(tot_active) from Soutbreak";
        cmd = new SqlCommand(qry, cn);
        tota = cmd.ExecuteScalar().ToString();
        if (tota != "0")
        {
            lblacase.Text = tota;
        }
        else
        {
            lblacase.Text  = "0";
        }
        cn.Close();



        cn.Open();
        qry = "select  Sum(tot_death) from Soutbreak";
        cmd = new SqlCommand(qry, cn);
        totd = cmd.ExecuteScalar().ToString();
        if (totd != "0")
        {
            lbldcase.Text  = totd;
        }
        else
        {
            lbldcase.Text = "0";
        }
        cn.Close();

        cn.Open();
        qry = "select  Sum(tot_recover) from Soutbreak";
        cmd = new SqlCommand(qry, cn);
        totr = cmd.ExecuteScalar().ToString();
        if (totr != "0")
        {
            lblrcase.Text = totr;
        }
        else
        {
            lblrcase.Text = "0";
        }
        cn.Close();


        cn.Open();
        qry = "select  Count(cid) from vcenter_mstr where hname='" + Session["hname"] + "'";
        cmd = new SqlCommand(qry, cn);
        totvc = cmd.ExecuteScalar().ToString();
        if (totvc != "0")
        {
            lblvc.Text = totvc;
        }
        else
        {
            lblvc.Text = "0";
        }
        cn.Close();



        cn.Open();
        qry = "select  Count(did) from doctor_mstr where hospital='" + Session["hname"]+ "'";
        cmd = new SqlCommand(qry, cn);
        totdoc = cmd.ExecuteScalar().ToString();
        if (totdoc != "0")
        {
            lbld.Text = totdoc;
        }
        else
        {
            lbld.Text = "0";
        }
        cn.Close();
        
        
    }
}