using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class user_Default3 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    int status1, flag;
    DateTime date1, date2 = new DateTime();
    protected void Page_Load(object sender, EventArgs e)
    {
        flag = 0;
        cn.Open();
        qry = "select * from sdose where pname='" + Application["uname"] + "' and status='2' and email='" + Session["umail"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Response.Redirect("Acc_vdetails2.aspx");
        }
        cn.Close();
        cn.Open();
        qry = "select * from Fdose where pname='" + Application["uname"] + "' and email='" + Session["umail"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            date1 = Convert.ToDateTime(dr["date"]);
            date2 = System.DateTime.Today;
            System.TimeSpan diff = date2.Subtract(date1);
            System.TimeSpan diff1 = date2 - date1;
            int dd = Convert.ToInt32((date2 - date1).TotalDays);
            int dd1 = 30;
            status1 = Convert.ToInt32(dr["status"]);
            if (dd >= dd1)
            {
                flag = 1;
            }
            if (flag == 0)
            {
                if (status1 == 1)
                {
                    Response.Redirect("Acc_vdetails.aspx");
                }
            }

        }
        cn.Close();
        int flag1;
        flag1 = Convert.ToInt32(Request.QueryString.Get("flag1"));
        if (flag1 == 1)
        {
            Response.Write("<script lang='javascript'>alert('Your Vaccination  Name is not same as Your First Dose!!')</script>");
            Response.Redirect("Vac_info.aspx");
        }
    }
}