using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    String tots, toth, totd, tote, totvc, totu;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select  Count(id) from hosp_reg";
        cmd = new SqlCommand(qry, cn);
        toth = cmd.ExecuteScalar().ToString();
        if (toth != "0")
        {
            lblhosp.Text = toth;
        }
        else
        {
            lblhosp.Text = "0";
        }
        cn.Close();

        cn.Open();
        qry = "select  Count(cid) from vcenter_mstr";
        cmd = new SqlCommand(qry, cn);
        totvc = cmd.ExecuteScalar().ToString();
        if (totvc != "0")
        {
            lblc.Text = totvc;
        }
        else
        {
            lblc.Text = "0";
        }
        cn.Close();


        cn.Open();
        qry = "select  Count(sid) from service_mstr";
        cmd = new SqlCommand(qry, cn);
        tots = cmd.ExecuteScalar().ToString();
        if (tots != "0")
        {
            lbls.Text = tots;
        }
        else
        {
            lbls.Text = "0";
        }
        cn.Close();

        cn.Open();
        qry = "select  Count(eid) from event_mstr";
        cmd = new SqlCommand(qry, cn);
        tote = cmd.ExecuteScalar().ToString();
        if (tote != "0")
        {
            lble.Text = tote;
        }
        else
        {
            lble.Text = "0";
        }
        cn.Close();


        cn.Open();
        qry = "select  Count(id) from Uregister_mstr";
        cmd = new SqlCommand(qry, cn);
        totu = cmd.ExecuteScalar().ToString();
        if (totu != "0")
        {
            lblu.Text = totu;
        }
        else
        {
            lblu.Text = "0";
        }
        cn.Close();


        cn.Open();
        qry = "select  Count(did) from doctor_mstr";
        cmd = new SqlCommand(qry, cn);
        totd = cmd.ExecuteScalar().ToString();
        if (totd != "0")
        {
            lbld.Text = totd;
        }
        else
        {
            lbld.Text = "0";
        }
        cn.Close();
    }
}