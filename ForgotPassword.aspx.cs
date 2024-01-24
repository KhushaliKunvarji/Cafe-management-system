using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Cafe_Managment_system
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        // connection to database
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            SecurityPnl.Visible = false;
            PasswordPnl.Visible = false;
        }

        public static int SId;
        public static string SName = "";
        public static string SPass = "";
        public static string Sques = "";
        public static string Sans = "";
        protected void ForgotBtn_Click(object sender, EventArgs e)
        {
            // select query as well as check if email and password match
            string Query = "select selId,SelName,SelEmail,SelPass,SecQues,SecAns from SellerTbl where SelEmail='{0}' and SelName = '{1}'";
            Query = string.Format(Query, EmailTb.Value, NameTb.Value);
            DataTable dt = Con.GetData(Query);
            if (dt.Rows.Count == 0)
            {
                // If match not found display error 
                ErrMsg.InnerText = "Please enter the correct Name and Email Address";
                EmailTb.Value = "";
            }
            else
            {
                // if match found display sequrity question panel
                SecurityPnl.Visible = true;
                SId = Convert.ToInt32(dt.Rows[0][0].ToString());
                SName = dt.Rows[0][1].ToString();
                SPass = dt.Rows[0][3].ToString();
                Sques = dt.Rows[0][4].ToString();
                Sans = dt.Rows[0][5].ToString();
                SecQuesTb.Value = Sques;
                ForgotBtn.Visible = false;
                GotologinBtn.Visible = false;
            }
        }

        protected void btnsec_Click(object sender, EventArgs e)
        {
            ForgotBtn.Visible = false;
            GotologinBtn.Visible = false;
            string Query = "select selId,SelName,SelEmail,SelPass,SecQues,SecAns from SellerTbl where SelEmail='{0}' and SelName = '{1}'";
            Query = string.Format(Query, EmailTb.Value, NameTb.Value);
            DataTable dt = Con.GetData(Query);
            SId = Convert.ToInt32(dt.Rows[0][0].ToString());
            SName = dt.Rows[0][1].ToString();
            SPass = dt.Rows[0][3].ToString();
            Sques = dt.Rows[0][4].ToString();
            Sans = dt.Rows[0][5].ToString();
            if (SecAnsTb.Value == Sans)
            {
                //if seciruty question is correct display update password panel
                PasswordPnl.Visible = true;
            }
            else
            {
                ErrMsg.InnerText = "Wrong answer to security question.Please try again";
            }

        }

        protected void Btnpass_Click(object sender, EventArgs e)
        {
            string Query = "select selId,SelName,SelEmail,SelPass,SecQues,SecAns from SellerTbl where SelEmail='{0}' and SelName = '{1}'";
            Query = string.Format(Query, EmailTb.Value, NameTb.Value);
            DataTable dt = Con.GetData(Query);
            SId = Convert.ToInt32(dt.Rows[0][0].ToString());
            SName = dt.Rows[0][1].ToString();
            SPass = dt.Rows[0][3].ToString();
            Sques = dt.Rows[0][4].ToString();
            Sans = dt.Rows[0][5].ToString();
            // update password
            if (PasswordTb.Value == ConPassTb.Value)
            {
                try
                {
                    string Query1 = "update SellerTbl set SelPass='{0}' where SelId ={1}";
                    Query1 = string.Format(Query1, PasswordTb.Value, SId);
                    Con.SetData(Query1);
                    ErrMsg.InnerText ="Password succesfully changed!You will be redirected to login";
                    EmailTb.Value = "";
                    NameTb.Value = "";
                    // redirect to login page after 5 seconds
                    Response.AddHeader("REFRESH", "5;URL=Views/Login.aspx");

                }
                catch (Exception Ex)
                {
                    ErrMsg.InnerText = Ex.Message;
                }
            }
            else
            {
                ErrMsg.InnerText = "Password and confirm password do not match.Please try again";
            }

        }

        protected void GotologinBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Views/Login.aspx");
        }
    }
}