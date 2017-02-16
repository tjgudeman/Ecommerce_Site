using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ecommerce;
using Microsoft.AspNet.Identity;
using System.Diagnostics;

public partial class Account_Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //String UID = User.Identity.GetUserId();
        //Page.DataBind();
        System.Web.HttpContext.Current.Session["UserID"] = User.Identity.GetUserId();
        OrderRepeater.DataSource = ObjectDataSource1;
        OrderRepeater.DataBind();
        Debug.WriteLine(User.Identity.GetUserId());
    }


    protected void OrderRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            Repeater ItemRepeater = (Repeater)e.Item.FindControl("ItemRepeater");
            ObjectDataSource a = new ObjectDataSource("DataSetTableAdapters.OrderBodyTableAdapter", "GetData");
            a.SelectParameters.Clear();
            dynamic row = e.Item.DataItem as dynamic;
            int id = row.Row["Id"];
            a.SelectParameters.Add("ID", id.ToString());
     
            ItemRepeater.DataSource = a;
            ItemRepeater.DataBind();
        }
    }
}