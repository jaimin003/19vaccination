using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;


public partial class payment_PaytmF : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int bid, age1;
    string hname1, pname1, email1, cname1, idimg1, vdose1, vname1, cno1, idno1;
    protected void Page_Load(object sender, EventArgs e)
    {
        //txtprice.Text = Session["price"].ToString();
        //lblp.Text = Session["price"].ToString();
        //pname1 = Session["uname"].ToString();
        //email1 = Session["umail"].ToString();
        //cn.Open();
        //qry = "select * from VaccineBook_mstr where pname='" + pname1 + "' and email='" + email1 + "'";
        //cmd = new SqlCommand(qry, cn);
        //dr = cmd.ExecuteReader();
        //if (dr.HasRows)
        //{
        //    dr.Read();
        //    hname1 = dr["hname"].ToString();
        //    cname1 = dr["cname"].ToString();
        //    vdose1 = dr["vdose"].ToString();
        //    vname1 = dr["vname"].ToString();
        //    cno1 = dr["phno"].ToString();
        //    idno1 = dr["idno"].ToString();
        //    bid = Convert.ToInt32(dr["bid"]);
        //    idimg1 = dr["idimg"].ToString();
        //    age1 = Convert.ToInt32(dr["age"]);
        //}
        
    }
    protected void btn_payment_Click(object sender, EventArgs e)
    {

        cn.Close();
        cn.Open();
        qry = "insert into Vpaid values('" + bid + "','" + pname1 + "','" + email1 + "','" + cno1 + "','" + cname1 + "','" + hname1 + "','" + idno1 + "','" + idimg1 + "','" + vdose1 + "','0','" + age1 + "','" + vname1 + "','" + System.DateTime.Now + "','PAYTM','" + Convert.ToInt32(lblp.Text) + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("cnfrm.aspx");
        
    }
}