using eJABALI.BAL;
using System;
using System.Data;
using System.Data.SqlClient;

namespace eJABALI
{
    public partial class BuyNow_KT : System.Web.UI.Page
    {
        Products objproducts = new Products();

        private void BindProdDetails(int prodid)
        {
            DataSet dssubCategoriesproducts = new DataSet();
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@prod_id", SqlDbType.Int) { Value = prodid };
            //prms[0].Value = catid;
            //lblcatname.Text = catname;
            dssubCategoriesproducts = objproducts.BindProductDetails(prms);
            if (dssubCategoriesproducts.Tables.Count > 0 && dssubCategoriesproducts.Tables[0].Rows.Count > 0)
            {
                spnprodname.InnerText= Convert.ToString(dssubCategoriesproducts.Tables[0].Rows[0]["Prod_Name"]);
                prodimg.Src= Convert.ToString(dssubCategoriesproducts.Tables[0].Rows[0]["image1"]);
                Spancolor.InnerText= Convert.ToString(dssubCategoriesproducts.Tables[0].Rows[0]["color_name"]);
                Spanseller.InnerText=Convert.ToString(dssubCategoriesproducts.Tables[0].Rows[0]["vendor_name"]);
                Spannetprice.InnerText = Convert.ToString(dssubCategoriesproducts.Tables[0].Rows[0]["Special_Offer_Price"]);
                Spanactualprice.InnerText = Convert.ToString(dssubCategoriesproducts.Tables[0].Rows[0]["price"]);
                Spandiscount.InnerText = Convert.ToString(dssubCategoriesproducts.Tables[0].Rows[0]["Percentage_Discount"]);
                Spannetprice2.InnerText = Convert.ToString(dssubCategoriesproducts.Tables[0].Rows[0]["Special_Offer_Price"]);
                Spandiscountamt.InnerText = Convert.ToString(Convert.ToInt32(dssubCategoriesproducts.Tables[0].Rows[0]["price"]) - Convert.ToInt32(dssubCategoriesproducts.Tables[0].Rows[0]["Special_Offer_Price"]));
                spandelcharge.InnerText = "0.00";
                Spantotamt.InnerText = Convert.ToString(dssubCategoriesproducts.Tables[0].Rows[0]["Special_Offer_Price"]);
                Spantotsaving.InnerText = Convert.ToString(Convert.ToInt32(dssubCategoriesproducts.Tables[0].Rows[0]["price"])- Convert.ToInt32(dssubCategoriesproducts.Tables[0].Rows[0]["Special_Offer_Price"]));
                hdnvendorid.Value = Convert.ToString(dssubCategoriesproducts.Tables[0].Rows[0]["vendor_id"]);
                hdnprodid.Value= Convert.ToString(dssubCategoriesproducts.Tables[0].Rows[0]["prod_id"]);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Request.QueryString.Count > 0)
                    {
                        if (Request.QueryString["ProdId"] != null)
                        {
                            BindProdDetails(Convert.ToInt32(Request.QueryString["ProdId"]));
                        }
                    }
                }
            }
            catch(Exception ex)
            { }
        }
        private DataSet PlaceOrder(int cust_id,string vendor_id,decimal Delivery_Charges,string Remark,string session_id,string promo_code,decimal Tot_Bill_Amt,decimal discount,decimal Recd_amt,string paymentMode,decimal taxAmount,decimal packingCharge,string lat,string longitude,string address,string Var1)
        {
            DataSet dsorder = new DataSet();
            SqlParameter[] prms = new SqlParameter[16];
            prms[0] = new SqlParameter("@cust_id", SqlDbType.Int) { Value = cust_id };
            prms[1] = new SqlParameter("@vendor_id", SqlDbType.VarChar) { Value = vendor_id };
            prms[2] = new SqlParameter("@Delivery_Charges", SqlDbType.Decimal) { Value = Delivery_Charges };
            prms[3] = new SqlParameter("@Remark", SqlDbType.VarChar) { Value = Remark };
            prms[4] = new SqlParameter("@session_id", SqlDbType.VarChar) { Value = session_id };
            prms[5] = new SqlParameter("@promo_code", SqlDbType.VarChar) { Value = promo_code };
            prms[6] = new SqlParameter("@Tot_Bill_Amt", SqlDbType.Decimal) { Value = Tot_Bill_Amt };
            prms[7] = new SqlParameter("@discount", SqlDbType.Decimal) { Value = discount };
            prms[8] = new SqlParameter("@Recd_amt", SqlDbType.Decimal) { Value = Recd_amt };
            prms[9] = new SqlParameter("@paymentMode", SqlDbType.VarChar) { Value = paymentMode };
            prms[10] = new SqlParameter("@taxAmount", SqlDbType.Decimal) { Value = taxAmount };
            prms[11] = new SqlParameter("@packingCharge", SqlDbType.Decimal) { Value = packingCharge };
            prms[12] = new SqlParameter("@lat", SqlDbType.VarChar) { Value = lat };
            prms[13] = new SqlParameter("@longitude", SqlDbType.VarChar) { Value = longitude };
            prms[14] = new SqlParameter("@address", SqlDbType.VarChar) { Value = address };
            prms[15] = new SqlParameter("@Var1", SqlDbType.VarChar) { Value = Var1 };
            //prms[0].Value = catid;
            //lblcatname.Text = catname;
            dsorder = objproducts.PlaceOrder(prms);
            return dsorder;

        }
        protected void btncontinue_Click(object sender, EventArgs e)
        {
            try
            {
               DataSet dsreturn= PlaceOrder(0, hdnvendorid.Value, Convert.ToDecimal(spandelcharge.InnerText), "","","",Convert.ToDecimal(Spantotamt.InnerText),Convert.ToDecimal(Spandiscount.InnerText),Convert.ToDecimal(Spantotamt.InnerText),"COD",0,0,"","","",hdnprodid.Value); 
                if(dsreturn.Tables[0].Rows.Count>0)
                {
                    if(Convert.ToString(dsreturn.Tables[0].Rows[0]["result"])== "ok")
                    {
                        Response.Redirect("OrderSuccess.aspx?OrderId="+ Convert.ToString(dsreturn.Tables[0].Rows[0]["OrderId"]));
                    }
                }
            }
            catch(Exception ex)
            {

            }
        }
    }
}