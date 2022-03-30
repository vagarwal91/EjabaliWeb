using eJABALI.BAL;
using System;
using System.Data;
using System.Data.SqlClient;

namespace eJABALI
{
    public partial class DealofDay : System.Web.UI.Page
    {
        Products objproducts = new Products();
        

        private void BindDealofday()
        {
            string imageurl = "images/category-1.jpeg";
            DataSet dsCategoriesproducts = new DataSet();
            SqlParameter[] Input = new SqlParameter[0];
            dsCategoriesproducts = objproducts.BindSubCategories(Input);
            if (dsCategoriesproducts.Tables.Count > 0 && dsCategoriesproducts.Tables[0].Rows.Count > 0)
            {

                DataView dvdealofday = dsCategoriesproducts.Tables[0].DefaultView;
                dvdealofday.RowFilter = "Type='Deals of the Day'";
                DataTable Dealofthedaytable = dvdealofday.ToTable();

                for (int i = 0; i < Dealofthedaytable.Rows.Count; i++)
                {
                    System.Web.UI.HtmlControls.HtmlGenericControl newdivs = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    newdivs.ID = "Categorydiv_" + Convert.ToString(i);
                    newdivs.InnerHtml = "<div class='item'><a href = 'Subcategories.aspx?subcatid=" + Convert.ToString(Dealofthedaytable.Rows[i]["sub_cat_id"]) + "&subcatname=" + Convert.ToString(Dealofthedaytable.Rows[i]["Description"]) + "&Catname=Deal Of the Day&Catid=" + "" + "' class='medium-card'><img src = '"+imageurl+"' /><asp:HiddenField ID = 'hdnsubcatid_" + i + "' runat='server' Value=" + Convert.ToString(Dealofthedaytable.Rows[i]["sub_cat_id"]) + " /><h4 class='item-brand-caption'>Shop Now</h4></a></div>";
                    placeholderdod.Controls.Add(newdivs);
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                BindDealofday();
            }
            catch (Exception ex)
            { 
            
            }
        }
    }
}