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
    SqlDataReader dr;
    string qry;
    int dose;
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = "~/user/ashok.jpeg";
        dose = Convert.ToInt32(Session["dtemp"]);
        if (dose == 1)
        {
            cn.Open();
            qry = "select * from Fdose where pname ='" + Session["uname"] + "' and status = 1 and email='" + Session["umail"] + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();

                lblmail.Text = dr["email"].ToString();
                lblage.Text = dr["age"].ToString();
                lblphno.Text = dr["phno"].ToString();
                lblpname.Text = dr["pname"].ToString();
                lblcname.Text = dr["cname"].ToString();
                lblid.Text = dr["idno"].ToString();
                lblvname.Text = dr["vname"].ToString();
                lbldose.Text = dr["vdose"].ToString();
                lblcname1.Text = dr["cname"].ToString();
                lblhname.Text = dr["hname"].ToString();
                lblvdate.Text = dr["date"].ToString();
                lblprc.Text = dr["price"].ToString();
            }
            cn.Close();
            cn.Open();
            qry = "select * from vcenter_mstr where cname ='" + lblcname.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                //lblcname1.Text = dr["cname"].ToString();
                //lblhname.Text = dr["hname"].ToString();
                lbladd.Text = dr["address"].ToString();
                //lblprc.Text = dr["price"].ToString();

            }
            cn.Close();

        }
        //cn.Open();
        //qry = "select * from VaccineBook_mstr where pname ='" + Session["uname"] + "' and status = 1";
        //cmd = new SqlCommand(qry, cn);
        //dr = cmd.ExecuteReader();
        //if (dr.HasRows)
        //{
        //    dr.Read();

        //    lblmail.Text = dr["email"].ToString();
        //    lblage.Text = dr["age"].ToString();
        //    lblphno.Text = dr["phno"].ToString();
        //    lblpname.Text = dr["pname"].ToString();
        //    lblcname.Text = dr["cname"].ToString();
        //    lblid.Text = dr["idno"].ToString();
        //    lblvname.Text = dr["vname"].ToString();
        //    lbldose.Text = dr["vdose"].ToString();
        //}
        //cn.Close();
        else
        {
            cn.Open();
            qry = "select * from VBook_mstr where pname ='" + Session["uname"] + "' and status = 2 and email='" + Session["umail"] + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();

                lblmail.Text = dr["email"].ToString();
                lblage.Text = dr["age"].ToString();
                lblphno.Text = dr["phno"].ToString();
                lblpname.Text = dr["pname"].ToString();
                lblcname.Text = dr["cname"].ToString();
                lblid.Text = dr["idno"].ToString();
                lblvname.Text = dr["vname"].ToString();
                lbldose.Text = dr["vdose"].ToString();
                lblvdate.Text = dr["date"].ToString();
            }
            cn.Close();
            cn.Open();
            qry = "select * from vcenter_mstr where cname ='" + lblcname.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lblcname1.Text = dr["cname"].ToString();
                lblhname.Text = dr["hname"].ToString();
                lbladd.Text = dr["address"].ToString();
                lblprc.Text = dr["price"].ToString();
            }
            cn.Close();
        }
    }
}