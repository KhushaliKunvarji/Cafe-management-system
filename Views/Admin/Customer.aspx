<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Cafe_Managment_system.Views.Admin.Sellers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 106px;
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
                            <img alt="" class="auto-style3" src="../../Assets/Images/png-transparent-java-logo-coffee-cafe-coffee-cup-latte-tea-mug-coffee-bean-teacup-caffeine-removebg-preview.png" /></div>
                        <div class="col-md-4"></div>
                    </div>
                      <div class="mb-3">
                        <label for="seller_name" class="form-label">Seller Name</label>&nbsp;
                             <input type="text" class="form-control" runat="server" id="selNameTb" required/>
                       </div>

                      <div class="mb-3">
                        <label for="email" class="form-label">Seller Email</label>
                       <input type="email" class="form-control" runat="server" id="SelEmailTb" required/>
                      </div>
                      <div class="mb-3">
                        <label for="Seller_Contact" class="form-label">Seller Contact </label>
                       <input type="number" class="form-control" runat="server" id="SelContactTb" required/>
                      </div>
                       <label id="ErrMsg" class="text-danger" runat="server"></label>
                      <div class="row">
                          
      
                           <div class="col d-grid">
                              <asp:Button ID="DeleteBtn" runat="server" Text="Delete" CssClass="btn btn-danger btn-block" OnClick="DeleteBtn_Click" />
                          </div>
                          <div class="row" style="height:20px"></div>
                        </div>
                 </div>
              <div class="col-md-8">
                  <h1 style="color:saddlebrown" class="text-center">Customers</h1>
            
                  <asp:GridView ID="SellerList" class="table table-bordered" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="SellerList_SelectedIndexChanged"></asp:GridView>
               
             </div>
        
       <div/>
            
     </div>
</div>
</asp:Content>
