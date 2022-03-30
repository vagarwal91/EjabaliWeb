using eJABALI.DAL;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace eJABALI.UserControls
{
    public partial class Footer : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            if (txt_Password.Text != txt_CPassword.Text)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();alert('Password and Confirm are not matching')", true);
                return;
            }
            string str = "SELECT Cust_Mobile as [Contact No] FROM UNI_CLIENT_DETAILS WHERE Cust_Mobile='" + txt_Phone.Text + "'";
            DBContext dBContext = new DBContext();
            DataTable Dt1 = dBContext.RetrieveRecords(str);
            if (Dt1.Rows.Count == 0)
            {
                SqlParameter[] param = new SqlParameter[10];

                param[0] = new SqlParameter("@Cust_name", txt_fullName.Text);
                param[1] = new SqlParameter("@Cust_Mobile", txt_Phone.Text);
                param[2] = new SqlParameter("@Cust_email", txt_Email.Text);
                param[3] = new SqlParameter("@Password", txt_Password.Text);
                param[4] = new SqlParameter("@Address", txt_Address.Text);
                param[5] = new SqlParameter("@platform", "Web");
                param[6] = new SqlParameter("@Device_id", "");
                param[7] = new SqlParameter("@token_id", "");
                param[8] = new SqlParameter("@Latitude", "");
                param[9] = new SqlParameter("@Longitude", "");

                int result = dBContext.InsertClient("[PUT_Client_Sign_up]", param);

                string str2 = "SELECT UNI_CLIENT_DETAILS.cust_name  " +
                   "  FROM UNI_CLIENT_DETAILS WHERE Cust_Mobile='" + txt_Phone.Text + "' AND Password='" + txt_Password.Text + "'";
                DataTable Dt2 = dBContext.RetrieveRecords(str2);
                if (Dt2.Rows.Count > 0)
                {
                    txt_Address.Text = "";
                    txt_CPassword.Text = "";
                    txt_Email.Text = "";
                    txt_fullName.Text = "";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Success", "alert('Added Successfully')", true);
                }
            }

            //ejabaliservice.Service service = new ejabaliservice.Service();
            //service.get_Sing_up(txt_fullName.Text, txt_Phone.Text, txt_Email.Text, txt_Password.Text, "", "", txt_Address.Text, "Web", "", "");
            //            string Url =
            //"http://Ejabali.com/service.asmx/get_Sing_up?Cust_name=" +
            //txt_fullName.Text +
            //            "&Cust_Mobile=" + txt_Phone.Text + "&Cust_email=" +
            //txt_Email.Text + "&password=" + txt_Password.Text +
            //"&Latitude=11&Longitude=111" +
            //            "&Address=" + txt_Address.Text + "&platform =
            //        Web & Device_id = &token_id = sdfd7f";
            //                    //Cust_name = rkka & Cust_Mobile = dhd & Cust_email = kk &
            //password = kk & Latitude = kk & Longitude = kk & Address = k &
            //platform = kk & Device_id = k & token_id = k
            //                    CookieContainer cookieJar = new CookieContainer();
            //            HttpWebRequest request =
            //(HttpWebRequest)WebRequest.Create(Url); request.ContentType =
            //"text/xml; charset=utf-8";
            //            request.UseDefaultCredentials = true;
            //            request.Method = "GET";
            //            //request.CookieContainer = cookieJar;
            //            //    request.Accept = @"text/html, application/xhtml+xml, */*";
            //            //           request.Referer = @"http://www.somesite.com/";
            //            //         request.Headers.Add("Accept-Language", "en-GB");
            //            //       request.UserAgent = @"Mozilla/5.0 (compatible;
            //            MSIE 10.0; Windows NT 6.2; Trident / 6.0)";
            //                    //     request.Host = @"www.somesite.com";
            //            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            //            //string , string , , string platform, string Device_id,
            //            string token_id
            //                    //WebRequest request =
            //WebRequest.Create("http://Ejabali.com/service.asmx/get_Sing_up?Cust_name="
            //+ txt_fullName.Text +
            //            //    "&Cust_Mobile="+
            //txt_Phone.Text + "&Cust_email=" + txt_Email.Text + "&password=" + txt_Password.Text +
            //"&Latitude=&Longitude=&platform=Web&Device_id=&token_id=sdfd7f&" +
            //            //    "Address="+txt_Address.Text);request.ContentType =
            //"application/json";
            //            //request.UseDefaultCredentials = true;
            //            request.Proxy.Credentials =
            //            System.Net.CredentialCache.DefaultCredentials;
            //            //request.Method = "GET";
            //            //WebResponse response = request.GetResponse();
        }
        protected void btn_login_Click(object sender, EventArgs e)
        {
            DBContext dBContext = new DBContext();
            string str2 = "SELECT *  " +
                  "  FROM UNI_CLIENT_DETAILS WHERE (Cust_Mobile='" + txt_EmailLogin.Text + "' or Cust_Email='" + txt_EmailLogin.Text + "') AND Password='" + txt_PasswordLogin.Text + "'";
            DataTable Dt2 = dBContext.RetrieveRecords(str2);
            if (Dt2.Rows.Count > 0)
            {
                Session["LoginUserId"] = Convert.ToString(Dt2.Rows[0]["Cust_Id"]);
                Response.Redirect("Home.aspx");
            }
        }
    }
}