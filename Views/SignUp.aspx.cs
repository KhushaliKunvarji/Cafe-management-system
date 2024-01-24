using Cafe_Managment_system.Views.Customer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Cafe_Managment_system.Views
{
    public partial class SignUp : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
        }
        
        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
  
           
            string SName = selNameTb.Value;
            string SEmail = SelEmailTb.Value;
            string Scontact = SelContactTb.Value;
            string Spass = PasswordTb.Value;
            string Cpass = ConPassTb.Value;
            string Sans = SecAnsTb.Value;
            string Sques = SecQuesTb.Value;

            // check if passwords match

            if (Spass == Cpass)
            {
                try
                {
                    // insert data into table

                    string Query = "INSERT INTO SellerTbl values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = string.Format(Query, SName, SEmail, Scontact, Spass, Sques, Sans);
                    Con.SetData(Query);
                    
                    ErrMsg.InnerText = "You are registered!You will be redirected to login to order";
                    Response.AddHeader("REFRESH", "5;URL=Login.aspx");


                }
                catch (Exception Ex)
                {
                    ErrMsg.InnerText = Ex.Message;
                }
            }
            else
            {
                ErrMsg.InnerText = "Passwords do not match";
            }
        }

        protected void GotologinBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}