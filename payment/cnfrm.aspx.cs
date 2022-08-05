using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
public partial class payment_Ppen : System.Web.UI.Page
{
    
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry,method;
    SqlDataReader dr;
    DateTime dt = new DateTime();
    int flag = 0;
    string vdose;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        lblpname.Text = Application["uname"].ToString();
        lblemail.Text = Application["umail"].ToString();

        //cn.Open();
        //qry = "select * from Fdose where pname='" + lblpname.Text + "' and email='" + lblemail.Text + "'";
        //cmd = new SqlCommand(qry, cn);
        //dr = cmd.ExecuteReader();
        //if (dr.HasRows)
        //{
        //    dr.Read();
        //    dt = Convert.ToDateTime(dr["date"]);
        //}
        //cn.Close();

        
        //cn.Open();
        //qry = "select * from Vpaid where pname='" + lblpname.Text + "' and email='" + lblemail.Text + "' and vdose='2nd Dose'";
        //cmd = new SqlCommand(qry, cn);
        //dr = cmd.ExecuteReader();
        //if (dr.HasRows)
        //{
        //    dr.Read();
        //    flag = 1;
        //}
        //else
        //{
        //    flag = 0;
        //}
        //cn.Close();

        //if (flag == 1)
        //{
        //    cn.Open();
        //    qry = "select * from Vpaid where pname='" + lblpname.Text + "' and email='" + lblemail.Text + "' and vdose='2nd Dose'";
        //    cmd = new SqlCommand(qry, cn);
        //    dr = cmd.ExecuteReader();

        //    if (dr.HasRows)
        //    {
        //        dr.Read();
        //        lblhname.Text = dr["hname"].ToString();
        //        lblcname.Text = dr["cname"].ToString();
        //        lbldose.Text = dr["vdose"].ToString();
        //        lblvname.Text = dr["vname"].ToString();
        //        lblprice.Text = dr["tamt"].ToString();
        //        lblslot.Text = dr["time"].ToString();
        //        lblpdate.Text = dr["pdate"].ToString();
        //        method = dr["method"].ToString();
        //        cn.Close();
        //    }
        //}

        //else
        //{
            cn.Open();

            qry = "select * from Vpaid where pname='" + lblpname.Text + "' and email='" + lblemail.Text + "' and vdose='1st Dose'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lblhname.Text = dr["hname"].ToString();
                lblcname.Text = dr["cname"].ToString();
                lbldose.Text = dr["vdose"].ToString();
                lblvname.Text = dr["vname"].ToString();
                lblprice.Text = dr["tamt"].ToString();
                lblslot.Text = dr["time"].ToString();
                lblpdate.Text = dr["pdate"].ToString();
                method = dr["method"].ToString();
            }
            cn.Close();
       // }
        
    }
    protected void btn_Sub_Click(object sender, EventArgs e)
    {
        if (method == "PAYTM")
        {
            Response.Redirect("../user/Paytm.aspx");
        }
        else
        {
            Response.Redirect("Ppen.aspx");
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //cn.Close();
        if (lbldose.Text == "2nd Dose")
        {
           
            cn.Open();
            qry = "update VBook_mstr set status = '1' , vdose='1st Dose',date='"+dt+"' where pname='" + lblpname.Text + "' and email='" + lblemail.Text + "' and hname='"+lblhname.Text+"'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            cn.Open();
            qry = "delete from Vpaid where pname='" + lblpname.Text + "' and vdose='" + lbldose.Text + "' and email='" + lblemail.Text + "' and hname='" + lblhname.Text + "' ";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("../user/Vac_info.aspx");
        }
        else
        {
            cn.Open();
            qry = "delete from VBook_mstr where pname='" + lblpname.Text + "' and hname='" + lblhname.Text + "' and email='" + lblemail.Text + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            cn.Open();
            qry = "delete from Vpaid where pname='" + lblpname.Text + "' and hname='" + lblhname.Text + "' and email='" + lblemail.Text + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("../user/Vac_info.aspx");
        }
    }
}
