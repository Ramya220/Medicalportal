using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace WebApplication4_Database_
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public void AddStock(int id,int stock)
        {
            string str = ConfigurationManager.ConnectionStrings["MedicinesEx"].ConnectionString;
            SqlConnection con = new SqlConnection(str);

            SqlCommand cmd1 = new SqlCommand("update medicines set stock=stock+" + stock + " where  id= " + id, con);
            con.Open();
            int rt1 = cmd1.ExecuteNonQuery();
            con.Close();
        }
    }
}
