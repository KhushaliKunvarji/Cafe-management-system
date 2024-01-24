<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Cafe_Managment_system.Views.Customer.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">  
    <div class="container-fluid">  
       
        <div class="row">
            <div class=" col-md-5 bg-white">
          
                <div class="row ">
                   
                    <div class="col ">
                        
                        <div class="mb-3">
                        <label for="ProdNameTb" class="form-label">Product Name</label>&nbsp;
                        <input type="text" autocomplete="off" class="form-control" runat="server" id="ProdNameTb"/>
                       </div>
                    </div>
                     <div class="col">
                        
                         <div class=" mb-3">
                        <label for="ProdPriceTb" class="form-label">Product Price</label>&nbsp;
                        <input type="text" autocomplete="off" class="form-control" runat="server" id="ProdPriceTb"/>
                       </div>
                    </div>
                  </div>
              
                 <div class="row">
                    <div class="col">
                        
                        <div class="mb-3">
                        <label for="QtyTb" class="form-label">Product Quantity</label>&nbsp;
                        <input type="text" autocomplete="off" class="form-control" runat="server" id="QtyTb"/>
                       </div>
                    </div>
                     <div class="col">
                        
                         <div class="mb-3">
                        <label for="DateTb" class="form-label">Billing Date</label>&nbsp;
                        <input type="date" class="form-control" runat="server" id="DateTb"/>
                       </div>
                    </div>
                 </div>
                
                <div class="row">
                      
                          <div class="col d-grid">
                              <asp:Button ID="AddToBtn" runat="server" Text="Add to bill" CssClass="btn btn-success btn-block" OnClick="AddToBtn_Click" />
                          </div>
                           <div class="col d-grid">
                              <asp:Button ID="ResetBtn" runat="server" Text="Reset" CssClass="btn btn-warning btn-block" OnClick="ResetBtn_Click" />
                          </div>
                </div>
               
                <div class="row">
                  
                    <div class="col">
                    
                    
             <h1 style="color:saddlebrown" class="text-center">Menu</h1>
                       
             <asp:GridView ID="ProductList" class="table table-bordered table-hover" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ProductList_SelectedIndexChanged"></asp:GridView>
               </div>
                </div>
            </div>
            
            <div class="col-md-7">
            <h1 style="color:saddlebrown" class="text-center bg-white">Your Order</h1>
            <asp:GridView ID="BillGV" class="table table-bordered table-hover bg-white" runat="server"></asp:GridView>
             <label id="TotalLbl" runat="server" class="text-dark h4"></label><br/>
                <div class="row">
                    <label id="ErrMsg" class="text-danger" runat="server"></label>
                </div>
                
                <asp:Button ID="AddBillBtn" runat="server" Text="Save Bill" CssClass="btn btn-warning" OnClick="AddBillBtn_Click" />
               
            </div>
            
         </div> 
 </div>
</asp:Content>
