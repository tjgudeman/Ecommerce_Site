<%@ Page Language="C#" MasterPageFile="~/Site.Master" Title="Orders" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Account_Order" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeaderContent" runat="server">
    <title></title>
</asp:Content>

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
    <div class="container">
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.OrderHeadTableAdapter">
        <SelectParameters>
            <asp:SessionParameter Name="ID" SessionField="UserID" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>

    <asp:Repeater ID="OrderRepeater" runat="server" OnItemDataBound="OrderRepeater_ItemDataBound">
        <HeaderTemplate><div class="list-group"></HeaderTemplate>
            
 
        <ItemTemplate>
            <h4 class="card-title" style="color: #00a4cc;">Order Number: <%# Eval("ID") %> </h4>

            <asp:Repeater ID="ItemRepeater" runat="server">
                <ItemTemplate>
                    <a href='/Product?ID=<%# Eval("Product_FK") %>' class="list-group-item"><%# Eval("Quanity") %> - <%# Eval("Name") %><span class="badge">$ <%# Eval("Price") %></span></a>
                </ItemTemplate>
            </asp:Repeater>

            <asp:ObjectDataSource ID="OrderBodyByOrderHeadDataSource" runat="server"
                    SelectMethod="GetData" TypeName ="DataSetTableAdapters.OrderBodyTableAdapter">
                <SelectParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>

        </ItemTemplate>
        <FooterTemplate></div></FooterTemplate>
        <SeparatorTemplate><hr /></SeparatorTemplate>
    </asp:Repeater>
    </div>

</asp:Content>