<%@ Page Language="C#" Title="Categories" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeFile="Catagories.aspx.cs" Inherits="Catagories" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: #282828 !important;
        }
        .subHead{
            color: #000000;
        }
        .blueHead{
            color: #00a4cc;
        }
    </style>

    <div class="row">
        <div class="col-md-4">
            <h2 class="blueHead">Backpacks</h2>
            <asp:HyperLink ID="Link1" runat="server" NavigateUrl="~/ProductList.aspx?CategoryID=1" >
                <img src="Picture/b11.jpg" alt="BackPack" style="position:relative; width:100%" > 
            </asp:HyperLink>
             
        </div>
        <div class="col-md-4">
            <h2 class="blueHead">Couches</h2>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ProductList.aspx?CategoryID=2"  >
                <img src="Images/Products/Couches/c_1_a.jpg" alt="Couch" style="position:relative; width:100%">
            </asp:HyperLink>
            
        </div>
        <div class="col-md-4">
           <h2 class="blueHead">TVs</h2>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ProductList.aspx?CategoryID=3"  >
                <img src="Images/Products/Tv/t_1_a.jpg" alt="TV" style="position:relative; width:100%">
                </asp:HyperLink>
        </div>
    </div>


</asp:Content>