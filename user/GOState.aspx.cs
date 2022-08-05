using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class user_Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    DataTable dt3 = new DataTable();
    DataTable dt4 = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cn.Open();
            qry = "select * from Soutbreak";
            SqlCommand cmd = new SqlCommand(qry, cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            cn.Close();

            int[] x = new int[dt.Rows.Count];

            string[] y = new string[dt.Rows.Count];

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = Convert.ToInt32(dt.Rows[i][2]);

                y[i] = dt.Rows[i][1].ToString();
            }
            Chart1.Series[0].Points.DataBindXY(y, x);



            cn.Open();
            qry = "select * from Soutbreak";
            SqlCommand cmd1 = new SqlCommand(qry, cn);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            cn.Close();

            int[] x1 = new int[dt1.Rows.Count];

            string[] y1 = new string[dt1.Rows.Count];

            for (int i = 0; i < dt1.Rows.Count; i++)
            {
                x1[i] = Convert.ToInt32(dt1.Rows[i][3]);

                y1[i] = dt1.Rows[i][1].ToString();
            }
            Chart2.Series[0].Points.DataBindXY(y1, x1);




            cn.Open();
            qry = "select * from Soutbreak";
            SqlCommand cmd2 = new SqlCommand(qry, cn);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            da2.Fill(dt2);
            cn.Close();

            int[] x2 = new int[dt2.Rows.Count];

            string[] y2 = new string[dt2.Rows.Count];

            for (int i = 0; i < dt2.Rows.Count; i++)
            {
                x2[i] = Convert.ToInt32(dt2.Rows[i][4]);

                y2[i] = dt2.Rows[i][1].ToString();
            }
            Chart3.Series[0].Points.DataBindXY(y2, x2);




            cn.Open();
            qry = "select * from Soutbreak";
            SqlCommand cmd3 = new SqlCommand(qry, cn);
            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            da3.Fill(dt3);
            cn.Close();

            int[] x3 = new int[dt3.Rows.Count];

            string[] y3 = new string[dt3.Rows.Count];

            for (int i = 0; i < dt3.Rows.Count; i++)
            {
                x3[i] = Convert.ToInt32(dt3.Rows[i][5]);

                y3[i] = dt3.Rows[i][1].ToString();
            }
            Chart4.Series[0].Points.DataBindXY(y3, x3);




            cn.Open();
            qry = "select * from Soutbreak";
            SqlCommand cmd4 = new SqlCommand(qry, cn);
            SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
            da4.Fill(dt4);
            cn.Close();

            int[] x4 = new int[dt4.Rows.Count];

            string[] y4 = new string[dt4.Rows.Count];

            for (int i = 0; i < dt4.Rows.Count; i++)
            {
                x4[i] = Convert.ToInt32(dt4.Rows[i][6]);

                y4[i] = dt4.Rows[i][1].ToString();
            }
            Chart5.Series[0].Points.DataBindXY(y4, x4);
        }

    }
}