using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void link_1(object sender, EventArgs e)
    {
        Response.Redirect("ProductList.aspx?CategoryID=1"); //BackPack
    }

    protected void link_2(object sender, EventArgs e)
    {
        Response.Redirect("ProductList.aspx?CategoryID=2"); //Couch
    }

    protected void link_3(object sender, EventArgs e)
    {
        Response.Redirect("ProductList.aspx?CategoryID=3"); //Tv
    }
}