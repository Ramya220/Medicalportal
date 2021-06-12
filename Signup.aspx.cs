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
using System.IO;
using System.Text;
using System.Security.Cryptography;

namespace WebApplication4_Database_
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string CheckEmail(string useroremail)
        {
            string retval = "";
            string str = ConfigurationManager.ConnectionStrings["MedicinesEx"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            
            SqlCommand cmd = new SqlCommand("select email from emp_med where email=@UserNameorEmail", con);
            cmd.Parameters.AddWithValue("@UserNameorEmail", useroremail);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                retval = "true";
            }
            else
            {
                retval = "false";
            }
            con.Close();
            return retval;
        }

        static byte[] Encrypt(byte[] data, byte[] key, byte[] iv)
        {
            using (Aes algo = Aes.Create())
            {
                using (ICryptoTransform encryptor = algo.CreateEncryptor(key, iv))
                {
                    return Crypt(data, encryptor);
                }
            }
        }

        static byte[] Decrypt(byte[] data, byte[] key, byte[] iv)
        {
            using (Aes algo = Aes.Create())
            {
                using (ICryptoTransform decryptor = algo.CreateDecryptor(key, iv))
                {
                    return Crypt(data, decryptor);
                }
            }
        }

        static byte[] Crypt(byte[] data, ICryptoTransform cryptor)
        {
            var ms = new MemoryStream();
            using (Stream cs = new CryptoStream(ms, cryptor, CryptoStreamMode.Write))
            {
                cs.Write(data, 0, data.Length);
            }
            return ms.ToArray();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(lblStatus.Text.Equals(""))
            {
                try
                {
                    string name = txtName.Text;
                    string email = txtUsernameOrEmail.Text;
                    string phone = txtMobile.Text;
                    string pass = txtPassword.Text;

                    Random rand = new Random();
                    byte[] key = new byte[16];
                    byte[] iv = new byte[16];
                    for (int i = 0; i < 16; i++) key[i] = 0x20;
                    for (int i = 0; i < 16; i++) iv[i] = 0x30;
                    string password = pass;
                    byte[] data = Encoding.ASCII.GetBytes(pass);
                    byte[] encrypted = Encrypt(data, key, iv);

                    string password1 = Encoding.ASCII.GetString(encrypted);
                    byte[] decrypted = Decrypt(encrypted, key, iv);
                    string password2 = Encoding.ASCII.GetString(decrypted);// Geronimo29
                    Label1.Text = password2;

                    StringBuilder hex = new StringBuilder(encrypted.Length * 2);
                    foreach (byte b in encrypted)
                        hex.AppendFormat("{0:x2}", b);
                    string abc = hex.ToString();

                    string str = ConfigurationManager.ConnectionStrings["MedicinesEx"].ConnectionString;
                    SqlConnection con = new SqlConnection(str);
                    con.Open();
                    string query = "INSERT INTO emp_med VALUES(@email,@Mobile,@name,@pass)";
                    SqlCommand cmd1 = new SqlCommand(query, con);
                    cmd1.Parameters.AddWithValue("@email", email);
                    cmd1.Parameters.AddWithValue("@Mobile", phone);
                    cmd1.Parameters.AddWithValue("@name", name);
                    cmd1.Parameters.AddWithValue("@pass", abc);
                    int rt1 = cmd1.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("Login.aspx");
                }
                catch(Exception ep)
                {
                    string str = ConfigurationManager.ConnectionStrings["MedicinesEx"].ConnectionString;
                    SqlConnection con = new SqlConnection(str);
                    
                    SqlCommand cmd1 = new SqlCommand();
                    SqlParameter sp1 = new SqlParameter();
                    
                    cmd1 = new SqlCommand("AddToErrorLog", con);    
                    cmd1.Parameters.Add("@param2", SqlDbType.VarChar).Value = ep.ToString();
                    cmd1.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Label1.Text = "Please provide Valid Information";
                }

            }
            else
            {
                Label1.Text = "Email already Exist";
            }
        }
    }
}