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
using System.Net.Mail;

using System.IO;
using System.Net;
using System.Text;

namespace WebApplication4_Database_
{
    public partial class sell_item : System.Web.UI.Page
    {
        public void fillmedicine()
        {
            TextBox2.Text = DateTime.Now.ToString("dd/MM/yyyy");
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
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]==null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                fillmedicine();
            }
            Label1.Text = "";
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;

        }
        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            TextBox2.Text = Convert.ToDateTime(Calendar1.SelectedDate, CultureInfo.GetCultureInfo("en-US")).ToString("dd-MM-yyyy");
            Calendar1.Visible = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string str = ConfigurationManager.ConnectionStrings["MedicinesEx"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            int stk = int.Parse(TextBox1.Text);
            string queryyy = "select stock from medicines where id ="+ DropDownList1.SelectedValue;
            SqlCommand cmd2 = new SqlCommand(queryyy, con);
            con.Open();
            SqlDataReader dr = cmd2.ExecuteReader();
            int stkk = 0;
            if (dr.HasRows)
            {
                while (dr.Read())
                    stkk= dr.GetInt32(0);
            }
            if(stkk-stk<50)
            {
                if(stkk-stk<0)
                {
                    Label1.Text = "Sorry Not enough item to sell!";
                }
                else
                {

                try
            {
                        string to = "lshariprasadp@gmail.com"; //To address    
                        string from = "voizfonicatelecom@gmail.com"; //From address    
                        MailMessage message = new MailMessage(from, to);

                        string mailbody = "In this article you will learn how to send a email using Asp.Net & C#";
                        message.Subject = "Sending Email Using Asp.Net & C#";
                        message.Body = mailbody;
                        message.BodyEncoding = Encoding.UTF8;
                        message.IsBodyHtml = true;
                        SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
                        System.Net.NetworkCredential basicCredential1 = new
                        System.Net.NetworkCredential("voizfonicatelecom@gmail.com", "Hari@123");
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = basicCredential1;
                       
                        Label1.Text = "message was sent successfully";
            }
            catch (Exception ex)
            {
                        Label1.Text = ex.StackTrace;
            }
            }

            }
            else
            {


            
            SqlCommand cmd = new SqlCommand("update medicines set stock=stock-" + stk + " where id = " + DropDownList1.SelectedValue, con);
            
            int rt = cmd.ExecuteNonQuery();
            DateTime dt;
            if (TextBox2.Text.Equals(""))
            {
                dt = DateTime.Now;
            }
            else
            {
                dt = Calendar1.SelectedDate;
            }

            string query = "INSERT INTO medicines_sold VALUES(@Mid, @stock,@sdate)";
            SqlCommand cmd1 = new SqlCommand(query, con);
            cmd1.Parameters.AddWithValue("@sdate", dt);
            cmd1.Parameters.AddWithValue("@mid",int.Parse(DropDownList1.SelectedValue));
            cmd1.Parameters.AddWithValue("@stock", stk);
            int rt1 = cmd1.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Sold hoistory updated";
            MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home Page.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            Button1.Enabled = true;
        }
    }
}