using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data.SqlClient;  
using System.Configuration;
using System.Drawing;
using System.Reflection.Emit;
using System.Windows.Controls;

namespace loginpage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (CheckBox1.Checked== true)
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
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            try
            {
                
                string uid = TextBox1.Text;
                string pass = TextBox2.Text;
                con.Open();
                string qry = "select * from usernametable where username='" + uid + "' and password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    
                        Session["uid"] = uid;

                  
                    
                    Response.Redirect("Profile.aspx");
                        
                }
                else
                {
                    Label4.Text = "UserId & Password Is not correct Try again..!!";

                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void Checkbox(object sender, EventArgs e)
        {
           
        }
       
    }
    }
