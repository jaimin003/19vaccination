using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Amaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lblaname.Text = Session["Aname"].ToString();
        }
        catch(Exception ex)
        {
            Response.Redirect("Alogin.aspx");
        }
    }
}
