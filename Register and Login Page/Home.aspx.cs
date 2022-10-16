using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace loginpage
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if(Session["uid"] != null)
            {
                Button4.Visible = true;
                Button1.Visible = false;
                Button2.Visible = false;
            }
        }
    }
}