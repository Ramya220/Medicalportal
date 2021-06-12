using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Services;
using Newtonsoft.Json;
using System.ComponentModel.Design.Serialization;
using System.Web.UI.DataVisualization.Charting;

namespace WebApplication4_Database_
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                load();
                load1();
            }

        }

        public void load()
        {
            string str = ConfigurationManager.ConnectionStrings["MedicinesEx"].ConnectionString;
            SqlConnection con = new SqlConnection(str);

            SqlCommand cmd = new SqlCommand("select m.Mname,sum(s.stock) from medicines_sold s,medicines m where sdate between '11-03-2020' and '11-29-2020' and m.id=s.mid group by Mname;", con);
            con.Open();
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            Adpt.Fill(dt);
            con.Close();
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);
            }
            Chart1.Series[0].Points.DataBindXY(x,y);
            Chart1.Series[0].ChartType = SeriesChartType.Pie;
            Chart1.Legends[0].Enabled= true;
        }
        public void load1()
        {
            string str = ConfigurationManager.ConnectionStrings["MedicinesEx"].ConnectionString;
            SqlConnection con = new SqlConnection(str);

            SqlCommand cmd = new SqlCommand("select CONVERT(varchar(10),sdate,101)  ,sum(stock) from medicines_sold where sdate>=dateadd(day,datediff(day,0,GETDATE())-7,0) group by sdate;", con);
            con.Open();
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            Adpt.Fill(dt);
            con.Close();
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);
            }
            Chart2.Series[0].Points.DataBindXY(x, y);
            Chart2.Series[0].ChartType = SeriesChartType.Line;
        }



        protected void Chart1_Load(object sender, EventArgs e)
        {

        }
    }
}