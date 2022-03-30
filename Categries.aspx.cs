using System;
using eJABALI.BAL;
using System.Data;
using System.Data.SqlClient;

namespace eJABALI
{
    public partial class Categries : System.Web.UI.Page
    {
        Products objproducts = new Products();

        private void BindCategoryproducts(int catid, string catname)
        {
            DataSet dsCategoriesproducts = new DataSet();
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@cat_id", SqlDbType.Int) { Value = catid };
            //prms[0].Value = catid;
            lblcatname.Text = catname;
            dsCategoriesproducts = objproducts.BindProductCategorieswise(prms);
            if (dsCategoriesproducts.Tables.Count > 0 && dsCategoriesproducts.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsCategoriesproducts.Tables[0].Rows.Count; i++)
                {
                    System.Web.UI.HtmlControls.HtmlGenericControl newdivs = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    newdivs.ID = "Categorydiv_" + Convert.ToString(i);
                    newdivs.InnerHtml = "<div class='item'><a href = 'Subcategories.aspx?subcatid=" + Convert.ToString(dsCategoriesproducts.Tables[0].Rows[i]["sub_cat_id"]) + "&subcatname=" + Convert.ToString(dsCategoriesproducts.Tables[0].Rows[i]["Description"]) + "&Catname=" + lblcatname.Text + "&Catid=" + catid + "' class='medium-card'><img src = '"+ Convert.ToString(dsCategoriesproducts.Tables[0].Rows[i]["image1"]) + "' /><asp:HiddenField ID = 'hdnsubcatid_" + i + "' runat='server' Value=" + Convert.ToString(dsCategoriesproducts.Tables[0].Rows[i]["sub_cat_id"]) + " /><h4 class='item-brand-caption'>Shop Now</h4></a></div>";
                    placeholdercat.Controls.Add(newdivs);
                }
                //dlcatwiseproduct.DataSource = dsCategoriesproducts.Tables[0];
                //dlcatwiseproduct.DataBind();
            }
        }

        private void BindCategoryProductsTypeWise(int SubCatTypeid, string SubCatTypeName)
        {
            DataSet dsCategoriesproducts = new DataSet();
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@cat_id", SqlDbType.Int) { Value = SubCatTypeid };
            //prms[0].Value = catid;
            lblcatname.Text = SubCatTypeName;
            dsCategoriesproducts = objproducts.BindProductCategorieswise(prms);
            if (dsCategoriesproducts.Tables.Count > 0 && dsCategoriesproducts.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsCategoriesproducts.Tables[0].Rows.Count; i++)
                {
                    System.Web.UI.HtmlControls.HtmlGenericControl newdivs = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    newdivs.ID = "Categorydiv_" + i.ToString();
                    newdivs.InnerHtml = "<div class='item'><a href = 'Subcategories.aspx?subcatid=" + dsCategoriesproducts.Tables[0].Rows[i]["sub_cat_id"].ToString() + "&subcatname=" + dsCategoriesproducts.Tables[0].Rows[i]["Description"].ToString() + "&Catname=" + lblcatname.Text + "&Catid=" + SubCatTypeid + "' class='medium-card'><img src = 'images/category-8.jpeg' /><asp:HiddenField ID = 'hdnsubcatid_" + i + "' runat='server' Value=" + dsCategoriesproducts.Tables[0].Rows[i]["sub_cat_id"].ToString() + " /><h4 class='item-brand-caption'>Shop Now</h4></a></div>";
                    placeholdercat.Controls.Add(newdivs);
                }
                //dlcatwiseproduct.DataSource = dsCategoriesproducts.Tables[0];
                //dlcatwiseproduct.DataBind();
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
                        if (Request.QueryString["catid"] != null)
                        {
                            BindCategoryproducts(Convert.ToInt32(Request.QueryString["catid"]), Convert.ToString(Request.QueryString["catname"]));
                        }

                        if (Request.QueryString["SubCatTypeId"] != null)
                        {
                            BindCategoryProductsTypeWise(Convert.ToInt32(Request.QueryString["SubCatTypeId"]), Convert.ToString(Request.QueryString["SubCatTypeName"]));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}