using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class hospital_H_reg : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    String qry;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_reg_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into hosp_reg values('" + txthname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + DropDownList1.SelectedItem.Value + "','" +DropDownList2.SelectedItem.Value +"','" + txtadd.Text + "','" + txtphno.Text + "','0')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("H_login.aspx");
    }
}