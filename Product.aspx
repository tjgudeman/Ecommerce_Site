<%@ Page Language="C#" Title="Products" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeaderContent" runat="server">
 <!-- CSS -->
      <style type = "text/css">
         #spinner-1 input {
             width: 100px}

         .grey_text{
             color:#535353;
         }
         .subHead{
             color:#000000;
         }
         body {
            background-color: #282828 !important;
         }
         .blueHead{
            color: #00a4cc;
        }
      </style>

</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2  class="blueHead" style="position:relative; float:left; "><%#item.Name%></h2>
                <h2  class="blueHead" style="position:relative; float:right; "> Price: $<%# item.Price %></h2>    

                <div id="bulletLooper" data-looper="go" class="looper slide" style="width:100%">
                    <div class="looper-inner">
                        <div class="item">
                            <img src='Picture/<%# item.ImageName1 %>' alt="couch 1" style="position:relative; width:100%;" />
                        </div>
                        <div class="item">
                            <img src='Picture/<%# item.ImageName2 %>' alt=""  style=" position:relative; width:100%;">
                        </div>
                        <div class="item">
                            <img src='Picture/<%# item.ImageName3 %>'  style=" position:relative; width:100%;"/>
                        </div>
                    </div>
                    <nav>
                        <a class="looper-control" data-looper="prev" href="#bulletLooper">
                            <i class="icon-chevron-left"></i>
                        </a>
                        <a class="looper-control right" data-looper="next" href="#bulletLooper">
                            <i class="icon-chevron-right"></i>
                        </a>
                        <ul class="looper-nav">
                            <li><a href="#bulletLooper" data-looper="to" data-args="1">&bull;</a></li>
                            <li><a href="#bulletLooper" data-looper="to" data-args="2">&bull;</a></li>
                            <li><a href="#bulletLooper" data-looper="to" data-args="3">&bull;</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="col-md-6" style="padding-top: 4em;">
                <p class="blueHead" style="float:left;">Number of items: </p>
                    <div>
                        <asp:Textbox id = "quantityTextbox" TextMode="Number" min="1" max="10" step="1" runat="server"/>
                    </div>         
                <div class="btn btn-secondary btn-lg btn-block">
                    <p>
                        <asp:Button style="position:relative; width:100%;" CssClass="btn btn-secondary btn-lg btn-block" onclick="BuyProductButton_Click" runat="server" Text="Add to Cart" />
                    </p>
                </div>
            </div>
        </div> 
        <div class="row">
            <div class="col-md-4">
                <h2 class="blueHead">Product Details:</h2>
                <p class="subHead">
                    <%# item.Description %>
                </p>
            </div>
            <div class="col-md-8"></div>
        </div>
    </div>

<!-- Javascript -->
      <script>
          $(function () {
              $("#quantityTextbox").spinner({
                  min: 0,
                  max: 10
              });
            
          });

      </script>
</asp:Content>
