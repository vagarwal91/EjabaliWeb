using eJABALI.BAL;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace eJABALI
{
    public partial class Subcategories : System.Web.UI.Page
    {
        Products objproducts = new Products();

        private void BindsubCategoryproducts(int subcatid)
        {
            DataSet dssubCategoriesproducts = new DataSet();
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@sub_cat_id", SqlDbType.Int) { Value = subcatid };                      
            //prms[0].Value = catid;
            //lblcatname.Text = catname;
           dssubCategoriesproducts = objproducts.BindSubCategoriesDetails(prms);
            if (dssubCategoriesproducts.Tables.Count > 0 && dssubCategoriesproducts.Tables[0].Rows.Count > 0)
            {
                DLSubcatproducts.DataSource = dssubCategoriesproducts.Tables[0];
                DLSubcatproducts.DataBind();
                lblprodcount.Text = Convert.ToString(dssubCategoriesproducts.Tables[0].Rows.Count);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                if (!IsPostBack)
                {
                    //Session["LoginUserId"] = "DummyUser";
                    if (Request.QueryString.Count > 0)
                    {
                        if (Request.QueryString["subcatid"] != null)
                        {
                            
                            catid.Value = Convert.ToString(Request.QueryString["Catid"]);
                            BindsubCategoryproducts(Convert.ToInt32(Request.QueryString["subcatid"]));
                            lblsubcatname.Text = Convert.ToString(Request.QueryString["subcatname"]);
                            lblcatname.Text = Convert.ToString(Request.QueryString["Catname"]);
                            lblsubcatnameinner.Text = Convert.ToString(Request.QueryString["subcatname"]);
                            lblcatnameinner.Text = Convert.ToString(Request.QueryString["Catname"]);
                            
                            if(lblcatname.Text== "Deal Of the Day")
                            { anchorcat.HRef = "DealofDay.aspx";
                                lblcatnameanchor.Text = Convert.ToString(Request.QueryString["subcatname"]);
                            }
                            else
                            { anchorcat.HRef = "Categries.aspx?catid=" + catid.Value + "&catname=" + lblcatname.Text + "";
                                lblcatnameanchor.Text = Convert.ToString(Request.QueryString["Catname"]);
                            }
                            

                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void DLSubcatproducts_ItemDataBound(object sender, DataListItemEventArgs e)
        {

            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView row = (DataRowView)e.Item.DataItem;
                SqlParameter[] prmslist = new SqlParameter[1];
                prmslist[0] = new SqlParameter("@prod_id", SqlDbType.Int) { Value = Convert.ToUInt32(row["prod_id"]) };
                DataSet dssubCategoriesproductslist = objproducts.BindSubCategoriesDetailslist(prmslist);
                if (dssubCategoriesproductslist.Tables[0].Rows.Count > 0)
                {
                    Label ResponseCatIDLabel = (Label)e.Item.FindControl("lblspecification");
                    HtmlImage productimg = (HtmlImage)e.Item.FindControl("productimg");
                    productimg.Src = Convert.ToString(dssubCategoriesproductslist.Tables[0].Rows[0]["image1"]);                   
                    ResponseCatIDLabel.Text = Convert.ToString(dssubCategoriesproductslist.Tables[0].Rows[0]["specification"]);
                }
            }
           

        }
        private DataSet AddToCart(int ProdId,string UserId)
        {
            bool result = false;
            SqlParameter[] prmslist = new SqlParameter[2];
            prmslist[0] = new SqlParameter("@ProdId", SqlDbType.Int) { Value = ProdId };
            prmslist[1] = new SqlParameter("@UserId", SqlDbType.VarChar) { Value = UserId };
            DataSet dssubCategoriesproductslist = objproducts.AddToCart(prmslist);
            return dssubCategoriesproductslist;
        }
        protected void DLSubcatproducts_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName== "Addcart")
            {
                if (Session["LoginUserId"] != null)
                {
                  DataSet dscart=  AddToCart(Convert.ToInt32(e.CommandArgument), Convert.ToString(Session["LoginUserId"]));
                    if(Convert.ToString(dscart.Tables[0].Rows[0]["Result"])== "Added to Cart")
                    {
                        Button btnaadtocart = (Button)e.Item.FindControl("btnaadtocart");
                        btnaadtocart.Enabled = false;
                    }
                }
                else
                {
                    Response.Redirect("", true);
                }
            }
            else
            {
                Response.Redirect("BuyNow.aspx?ProdId="+e.CommandArgument+"", true);
                
            }
        }
    }
}