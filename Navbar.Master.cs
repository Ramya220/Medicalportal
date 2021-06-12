using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4_Database_
{
    public partial class Navbar : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]!=null)
            {
                Label1.Text ="Hi "+ Session["username"].ToString()+" ...";
            }
            else
            {
                Label1.Text = "";
            }
        }
    }
}