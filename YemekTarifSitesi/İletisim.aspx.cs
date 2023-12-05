using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifSitesi
{
    public partial class İletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Baglanti baglanti = new Baglanti();

        protected void BtnMesaj_Gonder_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into İletisim(KullaniciAdi,KullaniciMail,TelefonNumarasi,Mesajicerigi) values(@KullaniciAdi,@KullaniciMail,@TelefonNumarasi,@Mesajicerigi)", baglanti.Sqlbaglanti());
            cmd.Parameters.AddWithValue("@KullaniciAdi",txtKullaniciAdi.Text);
            cmd.Parameters.AddWithValue("@KullaniciMail", txtMail.Text);
            cmd.Parameters.AddWithValue("@TelefonNumarasi", txtTelefon.Text);
            cmd.Parameters.AddWithValue("@Mesajicerigi", txtMesajicerigi.Text);
            int affect = cmd.ExecuteNonQuery();
            if (affect > 0)
            {
                LblMesaj.Text = "Mesajınız İletilmiştir";
            }
            else
            {
                LblMesaj.Text = "Mesajınız İletilmemiştir";
            }
            baglanti.Sqlbaglanti().Close();
        }
    }
}