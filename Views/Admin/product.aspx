<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="Cafe_Managment_system.Views.Admin.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 107px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">

        </div>
        <div class="row">
             <div class="col-md-4">
                 <div class="row">
                     <div class="col">

                     </div>
                     <div class="col">

                     </div>
                      <div class="col">

                    </div>
                 </div>

                 <div class="row mt-2">
                        <div class="col-md-4">&nbsp;</div>
                        <div class="col-md-4 pt-2">
                            <img alt="" class="auto-style3" src="../../Assets/Images/png-transparent-java-logo-coffee-cafe-coffee-cup-latte-tea-mug-coffee-bean-teacup-caffeine-removebg-preview.png"/>
                        </div>
                        <div class="col-md-4"></div>
                 </div>

                 <div class="mb-3">
                        <label for="product_name" class="form-label">Product Name</label>&nbsp;
                        <input type="text" class="form-control" runat="server" id="ProdNameTb"/>
                 </div>

                 <div class="mb-3">
                        <label for="product_price" class="form-label">Product Price</label>
                        <input type="text" class="form-control" runat="server" id="ProdPriceTb"/>
                 </div>

                 <div class="mb-3">
                        <label for="categories" class="form-label">Categories</label>
                        <asp:DropDownList ID="CatCb" runat="server" class="form-control" ></asp:DropDownList>
                 </div>
                        
               <label id="ErrMsg" class="text-danger" runat="server"></label>
               <div class="row">
                          
                          <div class="col d-grid">
                              <asp:Button ID="EditBtn" runat="server" Text="Edit" CssClass="btn btn-success btn-block" OnClick="EditBtn_Click" />
                          </div>
                           <div class="col d-grid">
                              <asp:Button ID="AddBtn" runat="server" Text="Save" CssClass="btn btn-warning btn-block" OnClick="AddBtn_Click" />
                          </div>
                           <div class="col d-grid">
                              <asp:Button ID="DeleteBtn" runat="server" Text="Delete" CssClass="btn btn-danger btn-block" OnClick="DeleteBtn_Click" />
                          </div>
                </div>
                 </div>
              <div class="col-md-8">
               <h1 style="color:saddlebrown" class="text-center">Products</h1>
                  <asp:GridView ID="ProductList" class="table table-bordered table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ProductList_SelectedIndexChanged"></asp:GridView>
              
              </div>
                 
            
       
           <div/>
                  
        </div>
    </div>
</asp:Content>
