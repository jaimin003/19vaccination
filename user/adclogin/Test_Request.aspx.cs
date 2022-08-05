using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserCovid_adclogin_Test_Request : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry,nm,hname,amt;
    SqlDataReader dr;
    int status,tamt,status1;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            cn.Open();
            qry = "select * from Test_amt";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                tamt = Convert.ToInt32(dr["tamt"]);
            }
            txttamt.Text = tamt.ToString();
            cn.Close();
        }

        cn.Open();
        qry = "select * from Uregister_mstr where name='" + Application["uname"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
        }
        else
        {
            Response.Redirect("../adclogin/PLogin.aspx");
        }
        cn.Close();            


        cn.Open();
        qry = "select * from Test_request where name='"+Application["uname"]+"'";
        cmd = new SqlCommand(qry,cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            status1 =Convert.ToInt32( dr["status"]);
            if (status1 == 0)
            {
                Response.Redirect("../TestPend.aspx");
            }
        }
       
        cn.Close();

        if(IsPostBack)
        {
            
            
        hname = ddllab.SelectedItem.Text.ToString();   
        cn.Open();
        qry = "select * from Test_amt where hname='" + hname + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            tamt = Convert.ToInt32(dr["tamt"]);
        }
        txttamt.Text = tamt.ToString();
        cn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        cn.Open();
        qry = "select * from Uregister_mstr where name='" + Application["uname"] + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                    dr.Read();
                    cn.Close();
                    cn.Open();
                    qry = "insert into Test_request values('" + Session["uname"] + "','" + Session["umail"] + "','" + txtbld.Text + "','" + ddllab.SelectedItem.Text + "','" + txttamt.Text + "','0')";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("~/paymentT/CashF.aspx");
             }
            else
            {
                Response.Redirect("PLogin.aspx");
            }        
    }
  
}