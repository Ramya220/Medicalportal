using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using WebApplication4_Database_.Database_Layer;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Globalization;
using WebApplication4_Database_;

namespace WebApplication4_Database_
{
    public partial class Add_Item : System.Web.UI.Page
    {

        WebService1 ws = new WebService1();
        int idd, stockk;
        public void fillmedicine()
        {
            string str = ConfigurationManager.ConnectionStrings["MedicinesEx"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            string sql1 = "select * from medicines";
            SqlDataAdapter adpt = new SqlDataAdapter(sql1, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "Mname";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                fillmedicine();
                Label1.Text = "";
            }
            Label1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int stk = int.Parse(TextBox1.Text);
            string str = ConfigurationManager.ConnectionStrings["MedicinesEx"].ConnectionString;
            try
            {
                ws.AddStock(int.Parse(DropDownList1.SelectedValue), stk);
                Label1.Text = "Stock Added successfully";
            }
            catch(Exception exp)
            {
                Label1.Text = "Something went wrong please try again";
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add new medicine.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home Page.aspx");
        }

      
       

    }
}