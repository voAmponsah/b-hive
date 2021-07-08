using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shops : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("shops.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("products.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("individualaccounts.aspx");
    }
}