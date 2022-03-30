using System;
using System.Data;
using System.Data.SqlClient;
using eJABALI.DAL;

namespace eJABALI.BAL
{

    public class Products
    {
        
        DBGateway objdbgateway = new DBGateway();
       
        public DataSet BindProductCategories(object [] Input)
        {
          DataSet ds=  objdbgateway.GetProductsCategories(Input);
            return ds;
        }
        public DataSet BindProductBanner(object[] Input)
        {
            DataSet ds = objdbgateway.BindProductBanner(Input);
            return ds;
        }

        public DataSet BindSubCategories(object[] Input)
        {
            DataSet ds = objdbgateway.BindSubCategories(Input);
            return ds;
        }

        public DataSet BindOrderHistory(object[] Input)
        {
            DataSet ds = objdbgateway.BindOrderHistory(Input);
            return ds;
        }

        public DataSet BindProductCategorieswise(SqlParameter[] Input)
        {
            DataSet ds = objdbgateway.BindProductCategorieswise(Input);
            return ds;
        }

        public DataSet BindSubCategoriesDetails(SqlParameter[] Input)
        {
            DataSet ds = objdbgateway.BindSubCategoriesDetails(Input);
            return ds;
        }

        public DataSet BindCartDetails(SqlParameter[] Input)
        {
            DataSet ds = objdbgateway.BindCartDetails(Input);
            return ds;
        }


        public DataSet BindAllDOD(SqlParameter[] Input)
        {
            DataSet ds = objdbgateway.BindAllDOD(Input);
            return ds;
        }

        public DataSet BindSubCategoriesDetailslist(SqlParameter[] Input)
        {
            DataSet ds = objdbgateway.BindSubCategoriesDetailslist(Input);
            return ds;
        }

        public DataSet AddToCart(SqlParameter[] Input)
        {
            DataSet ds = objdbgateway.AddToCart(Input);
            return ds;
        }

        public DataSet BindProductDetails(SqlParameter[] Input)
        {
            DataSet ds = objdbgateway.BindProductDetails(Input);
            return ds;
        }

        public DataSet PlaceOrder(SqlParameter[] Input)
        {
            DataSet ds = objdbgateway.PlaceOrder(Input);
            return ds;
        }

        

    }
}