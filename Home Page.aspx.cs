using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4_Database_
{
    public partial class Home_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("sell item.aspx"); 
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("view medicines.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add Item.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("sold history.aspx");
        }
    }
}