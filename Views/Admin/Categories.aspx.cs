using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Managment_system.Views.Admin
{
    public partial class Categories : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {

            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowCategories();
              
            }

        }
        // function for viewing categtories from categories table using datagrid
        private void ShowCategories()
        {
            string Query = "select * from CategoryTbl";
            CategoriesList.DataSource = Con.GetData(Query);
            CategoriesList.DataBind();
        }


        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string CName = CatNameTb.Value;
                // add new item into category table
                
                string Query = "INSERT INTO CategoryTbl values('{0}')";
                Query = string.Format(Query, CName);
                Con.SetData(Query);
                ShowCategories();
                ErrMsg.InnerText = "Category Added!";
                CatNameTb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void CategoriesList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CatNameTb.Value = CategoriesList.SelectedRow.Cells[2].Text;
            
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {

            try
            {
                // update category table
                string CName = CatNameTb.Value;

                string Query = "update CategoryTbl set CatName='{0}'";
                Query = string.Format(Query, CName);
                Con.SetData(Query);
                ShowCategories();
                ErrMsg.InnerText = "Category Updated!";
                CatNameTb.Value = "";
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
                string CName = CatNameTb.Value;
                // delete category from category table
                string Query = "delete from CategoryTbl where CatId='{0}'";
                Query = string.Format(Query, CategoriesList.SelectedRow.Cells[1].Text);
                Con.SetData(Query);
                ShowCategories();
                ErrMsg.InnerText = "Category Deleted!";
                CatNameTb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}