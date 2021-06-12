using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Globalization;

namespace WebApplication4_Database_
{
    public partial class sold_history : System.Web.UI.Page
    {
        void fillGrid()
        {
            string str = ConfigurationManager.ConnectionStrings["MedicinesEx"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("select s.id as 'Sl.No',mname as 'Drug Name',s.stock as 'Sold stoack',sdate as 'Date' from medicines m RIGHT JOIN medicines_sold s On m.id=s.mid;", con);
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            Adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                fillGrid();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home Page.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Convert.ToDateTime(Calendar1.SelectedDate, CultureInfo.GetCultureInfo("en-US")).ToString("MM-dd-yyyy");
            Calendar1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Calendar2.Visible = true;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text = Convert.ToDateTime(Calendar2.SelectedDate, CultureInfo.GetCultureInfo("en-US")).ToString("MM-dd-yyyy");
            Calendar2.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string dt1 = TextBox1.Text;
            string dt2 = TextBox2.Text;
            string str = ConfigurationManager.ConnectionStrings["MedicinesEx"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("select s.id as 'Sl.No',mname as 'Drug Name',s.stock as 'Sold stoack' from medicines m RIGHT JOIN medicines_sold s On m.id=s.mid where sdate BETWEEN '"+dt1+"' AND '"+dt2+"';", con);
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            Adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}