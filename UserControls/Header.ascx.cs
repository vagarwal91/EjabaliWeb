using eJABALI.DAL;
using System;
using System.Data;

namespace eJABALI.UserControls
{
    public partial class Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string loginUserId = Convert.ToString(Session["LoginUserId"]);
            if (!string.IsNullOrEmpty(loginUserId))
            {
                DBContext dBContext = new DBContext();
                string str2 = "SELECT *  " +
                      "  FROM UNI_CLIENT_DETAILS WHERE cust_Id='" + loginUserId + "'";
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