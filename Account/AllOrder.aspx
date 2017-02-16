<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="AllOrder.aspx.cs" Inherits="Account_AllOrder" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeaderContent" runat="server">
    <title></title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Repeater ID="OrderRepeater" runat="server" OnItemDataBound="OrderRepeater_ItemDataBound">
        <HeaderTemplate><div class="list-group"></HeaderTemplate>
            
 
        <ItemTemplate>
            <h4 class="card-title">Order:<%# Eval("ID") %> by User: <%# Eval("UserName") %></h4>

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

</asp:Content>