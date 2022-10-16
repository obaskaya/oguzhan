using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Controls;
using static System.Net.Mime.MediaTypeNames;
using System.Windows.Documents;
using System.Data;
using System.Drawing;

namespace loginpage
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack && Session["uid"] != null)
            {
                Button1.Visible = false;
                Button2.Visible = false;

                string uidname= Session["uid"].ToString(); 
              

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                con.Open();
               
                string qry = "select * from usernametable where username='" + uidname + "'";

                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Label2.Text = sdr.GetString(2);
                    Label4.Text = sdr.GetString(3);
                    Label6.Text = sdr.GetInt32(4).ToString();
                    Label8.Text = sdr.GetDateTime(6).ToString();
                  

                }









            }
        }

        
    }
}