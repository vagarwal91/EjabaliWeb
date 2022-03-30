using System;
using System.Data;
using System.Data.SqlClient;

namespace eJABALI.DAL
{

    public class DBGateway
    {
        DBContext objdbcontext = new DBContext();
        public DataSet GetProductsCategories(object []UserValues)
        {
            return objdbcontext.GetProductsCategories(UserValues);
        }
        public DataSet BindProductBanner(object[] UserValues)
        {
            return objdbcontext.BindProductBanner(UserValues);
        }
        public DataSet BindSubCategories(object[] UserValues)
        {
            return objdbcontext.BindSubCategories(UserValues);
        }
        public DataSet BindProductCategorieswise(SqlParameter[] UserValues)
        {
            return objdbcontext.BindProductCategorieswise(UserValues);
        }

        public DataSet BindSubCategoriesDetails(SqlParameter[] UserValues)
        {
            return objdbcontext.BindSubCategoriesDetails(UserValues);
        }

        internal DataSet BindOrderHistory(object[] UserValues)
        {
            return objdbcontext.BindOrderHistory(UserValues);
        }

        public DataSet BindAllDOD(SqlParameter[] UserValues)
        {
            return objdbcontext.BindAllDOD(UserValues);
        }

        public DataSet BindSubCategoriesDetailslist(SqlParameter[] UserValues)
        {
            return objdbcontext.BindSubCategoriesDetailslist(UserValues);
        }

        public DataSet BindCartDetails(SqlParameter[] UserValues)
        {
            return objdbcontext.BindCartDetails(UserValues);
        }

        public DataSet AddToCart(SqlParameter[] UserValues)
        {
            return objdbcontext.AddToCart(UserValues);
        }

        public DataSet BindProductDetails(SqlParameter[] UserValues)
        {
            return objdbcontext.BindProductDetails(UserValues);
        }
        public DataSet PlaceOrder(SqlParameter[] UserValues)
        {
            return objdbcontext.PlaceOrder(UserValues);
        }
        

    }
}