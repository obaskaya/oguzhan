using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;

namespace Currency
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       
           
        

        protected void Page_Load(object sender, EventArgs e)
            {
                

                List<string> ddlitems = new List<string>() { "USD", "GBP", "EURO" };
               


                if (!Page.IsPostBack)
                {
                     Label1.Visible = false;
                     Label3.Visible = false;
                     Label4.Visible = false;
                     Label5.Visible = false;

                    donusturulentoplammiktar = 0;

                    //ilk defa çalıştığında yapılacaklar
                    //ddlDovizTuru.Items.Add(new ListItem("GBP", "3"));
                    ddlDovizTuru.Items.Clear();
                    ddlDovizTuru.DataSource = ddlitems; //text ve value 2 özellik..  text="usd" value="usd"
                    ddlDovizTuru.DataBind();
                }
                else
                {
                    hesap();
                    //post back olduğunda yapılacaklar.

                }

            }

            void hesap()
            {
                if (ViewState["donusturulenmiktar"] != null && ViewState["donusturulenmiktar"] != "")
                {
                    donusturulentoplammiktar = float.Parse(ViewState["donusturulenmiktar"].ToString());
                    
                }
            }

            protected void Button1_Click(object sender, EventArgs e)
            {
                
                dovizguncelle();
                 Label1.Visible = true;
                 Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
                 Label4.Text= ddlDovizTuru.SelectedItem.Text;
        }

        public double donusturulentoplammiktar;
       async void dovizguncelle()
        {
            var newclint = new HttpClient();

            string veri = await newclint.GetStringAsync("https://api.genelpara.com/embed/para-birimleri.json");


            dynamic kurlar = JValue.Parse(veri);


            string ddldegeri = ddlDovizTuru.SelectedItem.Text;
           
                double tlmiktar = double.Parse(TextBox1.Text);
                double sonuc = 0;
                double usdkur = Convert.ToDouble(kurlar.USD.satis);
                double eurokur = Convert.ToDouble(kurlar.EUR.satis);
                double gbpkur = Convert.ToDouble(kurlar.GBP.satis);
           

            switch (ddldegeri)
            {

                case "USD":

                    sonuc = tlmiktar / usdkur;
                    break;

                case "EURO":

                    sonuc = tlmiktar / eurokur;
                    break;

                case "GBP":
                    
                    sonuc = tlmiktar / gbpkur;
                    break;

                default:
                    sonuc = -1;
                    break;
            }
            Label1.Text = sonuc.ToString();
            Label5.Text = TextBox1.Text; 
            Label3.Text = donusturulentoplammiktar.ToString();
            donusturulentoplammiktar += sonuc;

            ViewState["donusturulenmiktar"] = donusturulentoplammiktar;



        }

        protected void ddlDovizTuru_SelectedIndexChanged(object sender, EventArgs e)
        {
            dovizguncelle();
        }
        async void kurcek()
        {


            var newclint = new HttpClient();

            string veri = await newclint.GetStringAsync("https://api.genelpara.com/embed/para-birimleri.json");


            dynamic kurlar = JValue.Parse(veri);

            ListBox1.Items.Add("dolar "+Convert.ToString(kurlar.USD.satis));
            ListBox1.Items.Add("euro "+Convert.ToString(kurlar.EUR.satis));
            ListBox1.Items.Add("gbp "+Convert.ToString(kurlar.GBP.satis));
            

        }

        protected async void Button2_Click(object sender, EventArgs e)
        {
            kurcek();
        }
        
    }
}
