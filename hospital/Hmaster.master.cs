using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class hospital_Hmaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label1.Text = Session["hname"].ToString();
            Label2.Text = Session["hname"].ToString();
            Label3.Text = Session["hname"].ToString();
        }
        catch (Exception ex)
        {
            Response.Redirect("H_login.aspx");
        }
    }
}
