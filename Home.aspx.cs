using System;
using System.Data;
using System.Web.UI.WebControls;
using eJABALI.BAL;
namespace eJABALI
{
    public partial class Home : System.Web.UI.Page
    {
        Products objproducts = new Products();
        object[] Input = null;
        private void BindCategories()
        {
            string imageurl = "images/bat.jpg";
            DataSet dsCategories = new DataSet();
            dsCategories = objproducts.BindProductCategories(Input);
            if (dsCategories.Tables.Count > 0 && dsCategories.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < dsCategories.Tables[0].Rows.Count; i++)
                {

                    System.Web.UI.HtmlControls.HtmlGenericControl newdivs = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    newdivs.Attributes.Add("class", "owl-item");
                    newdivs.ID = "Categorydiv_" + Convert.ToString(i);
                    newdivs.InnerHtml = "<a href='Categries.aspx?catid=" + Convert.ToString(dsCategories.Tables[0].Rows[i]["cat_id"]) + "&catname=" + Convert.ToString(dsCategories.Tables[0].Rows[i]["cat_name"]) + "'><div class='small-card'><img src='" + Convert.ToString(dsCategories.Tables[0].Rows[i]["img"]) + "'/></div><p class='sub-title'>" + Convert.ToString(dsCategories.Tables[0].Rows[i]["Description"]) + "</p></a> ";
                    Categoryplaceholder.Controls.Add(newdivs);
                }
            }
        }
        private void BindBanner()
        {
            string imageurl = "images/fullimage1.jpg";
            DataSet dsBanner = new DataSet();
            dsBanner = objproducts.BindProductBanner(Input);
            if (dsBanner.Tables.Count > 0 && dsBanner.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < dsBanner.Tables[0].Rows.Count; i++)
                {

                    System.Web.UI.HtmlControls.HtmlGenericControl newdivs = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    newdivs.Attributes.Add("class", "item");
                    newdivs.ID = "banner1div_" + Convert.ToString(i);
                    newdivs.InnerHtml = "<img src='" + Convert.ToString(dsBanner.Tables[0].Rows[i]["Banner_Image"]) + "'/><asp:HiddenField ID='hdnbannerid_" + i + "' runat='server' Value='" + Convert.ToString(dsBanner.Tables[0].Rows[i]["banner_id"]) + "' />";
                    PlaceHolderbanner1.Controls.Add(newdivs);

                    System.Web.UI.HtmlControls.HtmlGenericControl newdivs1 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    newdivs1.Attributes.Add("class", "item");
                    newdivs1.ID = "banner2div_" + Convert.ToString(i);
                    newdivs1.InnerHtml = "<img src='" + Convert.ToString(dsBanner.Tables[0].Rows[i]["Banner_Image"]) + "'/><asp:HiddenField ID='hdnbanner2id_" + i + "' runat='server' Value='" + Convert.ToString(dsBanner.Tables[0].Rows[i]["banner_id"]) + "' />";

                    PlaceHolderbanner2.Controls.Add(newdivs1);
                }
            }
        }

        private void BindSubCategories()
        {
            string imageurl = "images/category-1.jpeg";
            DataSet dsSubCategories = new DataSet();
            dsSubCategories = objproducts.BindSubCategories(Input);
            if (dsSubCategories.Tables.Count > 0 && dsSubCategories.Tables[0].Rows.Count > 0)
            {
                DataView dvdealofday = dsSubCategories.Tables[0].DefaultView;
                dvdealofday.RowFilter = "Type='Deals of the Day'";
                DataTable Dealofthedaytable = dvdealofday.ToTable();


                for (int i = 0; i < Dealofthedaytable.Rows.Count; i++)
                {
                    System.Web.UI.HtmlControls.HtmlGenericControl newdivs = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    newdivs.Attributes.Add("class", "owl-item");
                    newdivs.ID = "dealofdaydiv_" + Convert.ToString(i);
                    newdivs.InnerHtml = "<div class='medium-card'><img src='" + Convert.ToString(Dealofthedaytable.Rows[i]["image1"]) + "'/></div><p class='head'>" + Convert.ToString(Dealofthedaytable.Rows[i]["Sub_cat_name"]) + "<asp:HiddenField ID='hdndealid_" + i + "' runat='server' Value='" + Convert.ToString(Dealofthedaytable.Rows[i]["Sub_cat_id"]) + "' /></p><p class='amount'>From &#x20B9; 99</p><p class='sub-head'>Best Selling</p>";
                    PlaceHolderdealofday.Controls.Add(newdivs);

                }

                DataView dvsubcategories = dsSubCategories.Tables[0].DefaultView;
                dvsubcategories.RowFilter = "Type<>'Deals of the Day'";
                DataTable subcategoriestable = dvsubcategories.ToTable(true, "Type", "sub_type_id");

                for (int i = 0; i < subcategoriestable.Rows.Count; i++)
                {
                    string encodedval = Server.UrlEncode(Convert.ToString(subcategoriestable.Rows[i]["Type"]));
                    System.Web.UI.HtmlControls.HtmlGenericControl newdivssubcat = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    newdivssubcat.ID = "subcatdiv_" + Convert.ToString(i);
                    string uppersubcat = "<section><div class='card m-l-r-10'><div class='container-fluid'><div class='row'><div class='col-md-12'><h1 class='card-heading'><span class='left v-middle'>" + Convert.ToString(subcategoriestable.Rows[i]["Type"]) + "</span><a href=SubcategoryViewAll.aspx?subcatTypeid=" + Convert.ToString(subcategoriestable.Rows[i]["sub_type_id"]) + "&subcatTypename=" + encodedval + " class='btn btn-success btn-sm right'>View All</a><span class='clearfix'></span></h1></div></div>";
                    //newdivs.InnerHtml = "<div class='row'><div class='col-md-12'><h1 class='card-heading'><span class='left v-middle'>" + subcategoriestable.Rows[i][""]) +"</span><a href='#' class='btn btn-success btn-sm right>View All</a><span class='clearfix'></span></h1></div></div>";

                    dvsubcategories.RowFilter = "sub_type_id=" + Convert.ToString(subcategoriestable.Rows[i]["sub_type_id"]) + "";
                    DataTable subcategoriestableinner = dvsubcategories.ToTable();
                    string innersubcatheader = "<div class='banner-box'><div class='owl-carousel owl-theme owl-loaded owl-drag owl-sub-sub-category'><div class='owl-stage-outer'><div class='owl-stage'>";
                    string innersubcat = "";
                    for (int j = 0; j < subcategoriestableinner.Rows.Count; j++)
                    {

                        innersubcat = innersubcat + "" + "<div class='owl-item'><div class='medium-card'><img src = '" + Convert.ToString(subcategoriestableinner.Rows[j]["image1"]) + "' /></div ><p class='head'>" + Convert.ToString(subcategoriestableinner.Rows[j]["Sub_cat_name"]) + "<asp:HiddenField ID='hdnsubcatinner_" + j + "' runat='server' Value='" + Convert.ToString(subcategoriestableinner.Rows[j]["Sub_cat_id"]) + "' /></p><p class='amount'> From &#x20B9; 99</p><p class='sub-head'> Best Selling</p></div>";
                    }
                    innersubcat = innersubcatheader + "" + innersubcat + "" + "</div></div></div></div></div></div></section>";
                    newdivssubcat.InnerHtml = uppersubcat + "" + innersubcat;
                    placeholdesubcat.Controls.Add(newdivssubcat);

                }




            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //if (!IsPostBack)
                //{
                BindCategories();
                BindBanner();
                BindSubCategories();
                //}
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void DLSubcategories_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item)
            {
                DataRowView datarowview = e.Item.DataItem as DataRowView;
                int id = Convert.ToInt32(datarowview["sub_type_id"]);
                DataList dlsubcatinner = e.Item.FindControl("DLSubcategories_inner") as DataList;

                DataSet dsSubCategories = new DataSet();
                dsSubCategories = objproducts.BindSubCategories(Input);
                DataView dvsubcategories = dsSubCategories.Tables[0].DefaultView;
                dvsubcategories.RowFilter = "sub_type_id=" + id + "";
                DataTable subcategoriestableinner = dvsubcategories.ToTable();

                dlsubcatinner.DataSource = subcategoriestableinner;
                dlsubcatinner.DataBind();


            }
        }
    }
}