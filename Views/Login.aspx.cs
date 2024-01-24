using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managment_system.Views
{
    public partial class Login : System.Web.UI.Page
    {
        // connect and acces data from database
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {

            Con = new Models.Functions();
            

        }
        public static int SId;
        public static string SName = "";
        public static string SPass = "";


        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            if(EmailTb.Value=="Admin@gmail.com" && PasswordTb.Value == "Admin1234@")
            {
                Response.Redirect("Admin/Product.aspx");
            }
            else
            {
                // if email and password in database redirect to order
                string Query = "select selId,SelName,SelEmail,SelPass from SellerTbl where SelEmail='{0}' and SelPass = '{1}'";
                Query = string.Format(Query, EmailTb.Value,PasswordTb.Value);
                DataTable dt = Con.GetData(Query);
                if(dt.Rows.Count == 0 ) 

                {
                    ErrMsg.InnerText = "Please enter the correct Email Address and Password";
                    EmailTb.Value = "";
                }
                else
                {
                    
                   
                        SId = Convert.ToInt32(dt.Rows[0][0].ToString());
                        SName = dt.Rows[0][1].ToString();
                        SPass = dt.Rows[0][3].ToString();
                        Response.Redirect("Customer/Order.aspx");
                    
                    

                }
            

            }
        }

        protected void SignupLnkBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void ForgotPasslnkBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("../ForgotPassword.aspx");
        }
    }
}