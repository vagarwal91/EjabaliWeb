using eJABALI.BAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eJABALI
{
    public partial class orderhistory : System.Web.UI.Page
    {
        Products objproducts = new Products();
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                string LoginUserId = Convert.ToString(Session["LoginUserId"]);
                if (string.IsNullOrEmpty(LoginUserId))
                {
                    Response.Redirect("login.aspx");
                }
                else
                {
                    BindOrderHistory(LoginUserId);
                }
            }
            catch (Exception ex)
            {

            }
        }

        private void BindOrderHistory(string LoginUserId)
        {
            string imageurl = "images/category-1.jpeg";
            DataSet dsCategoriesproducts = new DataSet();
            SqlParameter[] Input = new SqlParameter[1]; 
             Input[0] = new SqlParameter("@cust_id", SqlDbType.Int) { Value = Convert.ToInt32(LoginUserId) };
            dsCategoriesproducts = objproducts.BindOrderHistory(Input);
            if (dsCategoriesproducts.Tables.Count > 0 && dsCategoriesproducts.Tables[0].Rows.Count > 0)
            {

                DataView dvdealofday = dsCategoriesproducts.Tables[0].DefaultView;
                dvdealofday.RowFilter = "Type='Deals of the Day'";
                DataTable Dealofthedaytable = dvdealofday.ToTable();

                for (int i = 0; i < Dealofthedaytable.Rows.Count; i++)
                {
                    System.Web.UI.HtmlControls.HtmlGenericControl newdivs = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    newdivs.ID = "Categorydiv_" + Convert.ToString(i);
                    newdivs.InnerHtml = "<div class='item'><a href = 'Subcategories.aspx?subcatid=" + Convert.ToString(Dealofthedaytable.Rows[i]["sub_cat_id"]) + "&subcatname=" + Convert.ToString(Dealofthedaytable.Rows[i]["Description"]) + "&Catname=Deal Of the Day&Catid=" + "" + "' class='medium-card'><img src = '" + imageurl + "' /><asp:HiddenField ID = 'hdnsubcatid_" + i + "' runat='server' Value=" + Convert.ToString(Dealofthedaytable.Rows[i]["sub_cat_id"]) + " /><h4 class='item-brand-caption'>Shop Now</h4></a></div>";
                    placeholderdod.Controls.Add(newdivs);
                }
            }
        }
    }
}