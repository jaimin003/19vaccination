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
    int tot_case = 0,tid,c=0,tcase,ac_case=0,acase,flag=0,re_case=0,rcase,de_case=0,dcase,ncase,neg_case=0;
    string tsname;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        cn.Open();
        qry = "select count(sid) from state_mstr";
        cmd = new SqlCommand(qry, cn);
         c = Convert.ToInt32(cmd.ExecuteScalar());        
        cn.Close();
        for (int i = 0; i <= c - 1;i++)
        {
            if (flag == 0)
            {
                 tot_case=0;
                re_case=0;
                de_case=0;
                ac_case = 0;
                neg_case = 0;
                cn.Open();
                qry = "select sid from state_mstr";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    tid = Convert.ToInt32(dr["sid"]);
                    flag = 1;
                    cn.Close();
                    cn.Open();
                    qry = "select sname from state_mstr where sid='" + tid + "'";
                    cmd = new SqlCommand(qry, cn);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        tsname = dr["sname"].ToString();
                        cn.Close();
                        cn.Open();
                        qry = "delete from Soutbreak where sname='" + tsname + "'";
                        cmd = new SqlCommand(qry, cn);
                        cmd.ExecuteNonQuery();
                        cn.Close();
                        cn.Open();
                        qry = "select sum(tot_case) from outbreak where sname='" + tsname + "'";
                        cmd = new SqlCommand(qry, cn);
                        tcase = Convert.ToInt32(cmd.ExecuteScalar());
                        tot_case = tot_case + tcase;
                        cn.Close();
                        cn.Open();
                        qry = "select sum(tot_active) from outbreak where sname='" + tsname + "'";
                        cmd = new SqlCommand(qry, cn);
                        acase = Convert.ToInt32(cmd.ExecuteScalar());
                        ac_case = ac_case + acase;
                        cn.Close();
                        cn.Open();
                        qry = "select sum(tot_recover) from outbreak where sname='" + tsname + "'";
                        cmd = new SqlCommand(qry, cn);
                        rcase = Convert.ToInt32(cmd.ExecuteScalar());
                        re_case = re_case + rcase;
                        cn.Close();
                        cn.Open();
                        qry = "select sum(tot_neg) from outbreak where sname='" + tsname + "'";
                        cmd = new SqlCommand(qry, cn);
                        ncase = Convert.ToInt32(cmd.ExecuteScalar());
                        neg_case = neg_case + ncase;
                        cn.Close();
                        cn.Open();
                        qry = "select sum(tot_death) from outbreak where sname='" + tsname + "'";
                        cmd = new SqlCommand(qry, cn);
                        dcase = Convert.ToInt32(cmd.ExecuteScalar());
                        de_case = de_case + dcase;
                        cn.Close();
                        cn.Open();
                        qry = "insert into Soutbreak values('" + tsname + "','" + tot_case + "','" + re_case + "','" + de_case + "','" + ac_case + "','" + neg_case + "')";
                        cmd = new SqlCommand(qry, cn);
                        cmd.ExecuteNonQuery();
                        cn.Close();
                    }
                    
                }
            }
            else if (flag == 1)
            {
                tot_case = 0;
                re_case = 0;
                de_case = 0;
                ac_case = 0;
                neg_case = 0;
                tid++;
                cn.Open();
                qry = "select sid from state_mstr";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();                    
                    cn.Close();
                    cn.Open();
                    qry = "select sname from state_mstr where sid='" + tid + "'";
                    cmd = new SqlCommand(qry, cn);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        tsname = dr["sname"].ToString();
                        cn.Close();
                        cn.Open();
                        qry = "delete from Soutbreak where sname='" + tsname + "'";
                        cmd = new SqlCommand(qry, cn);
                        cmd.ExecuteNonQuery();
                        cn.Close();
                        cn.Open();
                        qry = "select sum(tot_case) from outbreak where sname='" + tsname + "'";
                        cmd = new SqlCommand(qry, cn);
                        tcase = Convert.ToInt32(cmd.ExecuteScalar());
                        tot_case = tot_case + tcase;                                            
                        cn.Close();
                        cn.Open();
                        qry = "select sum(tot_active) from outbreak where sname='" + tsname + "'";
                        cmd = new SqlCommand(qry, cn);
                        acase = Convert.ToInt32(cmd.ExecuteScalar());
                        ac_case = ac_case + acase;
                        cn.Close();
                        cn.Open();
                        qry = "select sum(tot_recover) from outbreak where sname='" + tsname + "'";
                        cmd = new SqlCommand(qry, cn);
                        rcase = Convert.ToInt32(cmd.ExecuteScalar());
                        re_case = re_case + rcase;
                        cn.Close();
                        cn.Open();
                        qry = "select sum(tot_neg) from outbreak where sname='" + tsname + "'";
                        cmd = new SqlCommand(qry, cn);
                        ncase = Convert.ToInt32(cmd.ExecuteScalar());
                        neg_case = neg_case + ncase;
                        cn.Close();
                         cn.Open();
                        qry = "select sum(tot_death) from outbreak where sname='" + tsname + "'";
                        cmd = new SqlCommand(qry, cn);
                        dcase = Convert.ToInt32(cmd.ExecuteScalar());
                        de_case = de_case + dcase;
                        cn.Close();
                        cn.Open();
                        qry = "insert into Soutbreak values('" + tsname + "','" + tot_case + "','" + re_case + "','" + de_case + "','" + ac_case + "','" + neg_case + "')";
                        cmd = new SqlCommand(qry, cn);
                        cmd.ExecuteNonQuery();
                        cn.Close();
                    }

                }
            }
          
            
        }

        cn.Open();
        qry = "select sum(tot_case) from Soutbreak";
        cmd = new SqlCommand(qry, cn);
        int ttcase = Convert.ToInt32(cmd.ExecuteScalar());        
        Label1.Text = ttcase.ToString();
        cn.Close();

        cn.Open();
        qry = "select sum(tot_active) from Soutbreak";
        cmd = new SqlCommand(qry, cn);
        int ttacase = Convert.ToInt32(cmd.ExecuteScalar());
        Label2.Text = ttacase.ToString();
        cn.Close();

        cn.Open();
        qry = "select sum(tot_recover) from Soutbreak";
        cmd = new SqlCommand(qry, cn);
        int ttrcase = Convert.ToInt32(cmd.ExecuteScalar());
        Label3.Text = ttrcase.ToString();
        cn.Close();

        cn.Open();
        qry = "select sum(tot_death) from Soutbreak";
        cmd = new SqlCommand(qry, cn);
        int ttdcase = Convert.ToInt32(cmd.ExecuteScalar());
        Label4.Text = ttdcase.ToString();
        cn.Close(); 

        
      
       
        // cn.Open();
        // qry = "select * from outbreak";
        //cmd = new SqlCommand(qry, cn);
        //dr = cmd.ExecuteReader();
        //if (dr.HasRows)
        //{
        //    dr.Read();
        //}
        //cn.Close();
    }
}