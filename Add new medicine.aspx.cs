using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication4_Database_
{
    public partial class Add_new_medicine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                Label1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int stk = int.Parse(TextBox2.Text);
                string str1 = TextBox.Text;
                string str = ConfigurationManager.ConnectionStrings["MedicinesEx"].ConnectionString;
                SqlConnection con = new SqlConnection(str);
                string query = "INSERT INTO medicines VALUES(@Mname, @stock) ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Mname", str1);
                cmd.Parameters.AddWithValue("@stock", stk); 
                con.Open();
                int rt = cmd.ExecuteNonQuery();
                con.Close();
                
            }
            catch(Exception es)
            {
                Label1.Text = "Please enter Valid information";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home Page.aspx");
        }
    }
}