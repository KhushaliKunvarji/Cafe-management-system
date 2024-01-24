using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managment_system.Views.Customer
{
    public partial class Order : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowProducts();
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5] 
                {
                new DataColumn("Id"),
                new DataColumn("Product"),
                new DataColumn("Price"),
                new DataColumn("Quantity"),
                new DataColumn("Total")
                });
                ViewState["Bill"] = dt;
                this.DataBind();
            }
        }
        private void BindGrid()
        {
            BillGV.DataSource = ViewState["Bill"];
            BillGV.DataBind();
        }
        private void ShowProducts()
        {
            string Query = "select * from ItemTbl";
            ProductList.DataSource = Con.GetData(Query);
            ProductList.DataBind();
        }
        int GrdTot;
        public static int Amount;
        int Seller = Login.SId;


        private void InsertBill()
        {
            try
            {
                int Amt = Amount;
                DateTime now = DateTime.Now;
                string date = Convert.ToString(now);
                string Query = "INSERT INTO BillTbl values('{0}','{1}',{2})";
                Query = string.Format(Query,date, Seller, Amt);
                Con.SetData(Query);
                ShowProducts();
                ErrMsg.InnerText = "Order Placed!";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        protected void AddToBtn_Click(object sender, EventArgs e)
        {
            int Total = Convert.ToInt32(QtyTb.Value) * Convert.ToInt32(ProdPriceTb.Value);
            DataTable dt = (DataTable)ViewState["Bill"];
            dt.Rows.Add(
                BillGV.Rows.Count + 1,
                ProdNameTb.Value,
                ProdPriceTb.Value,
                QtyTb.Value,
                Total
            );
            ViewState["Bill"] = dt;
            this.BindGrid();

            GrdTot = 0;
            for(int i = 0; i<= BillGV.Rows.Count-1; i++)
            {
                GrdTot = GrdTot + Int32.Parse(BillGV.Rows[i].Cells[4].Text);
            }

            Amount = GrdTot;
            TotalLbl.InnerText = "Ksh " + GrdTot;
        }

        protected void AddBillBtn_Click(object sender, EventArgs e)
        {
            InsertBill();
        }

        protected void ResetBtn_Click(object sender, EventArgs e)
        {
            ProdNameTb.Value = "";
            ProdPriceTb.Value = "";
            QtyTb.Value = "";
        }

        protected void ProductList_SelectedIndexChanged(object sender, EventArgs e)
        {
            ProdNameTb.Value = ProductList.SelectedRow.Cells[2].Text;
            ProdPriceTb.Value = ProductList.SelectedRow.Cells[3].Text;
           
        }
    }
}