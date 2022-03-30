using System;
using eJABALI.BAL;
using System.Data;
using System.Data.SqlClient;

namespace eJABALI
{
    public partial class SubcategoryViewAll : System.Web.UI.Page
    {
        Products objproducts = new Products();

        private void BindsubCategoryproducts(int subcatid)
        {
            DataSet dssubCategoriesproducts = new DataSet();
            SqlParameter[] prms = new SqlParameter[1];
            prms[0] = new SqlParameter("@sub_cat_id", SqlDbType.Int) { Value = 26 };
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
                    if (Request.QueryString.Count > 0)
                    {
                        if (Request.QueryString["subcatTypeid"] != null)
                        {

                            //catid.Value = ConvertRequest.QueryString["Catid"]);
                            BindsubCategoryproducts(Convert.ToInt32(Request.QueryString["subcatTypeid"]));
                            lblsubcatname.Text = Convert.ToString(Request.QueryString["subcatTypename"]);
                            lblsubcattype.Text= Convert.ToString(Request.QueryString["subcatTypename"]);
                            //lblcatname.Text = ConvertRequest.QueryString["Catname"]);
                            //anchorcat.HRef = "Categries.aspx?catid=" + catid.Value + "&catname=" + lblcatname.Text + "";

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