using System;
using System.Data;
using System.Data.SqlClient;

namespace eJABALI.DAL
{
    public class SqlHelper
    {
        internal static DataSet ExecuteDataSet(string conn,CommandType cmdtype,string cmdtext,params SqlParameter[]cmdpara)
        {
            using(SqlConnection con=new SqlConnection(conn))
            {
                DataSet ds = new DataSet();
                try
                {
                    con.Open();
                    ds = ExecuteDataSet(con, cmdtype, cmdtext, cmdpara);
                }
                catch
                {
                    throw;
                }
                finally
                {

                }
                return ds;
            }
        }
        internal static DataSet ExecuteDataSet(SqlConnection conn,CommandType cmdtype,string cmdtext,params SqlParameter[] cmdpara)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandTimeout = 0;
            PrepareCommand(cmd, conn, (SqlTransaction)null, cmdtype, cmdtext, cmdpara);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cmd.Parameters.Clear();
            return ds;
        }
        internal static DataSet ExecuteDataSet(string conn, CommandType cmdtype, string cmdtext)
        {
            return ExecuteDataSet(conn,cmdtype,cmdtext,(SqlParameter[])null);
        }

        internal static int ExecuteNonQuery(SqlConnection conn, CommandType cmdtype, string cmdtext,params SqlParameter[] cmdpara)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandTimeout = 180;
            PrepareCommand(cmd, conn, (SqlTransaction)null, cmdtype, cmdtext, cmdpara);
            try {
                int retval = cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                return retval;
            }
            catch
            {
                throw;
            }
            finally
            {

            }
        }
        private static void AttachParameters(SqlCommand cmd,SqlParameter[] cmdpara)
        {
            foreach(SqlParameter p in cmdpara)
            {
                if((p.Direction==ParameterDirection.InputOutput)&& (p.Value==null))
                        {
                    p.Value = DBNull.Value;

                }
                cmd.Parameters.Add(p);
            }
        }
        private static void PrepareCommand(SqlCommand cmd,SqlConnection conn,SqlTransaction tran,CommandType cmdtype,string cmdtext,params SqlParameter [] cmdpara)
        {
            if(conn.State!=ConnectionState.Open)
            {
                conn.Open();
            }
            cmd.Connection = conn;
            cmd.CommandText = cmdtext;
            if(tran!=null)
            {
                cmd.Transaction = tran;
            }
            cmd.CommandType = cmdtype;
            if(cmdpara!=null)
            {
                AttachParameters(cmd, cmdpara);
            }
            return;
        }
    }
}