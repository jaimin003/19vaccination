using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_Default : System.Web.UI.Page
{
    int tid;
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    string qry = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        tid = Convert.ToInt32(Request.QueryString.Get("cid"));
        qry = "delete from city_mstr where cid='" + tid + "'";
        cn.Open();
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("city.aspx");
    }
}