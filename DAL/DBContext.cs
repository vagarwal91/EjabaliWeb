using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace eJABALI.DAL
{
    public class DBContext
    {
        private readonly string DBConn;

        public DBContext()
        {
            DBConn = ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
        }

        internal int InsertClient(string storedprocedure, SqlParameter[] param)
        {
            using (SqlConnection con = new SqlConnection(DBConn))
            {
                using (SqlCommand cmd = new SqlCommand(storedprocedure, con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddRange(param);
                    con.Open();
                    return cmd.ExecuteNonQuery();
                }
            }
        }
        internal DataTable RetrieveRecords(string SqlStr)
        {
            using (SqlConnection myConnection = new SqlConnection(DBConn))
            {
                SqlCommand oCmd = new SqlCommand(SqlStr, myConnection);
                oCmd.CommandType = CommandType.Text;
                SqlDataAdapter da = new SqlDataAdapter();
                DataTable dt = new DataTable();
                da.SelectCommand = oCmd;
                da.Fill(dt);
                return dt;
            }
        }

        internal DataSet BindOrderHistory(object userValues)
        {

            DataSet ReturnDataSet = new DataSet();
            try
            {
                string procname = "GET_ORDER_HISTORY_1";
                ReturnDataSet = SqlHelper.ExecuteDataSet(
                   DBConn, CommandType.StoredProcedure, procname, (SqlParameter[])userValues
                    );



            }
            catch (Exception ex)
            {

            }
            return ReturnDataSet;
        }

        internal DataSet BindCartDetails(SqlParameter[] UserValues)
        {
            DataSet ReturnDataSet = new DataSet();
            try
            {
                string procname = "SP_GetCartProduct";
                ReturnDataSet = SqlHelper.ExecuteDataSet(
                   DBConn, CommandType.StoredProcedure, procname, UserValues
                    );



            }
            catch (Exception ex)
            {

            }
            return ReturnDataSet;

        }


        internal DataSet GetProductsCategories(object[] UserValues)

        {
            DataSet ReturnDataSet = new DataSet();
            try
            {
                string procname = "getCategory";
                ReturnDataSet = SqlHelper.ExecuteDataSet(
                   DBConn, CommandType.StoredProcedure, procname, (SqlParameter[])UserValues
                    );



            }
            catch (Exception ex)
            {

            }
            return ReturnDataSet;

        }
        internal DataSet BindProductBanner(object[] UserValues)

        {
            DataSet ReturnDataSet = new DataSet();
            try
            {
                string procname = "GetBannerDetails";
                ReturnDataSet = SqlHelper.ExecuteDataSet(
                   DBConn, CommandType.StoredProcedure, procname, (SqlParameter[])UserValues
                    );



            }
            catch (Exception ex)
            {

            }
            return ReturnDataSet;

        }
        internal DataSet BindSubCategories(object[] UserValues)

        {
            DataSet ReturnDataSet = new DataSet();
            try
            {
                string procname = "Get_Momepage_Details_web";
                ReturnDataSet = SqlHelper.ExecuteDataSet(
                   DBConn, CommandType.StoredProcedure, procname, (SqlParameter[])UserValues
                    );



            }
            catch (Exception ex)
            {

            }
            return ReturnDataSet;

        }

        internal DataSet BindProductCategorieswise(SqlParameter[] UserValues)
        {




            DataSet ReturnDataSet = new DataSet();
            try
            {
                string procname = "Get_Momepage_Cat_sub_Cat_details_web";
                ReturnDataSet = SqlHelper.ExecuteDataSet(
                   DBConn, CommandType.StoredProcedure, procname, UserValues
                    );



            }
            catch (Exception ex)
            {

            }
            return ReturnDataSet;

        }

        internal DataSet BindSubCategoriesDetails(SqlParameter[] UserValues)
        {
            DataSet ReturnDataSet = new DataSet();
            try
            {
                string procname = "Get_Product_details_web";
                ReturnDataSet = SqlHelper.ExecuteDataSet(
                   DBConn, CommandType.StoredProcedure, procname, UserValues
                    );



            }
            catch (Exception ex)
            {

            }
            return ReturnDataSet;

        }

        internal DataSet BindAllDOD(SqlParameter[] UserValues)
        {
            DataSet ReturnDataSet = new DataSet();
            try
            {
                string procname = "Get_Momepage_Details_view_all_web";
                ReturnDataSet = SqlHelper.ExecuteDataSet(
                   DBConn, CommandType.StoredProcedure, procname, UserValues
                    );



            }
            catch (Exception ex)
            {

            }
            return ReturnDataSet;

        }
        internal DataSet BindSubCategoriesDetailslist(SqlParameter[] UserValues)
        {
            DataSet ReturnDataSet = new DataSet();
            try
            {
                string procname = "Get_Product_details_LIST_WEB";
                ReturnDataSet = SqlHelper.ExecuteDataSet(
                   DBConn, CommandType.StoredProcedure, procname, UserValues
                    );



            }
            catch (Exception ex)
            {

            }
            return ReturnDataSet;

        }

        internal DataSet AddToCart(SqlParameter[] UserValues)
        {
            DataSet ReturnDataSet = new DataSet();
            try
            {
                string procname = "SP_AddToCart";
                ReturnDataSet = SqlHelper.ExecuteDataSet(
                   DBConn, CommandType.StoredProcedure, procname, UserValues
                    );
            }
            catch (Exception ex)
            {

            }
            return ReturnDataSet;

        }

        internal DataSet BindProductDetails(SqlParameter[] UserValues)
        {
            DataSet ReturnDataSet = new DataSet();
            try
            {
                string procname = "Get_Product_details_LIST";
                ReturnDataSet = SqlHelper.ExecuteDataSet(
                   DBConn, CommandType.StoredProcedure, procname, UserValues
                    );
            }
            catch (Exception ex)
            {

            }
            return ReturnDataSet;

        }

        internal DataSet PlaceOrder(SqlParameter[] UserValues)
        {
            DataSet ReturnDataSet = new DataSet();
            try
            {
                string procname = "Put_Order_Details_new2";
                ReturnDataSet = SqlHelper.ExecuteDataSet(
                   DBConn, CommandType.StoredProcedure, procname, UserValues
                    );
            }
            catch (Exception ex)
            {

            }
            return ReturnDataSet;

        }



    }
}