using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
public partial class payment_Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int bid, age1;
    string hname1, pname1, email1, cname1, idname1, vdose1, vname1, cno1, idno1;
    protected void Page_Load(object sender, EventArgs e)
    {

        txtprice.Text = Application["price"].ToString();
        lblp.Text = Application["price"].ToString();
        pname1 = Application["uname"].ToString();
        email1 = Application["umail"].ToString();
        cn.Open();
        qry = "select * from VaccineBook_mstr where pname='" + pname1 + "' and email='" + email1 + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            hname1 = dr["hname"].ToString();
            cname1 = dr["cname"].ToString();
            vdose1 = dr["vdose"].ToString();
            vname1 = dr["vname"].ToString();
            cno1 = dr["phno"].ToString();
            idno1 = dr["idno"].ToString();
            bid = Convert.ToInt32(dr["bid"]);
            idname1 = dr["idname"].ToString();
            age1 = Convert.ToInt32(dr["age"]);
        }
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Close();
        cn.Open();
        qry = "insert into Vpaid values('" + bid + "','" + pname1 + "','" + email1 + "','" + cno1 + "','" + cname1 + "','" + hname1 + "','" + idno1 + "','" + idimg1 + "','" + vdose1 + "','0','" + age1 + "','" + vname1 + "','" + System.DateTime.Now + "','CASH','" + Convert.ToInt32(lblp.Text) + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("cnfrm.aspx");
    }
}