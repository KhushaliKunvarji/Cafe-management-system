using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managment_system.Views.Admin
{
    public partial class product : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowProducts();
                GetCategories();
            }
     
        }
        // show products using data grid
        private void ShowProducts()
        {
            string Query = "select * from ItemTbl";
            ProductList.DataSource = Con.GetData(Query);
            ProductList.DataBind();
        }
        // get categories from category table 
        private void GetCategories() 
        {
            string Query = "select * from CategoryTbl";
            CatCb.DataTextField = Con.GetData(Query).Columns["CatName"].ToString();
            CatCb.DataValueField = Con.GetData(Query).Columns["CatId"].ToString();
            CatCb.DataSource = Con.GetData(Query);
            CatCb.DataBind();
        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {

            try
            {
                // add product using specific category
                string PName = ProdNameTb.Value;
                string PPrice = ProdPriceTb.Value;
                string PCat = CatCb.SelectedValue;
                string Query = "INSERT INTO ItemTbl values('{0}','{1}',{2})";
                Query = string.Format(Query, PName, PPrice, PCat);
                Con.SetData(Query);
                ShowProducts();
                ErrMsg.InnerText = "Product Added!";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void ProductList_SelectedIndexChanged(object sender, EventArgs e)
        {
            // select specific product from datagrid
            ProdNameTb.Value = ProductList.SelectedRow.Cells[2].Text;
            ProdPriceTb.Value = ProductList.SelectedRow.Cells[3].Text;
            CatCb.SelectedValue = ProductList.SelectedRow.Cells[4].Text;
            
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                // update product
                string PName = ProdNameTb.Value;
                string PPrice = ProdPriceTb.Value;
                string PCat = CatCb.SelectedValue;
               
                string Query = "update ItemTbl set ProductName='{0}',ProductPrice ='{1}',ProductCateg = '{2}' where ProductId ={4}";
                Query = string.Format(Query, PName, PPrice, PCat, ProductList.SelectedRow.Cells[1].Text);
                Con.SetData(Query);
                ShowProducts();
                ErrMsg.InnerText = "Product Updated!";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                // delete product
                string PName = ProdNameTb.Value;
                string PPrice = ProdPriceTb.Value;
                string PCat = CatCb.SelectedValue;
                string Query = "delete from ItemTbl  where ProductId ={0}";
                Query = string.Format(Query, ProductList.SelectedRow.Cells[1].Text);
                Con.SetData(Query);
                ShowProducts();
                ErrMsg.InnerText = "Product deleted!";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}