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
    SqlDataReader dr;
    int totvacc = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int tid = Convert.ToInt32(Request.QueryString.Get("vid"));
            qry = "select * from vacc_mstr where vid='" + tid + "'";
            cn.Open();
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                //ddlstate.Text = Request.QueryString.Get("sname");
                //ddlstate.SelectedItem.Value = Request.QueryString.Get("sname");
                txtvname.Text = dr["vname"].ToString();
                txtage.Text = dr["age"].ToString();
                txtvtype.Text = dr["type"].ToString();
                txtmfg.Text  = dr["mfg"].ToString();
                txtprc.Text  = dr["price"].ToString();
                txttotvac.Text = dr["tot_vac"].ToString();
                txtuvac.Text = dr["used_vac"].ToString();
                txtremain.Text = dr["remain_vac"].ToString();
            }
            cn.Close();
        }
    }
   
    protected void btn_submit_Click(object sender, EventArgs e)
    {

        totvacc = Convert.ToInt32(txtuvac.Text) + Convert.ToInt32(txtremain.Text);
        int tid = Convert.ToInt32(Request.QueryString.Get("vid"));
        qry = "update vacc_mstr set vname='" + txtvname.Text + "',age='" + Convert.ToInt32(txtage.Text) + "',type='" + txtvtype.Text + "',mfg='" + txtmfg.Text + "',price='" + txtprc.Text + "',tot_vac='" + totvacc + "',used_vac='" + txtuvac.Text + "',remain_vac='" + txtremain.Text + "' where vid='" + tid + "'";
        cn.Open();
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("vacclist.aspx");
    }
}