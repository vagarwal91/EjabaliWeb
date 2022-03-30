using eJABALI.BAL;
using eJABALI.DAL;
using System;
using System.Data;

namespace eJABALI.UserControls
{
    public partial class Homeheader : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBContext dBContext = new DBContext();
            Products objproducts = new Products();
            object[] Input = null;
            DataSet dsCategories = new DataSet();
            dsCategories = objproducts.BindProductCategories(Input);

            if (dsCategories != null)
            {
                String str = "<select class='form-control chosen-select' onchange='sendToCategory(this);'>" +
                    "<option selected='selected' value='0'>Search for all product</option>";
                for (int i = 0; i < dsCategories.Tables[0].Rows.Count; i++)
                {
                    str += "<option value='" + dsCategories.Tables[0].Rows[i]["cat_id"] + "'>" + dsCategories.Tables[0].Rows[i]["cat_name"] + "</option>";
                }

                str += " </select>  ";

                div_searchCat.InnerHtml = str;
            }

            string LoginUserId = Convert.ToString(Session["LoginUserId"]);
            if (!string.IsNullOrEmpty(LoginUserId))
            {
                string str2 = "SELECT *  " +
                      "  FROM UNI_CLIENT_DETAILS WHERE cust_Id='" + LoginUserId + "'";
                DataTable Dt2 = dBContext.RetrieveRecords(str2);
                loginBtn.Visible = false;
                anc_profile.Visible = true;
                spn_signup.Visible = false;
                spn_signout.Visible = true;
                spn_profile.InnerText = Convert.ToString(Dt2.Rows[0]["Cust_Name"]);
            }
        }
    }
}