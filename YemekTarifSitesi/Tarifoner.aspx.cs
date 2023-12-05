using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifSitesi
{
    public partial class Tarifoner : System.Web.UI.Page
    {
        Baglanti baglanti = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TrfOner_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
               
                string uzanti = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                if (uzanti == ".png" || uzanti == ".jpg")
                {                  
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("images/") + FileUpload1.FileName);
                    SqlCommand cmd = new SqlCommand("Insert into Tarif(TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) Values(@TarifAd,@TarifMalzeme,@TarifYapilis,@TarifResim,@TarifSahip,@TarifSahipMail)", baglanti.Sqlbaglanti());
                    cmd.Parameters.AddWithValue("@TarifAd", txttarifad.Text);
                    cmd.Parameters.AddWithValue("@TarifMalzeme", txtmalzeme.Text);
                    cmd.Parameters.AddWithValue("@TarifYapilis", txtyapilis.Text);
                    cmd.Parameters.AddWithValue("@TarifResim", FileUpload1.FileName);
                    cmd.Parameters.AddWithValue("@TarifSahip", txttarifoneren.Text);
                    cmd.Parameters.AddWithValue("@TarifSahipMail", txtmail.Text);
                    cmd.ExecuteNonQuery();
                    baglanti.Sqlbaglanti().Close();
                   // Response.Write("Tarifiniz Gönderilmiştir");
                    LblMesaj.Text = "Tarifiniz Gönderilmiştir";

                }
                else
                {
                    LblHatamesajı.Text = "Resim formatı yanlış .jpg veya .png olmalıdır.";
                }
            }
            else
            {
                LblHatamesajı.Text = "Ürün resmi seçmediniz.";
            }



        }
    }
}