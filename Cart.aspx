<%@ Page Language="C#" AutoEventWireup="true" Title="Cart" CodeFile="Cart.aspx.cs" MasterPageFile="~/Site.Master" Inherits="Cart" %>

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
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h2 class="blueHead">Cart</h2>

                <asp:Repeater runat="server" ID="myRepeater">
                    <ItemTemplate>
                        <tr>
                            <%--<td><%# DataBinder.Eval(Container.DataItem, "Name") %></td>
                        <td><%# DataBinder.Eval(Container.DataItem, "Item") %></td>
                        <td><%# DataBinder.Eval(Container.DataItem, "Price") %></td>
                        <td><%# DataBinder.Eval(Container.DataItem, "Quantity") %></td>>--%>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                    </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
        <asp:GridView ID="OrderGridView" runat="server" AutoGenerateColumns="False" DataSourceID="ProductDataSource" DataKeyNames="Id">
            <Columns>
                <asp:TemplateField HeaderText="Product Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" DataField="Name"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField FooterText="Total Quantity:" HeaderText="Quantity">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField FooterText="Total Price:" HeaderText="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" DataField="Price"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:ObjectDataSource ID="ProductDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByID" TypeName="DataSetTableAdapters.ProductTableAdapter">
            <SelectParameters>
                <asp:CookieParameter CookieName="ProductID" Name="id" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>

        <div class="col-md-12" style="">
            <button type="button" class="btn btn-secondary btn-lg btn-block" style="position: relative; width: 100%;">Buy >>></button>
        </div>
    </div>
</asp:Content>
