<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewBill.aspx.cs" Inherits="Cafe_Managment_system.Views.Admin.ViewBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">

        </div>
        <div class="row">
            <div class="col-md-2">

            </div>
            <div class="col-md-8">
                <h1 style="color:saddlebrown" class="text-center">Bill</h1>
            <asp:GridView ID="BillList" class="table table-bordered table-hover" runat="server"></asp:GridView>
            </div>
            <div class="col-md-2">

            </div>
        </div>
    </div>
</asp:Content>
