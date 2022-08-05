using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class user_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int status1, idno1, age1;
    string pname1, gen1, idname1, vname1;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from sdose where pname='" + Application["uname"] + "' and email='" + Session["umail"] + "' ";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            status1 = Convert.ToInt32(dr["status"]);
            if (status1 == 2)
            {
                lblpname.Text = dr["pname"].ToString();
                lblgen.Text = dr["gender"].ToString();
                lblidname.Text = dr["idname"].ToString();
                lblage.Text = dr["age"].ToString();
                lblvname.Text = dr["vname"].ToString();
                lblidno.Text = dr["idno"].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("2_dose_msg.aspx");
    }
}