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
    string qry = "";
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    int tot_case = 0,tcase;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select sum(tot_case) from outbreak";
        cmd = new SqlCommand(qry, cn);
        tcase = Convert.ToInt32(cmd.ExecuteScalar());
        Label1.Text = tcase.ToString();
        cn.Close();
    }
}




//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Data.SqlClient;
//using System.Configuration;
//public partial class user_Default : System.Web.UI.Page
//{
//    string qry = "";
//    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
//    SqlCommand cmd = new SqlCommand();
//    SqlDataReader dr;
//    int tot_case = 0,tid,c=0,tcase,flag=0;
//    string tsname;
//    protected void Page_Load(object sender, EventArgs e)
//    {
        
//        cn.Open();
//        qry = "select count(sid) from state_mstr";
//        cmd = new SqlCommand(qry, cn);
//         c = Convert.ToInt32(cmd.ExecuteScalar());        
//        cn.Close();
//        for (int i = 0; i <= c - 1;i++)
//        {
//            if (flag == 0)
//            {
//                cn.Open();
//                qry = "select sid from state_mstr";
//                cmd = new SqlCommand(qry, cn);
//                dr = cmd.ExecuteReader();
//                if (dr.HasRows)
//                {
//                    dr.Read();
//                    tid = Convert.ToInt32(dr["sid"]);
//                    flag = 1;
//                    cn.Close();
//                    cn.Open();
//                    qry = "select sname from state_mstr where sid='" + tid + "'";
//                    cmd = new SqlCommand(qry, cn);
//                    dr = cmd.ExecuteReader();
//                    if (dr.HasRows)
//                    {
//                        dr.Read();
//                        tsname = dr["sname"].ToString();
//                        cn.Close();
//                        cn.Open();
//                        qry = "select sum(tot_case) from outbreak where sname='" + tsname + "'";
//                        cmd = new SqlCommand(qry, cn);
//                        dr = cmd.ExecuteReader();
//                        if (dr.HasRows)
//                        {
//                            dr.Read();
//                            tcase = Convert.ToInt32(dr["tot_case"]);
//                            tot_case = tot_case + tcase;
//                        }
//                        cn.Close();
//                    }

//                }
//            }
//            else if (flag == 1)
//            {
//                tid++;
//                cn.Open();
//                qry = "select sid from state_mstr";
//                cmd = new SqlCommand(qry, cn);
//                dr = cmd.ExecuteReader();
//                if (dr.HasRows)
//                {
//                    dr.Read();                    
//                    cn.Close();
//                    cn.Open();
//                    qry = "select sname from state_mstr where sid='" + tid + "'";
//                    cmd = new SqlCommand(qry, cn);
//                    dr = cmd.ExecuteReader();
//                    if (dr.HasRows)
//                    {
//                        dr.Read();
//                        tsname = dr["sname"].ToString();
//                        cn.Close();
//                        cn.Open();
//                        qry = "select * from outbreak where sname='" + tsname + "'";
//                        cmd = new SqlCommand(qry, cn);
//                        dr = cmd.ExecuteReader();
//                        if (dr.HasRows)
//                        {
//                            dr.Read();
//                            tcase = Convert.ToInt32(dr["tot_case"]);
//                            tot_case = tot_case + tcase;
//                        }
//                        cn.Close();
//                    }

//                }
//            }
          
            
//        }
//        Label1.Text = tot_case.ToString();
//        // cn.Open();
//        // qry = "select * from outbreak";
//        //cmd = new SqlCommand(qry, cn);
//        //dr = cmd.ExecuteReader();
//        //if (dr.HasRows)
//        //{
//        //    dr.Read();
//        //}
//        //cn.Close();
//    }
//}