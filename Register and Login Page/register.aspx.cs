using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;

namespace loginpage
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                TextBox2.Attributes["type"] = "SingleLine";
            }
            if (CheckBox1.Checked == false)
            {
                TextBox2.Attributes["type"] = "password";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = @"INSERT INTO usernametable (username,password,name,surname,age,RegisterDate) VALUES (@username,@password,@name,@surname,@age,@RegisterDate)";
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            
                SqlCommand cmd = new SqlCommand(sql,con1);
               
                string uname = TextBox1.Text;
                string pass= TextBox2.Text;
                string namee= TextBox3.Text;
                String surnamee= TextBox4.Text;
                string agee= TextBox5.Text;
            DateTime localDate = DateTime.Now;
           

            
                      

            cmd.Parameters.Add("@username", SqlDbType.NChar).Value = uname;
            cmd.Parameters.Add("@password", SqlDbType.NChar).Value = pass;
            cmd.Parameters.Add("@name", SqlDbType.NChar).Value = namee;
            cmd.Parameters.Add("@surname", SqlDbType.NChar).Value = surnamee;
            cmd.Parameters.Add("@age", SqlDbType.Int).Value = agee;
            cmd.Parameters.Add("@RegisterDate", SqlDbType.DateTime).Value = localDate;
            con1.Open();
            cmd.ExecuteNonQuery();
            con1.Close();
            string text = "Succesfull,To go LOGIN page please click Okay Button";
            MessageBox.Show(text);

            Response.Redirect("WebForm1.aspx");
                  
        
        }
    }
}