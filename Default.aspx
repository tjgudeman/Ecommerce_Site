<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="HeadContent" ContentPlaceHolderID="HeaderContent" runat="server">


</asp:Content>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: #282828 !important;
        }
        .blueHead{
            color: #00a4cc;
        }
    </style>
    <div class="container">
        <div id="bulletLooper" data-looper="go" class="looper slide">
            <div class="looper-inner">
                <div class="item">
                    <img src="Images/Products/Couches/c_1_a.jpg" alt="couch 1" style="margin: auto; position:relative; height:5%; width:30%;"/>
                </div>
                <div class="item">
                    <img src="Images/Products/Couches/c_2_a.jpg" alt=""  style="margin: auto; position:relative; height:20%; width:30%;"/>
                </div>
                <div class="item">
                    <img src="Images/Products/Tv/t_1_b.jpg"  style="margin: auto; position:relative; height:10%; width:30%;"/>
                </div>
            </div>
        </div>
        <div class="row">
           <div class="col-md-4">
                <h2 class="blueHead">BackPacks</h2>
                <asp:HyperLink ID="Link1" runat="server" NavigateUrl="~/ProductList.aspx?CategoryID=1">
                    <img src="Picture/b32.jpg" alt="BackPack" style="position:relative; width:100%" /> 
                </asp:HyperLink>
           </div>  
            <div class="col-md-4">
                <h2 class="blueHead">Couches</h2>
                <asp:HyperLink ID="HyperLink1" runat="server" navigateUrl="~/ProductList.aspx?CategoryID=2">
                    <img src="Picture/c11.jpg" alt="Couch" style="position:relative; width:100%" />
                </asp:HyperLink>
            </div>
            <div class="col-md-4">
               <h2 class="blueHead">TVs</h2>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ProductList.aspx?CategoryID=3">
                    <img src="Picture/t22.jpg" alt="TV" style="position:relative; width:100%" />
                </asp:HyperLink>
            </div>
        </div>
    </div>

    
 
</asp:Content>
