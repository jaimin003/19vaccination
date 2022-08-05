using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Umaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

        }       
        catch (Exception ex)
        {
            Response.Redirect("~/user/adclogin/PLogin.aspx");
        }
    }
}
