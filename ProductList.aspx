<%@ Page Language="C#" Title="Product List" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="ProductList" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeaderContent" runat="server">
    <title></title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: #282828 !important;
        }

        .subHead {
            color: #000000;
        }

        .blueHead {
            color: #00a4cc;
        }
    </style>
    <div>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.ProductTableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="category_FK" QueryStringField="CategoryID" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <div class="row">
            <asp:Repeater runat="server" ID="itemRepeater">
                 <ItemTemplate>
                        <a href='/Product?ID=<%# Eval("Id") %>'>
                            <div class="card col-md-3">
                                <img class="card-img-top" style="width:100%" src='/Picture/<%#Eval("ImageName1") %>' alt="Card image cap">
                                <div class="card-block">
                                    <h4 class="card-title"> <%#Eval("Name") %></h4>
                                    <p class="card-text"><%# Eval("Description") %></p>
                                    <a href='/Product?ID=<%# Eval("Id") %>' class="btn btn-primary"> $ <%# Eval("Price")%> </a>
                                </div>
                           </div>
                       </a>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
