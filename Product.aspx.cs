using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product : System.Web.UI.Page
{
    protected DataSet.ProductRow item;
    private int id = 1;
    private int quantity;
    protected void Page_Load(object sender, EventArgs e)
    {
        //_code = GetUniqueIDRelativeTo();
        //_productName = Product.SearchById(_code).name;
        //_description = Product.SearchById(_code).description;
        if (!String.IsNullOrEmpty(Request.QueryString["ID"]))
            id = int.Parse(Request.QueryString["ID"]);
        DataSetTableAdapters.ProductTableAdapter ds = new DataSetTableAdapters.ProductTableAdapter();
        item = ds.GetDataByID(id)[0];
        Page.DataBind();
    }
    protected void BuyProductButton_Click(object sender, EventArgs e)
    {
        quantity = int.Parse(((sender as Button).Parent.FindControl("quantityTextbox") as TextBox).Text);
        Response.Cookies.Add(new HttpCookie("ProductID", id.ToString()));
        Response.Cookies.Add(new HttpCookie(id.ToString(), quantity.ToString()));
    }
}