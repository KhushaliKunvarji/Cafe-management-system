using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managment_system.Views.Admin
{
    public partial class ViewBill : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowBill();
                
            }
        }
        // show sumarised bill to admin
        private void ShowBill()
        {
            string Query = "select BillNum,BillDate as Date,SelName as Customer,Amount from BillTbl join SellerTbl on SellerTbl.SelId = BillTbl.Seller";
            BillList.DataSource = Con.GetData(Query);
            BillList.DataBind();
        }
    }
}