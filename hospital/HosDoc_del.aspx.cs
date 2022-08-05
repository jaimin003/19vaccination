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
    protected void Page_Load(object sender, EventArgs e)
    {
         cn.Open();
        qry = "delete  from doctor_mstr where did='" + Request.QueryString.Get("did") + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();        
        cn.Close();        
        Response.Redirect("Doc_list.aspx");
    }
}
