using System;
using System.CodeDom;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managment_system.Views.Admin
{
    public partial class Sellers : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack) 
            { 
                ShowSellers();
            }
            ShowSellers();
        }
        // function for diaplaying customers to admin
        private void ShowSellers() 
        {
            string Query = "select SelId as Customer_ID,SelName as Customer_Name,SelEmail as Customer_Email,SelContact as Customer_Contact from SellerTbl";
            SellerList.DataSource = Con.GetData(Query);
            SellerList.DataBind();
        }
        

        protected void SellerList_SelectedIndexChanged(object sender, EventArgs e)
        {
            selNameTb.Value = SellerList.SelectedRow.Cells[2].Text;
            SelEmailTb.Value = SellerList.SelectedRow.Cells[3].Text;
            SelContactTb.Value = SellerList.SelectedRow.Cells[4].Text;
            
        }

       

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                // delete customer from database 
                string SName = selNameTb.Value;
                string SEmail = SelEmailTb.Value;
                string Scontact = SelContactTb.Value;
              
                string Query = "delete from SellerTbl where SelId= '{0}'";
                Query = string.Format(Query,SellerList.SelectedRow.Cells[1].Text);
                Con.SetData(Query);
                ShowSellers();
                ErrMsg.InnerText = "Seller Deleted!";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}