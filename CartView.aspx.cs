using eJABALI.BAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace eJABALI
{
    public partial class CartView : System.Web.UI.Page
    {
        Products objproducts = new Products();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Convert.ToString(Session["LoginUserId"]) != "")
                {
                    BindCartproducts();
                }
            }
        }
        private void BindCartproducts()
        {
            DataSet dssubCategoriesproducts = new DataSet();
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@UserId", SqlDbType.Int) { Value = Convert.ToString(Session["LoginUserId"]) };
            //prms[0].Value = catid;
            //lblcatname.Text = catname;
            dssubCategoriesproducts = objproducts.BindCartDetails(prms);
            if (dssubCategoriesproducts.Tables.Count > 0 && dssubCategoriesproducts.Tables[0].Rows.Count > 0)
            {
                DLSubcatproducts.DataSource = dssubCategoriesproducts.Tables[0];
                DLSubcatproducts.DataBind();
               // lblprodcount.Text = Convert.ToString(dssubCategoriesproducts.Tables[0].Rows.Count);
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
            if (e.Item.ItemType == ListItemType.Footer)
            {
                Label lbl_total = (Label)e.Item.FindControl("lbl_total");
                lbl_total.Text = "0 Rs.";
            }


        }
        protected void DLSubcatproducts_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                if (Session["LoginUserId"] != null)
                {
                    
                }
                else
                {
                    Response.Redirect("", true);
                }
            }
           
        }
    }
}