<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

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
    <h2 class="blueHead">Contact Us</h2>
    <p class="subHead">
        If you have any questions, feel free to contact us. We operate between noon and 4pm.
    </p>
    <address class="subHead">
       208 8th St. Sw Unit 1738<br />
        Orange City, IA 51041<br />
        <abbr title="Phone" class="subHead">P:</abbr>
        520.123.4567
    </address>

    <address class="subHead">
        <strong>Support:</strong>   <a href="mailto:RaiderTrade@example.com">Support@RaiderTrade.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:RaiderTrade@example.com">Marketing@RaiderTrade.com</a>
    </address>
</asp:Content>
