using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;

public partial class ExtraCovid_Login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int status;
        cn.Open();
        qry = "select * from Uregister_mstr where email='" + txtmail.Text + "' and password='" + txtpass.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            status = Convert.ToInt32(dr["status"].ToString());
            if (status == 0)
            {
                Session["mail"] = dr["email"].ToString();
                Response.Redirect("OTP.aspx");
            }
            else
            {
                Session["uid"] = Convert.ToInt32(dr["id"]);
                Session["cno"] = dr["cno"].ToString();
                Session["uname"] = dr["name"].ToString();
                Session["umail"] = dr["email"].ToString();
                Application["uname"] = dr["name"].ToString();
                Application["cno"] = dr["cno"].ToString();
                Application["umail"] = dr["email"].ToString();
                Session["age"] = dr["age"].ToString();
                Session["img"] = dr["img"].ToString();
                Response.Redirect("../Uhome.aspx");

            }

        }
        else
        {
            Response.Write("<script lang='javascript'>alert(' INVALID EMAIL ID OR PASSWORD.')</script>");            
        }
        cn.Close();
    }
}