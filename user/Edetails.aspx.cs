﻿using System;
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
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = "../event_img/" + Request.QueryString.Get("img");
        Label1.Text = Request.QueryString.Get("hname");
        Label2.Text = Request.QueryString.Get("ename");
        Label3.Text = Request.QueryString.Get("dis");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into Feedback_mstr values('" + Session["uname"].ToString() + "','" + Session["umail"].ToString() + "','" + Session["img"].ToString() + "','" + txtview.Text + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("Edetails.aspx?ename=" + Request.QueryString.Get("ename") + "&img=" + Request.QueryString.Get("img") + "&dis=" + Request.QueryString.Get("dis") + "&hname=" + Request.QueryString.Get("hname"));
    }
}