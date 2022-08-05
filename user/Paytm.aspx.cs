using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using paytm;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;
public partial class user_paytm : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    string no, tamt;
    string pname1, email1;
    protected void Page_Load(object sender, EventArgs e)
    {
        Random order_id = new Random();
        int ordid = order_id.Next(100000, 999999);
        pname1 = Application["uname"].ToString();
        email1 = Application["umail"].ToString();
        cn.Open();
        qry = "select * from Vpaid where pname='" + pname1 + "' and email='" + email1 + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            no = dr["vpid"].ToString();
            tamt = dr["tamt"].ToString();



            String merchantKey = "AEJ4h69IHrGCHXl_";
            Dictionary<string, string> parameters = new Dictionary<string, string>();
            parameters.Add("MID", "vveyCE15885328056943");
            parameters.Add("CHANNEL_ID", "WEB");
            parameters.Add("INDUSTRY_TYPE_ID", "Retail");
            parameters.Add("WEBSITE", "WEBSTAGING");
            parameters.Add("EMAIL", "mhadevholic003@gmail.com");
            parameters.Add("MOBILE_NO", "9624345029");
            parameters.Add("CUST_ID", "cust_00111");
            parameters.Add("ORDER_ID", ordid.ToString());
            parameters.Add("TXN_AMOUNT", tamt);
            parameters.Add("CALLBACK_URL", "http://localhost:41638/proj2/user/Uhome.aspx"); //This parameter is not mandatory. Use this to pass the callback url dynamically.
        
            string checksum = CheckSum.generateCheckSum(merchantKey, parameters);
            string paytmURL = "https://securegw-stage.paytm.in/theia/processTransaction";
            string outputHTML = "<html>";
            outputHTML += "<head>";
            outputHTML += "<title>Merchant Check Out Page</title>";
            outputHTML += "</head>";
            outputHTML += "<body>";
            outputHTML += "<center><h1>Please do not refresh this page...</h1></center>";
            outputHTML += "<form method='post' action='" + paytmURL + "' name='f1'>";
            outputHTML += "<table border='1'>";
            outputHTML += "<tbody>";
            foreach (string key in parameters.Keys)
            {
                outputHTML += "<input type='hidden' name='" + key + "' value='" + parameters[key] + "'>";
            }
            outputHTML += "<input type='hidden' name='CHECKSUMHASH' value='" + checksum + "'>";
            outputHTML += "</tbody>";
            outputHTML += "</table>";
            outputHTML += "<script type='text/javascript'>";
            outputHTML += "document.f1.submit();";
            outputHTML += "</script>";
            outputHTML += "</form>";
            outputHTML += "</body>";
            outputHTML += "</html>";
            Response.Write(outputHTML);
        }
    }
}