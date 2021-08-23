using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace searchprogram
{
    public class Class1
    {
        public DataSet getDonor(string qury)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(qury, con);
            try
            {
                con.Open();
                SqlDataAdapter sad = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sad.Fill(ds);
                return ds;
            }
            catch(Exception er)
            {
                throw er;
            }
            finally
            {
                con.Close();
                cmd.Dispose();
                con.Dispose();
            }
        }
        public void getDonorData(string ins_qury)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(ins_qury, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch(Exception er)
            {
                throw er;
            }
            finally
            {
                con.Close();
                cmd.Dispose();
                con.Dispose();
            }
        }
    }
}
