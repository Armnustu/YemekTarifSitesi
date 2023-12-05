using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifSitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {

        Baglanti baglanti = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            string UrunID = Request.QueryString["UrunID"];
            SqlCommand cmd = new SqlCommand("Select * From Urunler where UrunID=@UrunID", baglanti.Sqlbaglanti());
            cmd.Parameters.AddWithValue("@UrunID", UrunID);
            cmd.ExecuteNonQuery();
            SqlDataReader rd = cmd.ExecuteReader();
            DataList1.DataSource = rd;
            DataList1.DataBind();
            bool durum = true;
            SqlCommand cmd1 = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YorumTarih From Yorumlar where UrunID=@UrunID and YorumOnay=@YorumOnay ", baglanti.Sqlbaglanti());
            cmd1.Parameters.AddWithValue("@UrunID", UrunID);
            cmd1.Parameters.AddWithValue("@YorumOnay", durum);
            cmd1.ExecuteNonQuery();
            SqlDataReader rd1 = cmd1.ExecuteReader();
            DataList2.DataSource = rd1;
            DataList2.DataBind();
            baglanti.Sqlbaglanti().Close();
        }

        protected void BtnYorumGonder_Click(object sender, EventArgs e)
        {
            DateTime Tarih;
            Tarih = DateTime.Now.Date;
            string UrunID = Request.QueryString["UrunID"];
            SqlCommand cmd = new SqlCommand("insert into Yorumlar(YorumAdSoyad,YorumMail,YorumTarih,Yorumicerik,UrunID,YorumOnay) values(@YorumAdSoyad,@YorumMail,@YorumTarih,@Yorumicerik,@UrunID,@YorumOnay)", baglanti.Sqlbaglanti());
            cmd.Parameters.AddWithValue("@YorumAdSoyad", TxtadYorumcuAdi.Text);
            cmd.Parameters.AddWithValue("@YorumMail", TxtMail.Text);
            cmd.Parameters.AddWithValue("@YorumTarih", Tarih);
            cmd.Parameters.AddWithValue("@Yorumicerik", Txtİcerik.Text);
            cmd.Parameters.AddWithValue("@UrunID", UrunID);
            cmd.Parameters.AddWithValue("@YorumOnay", false);
            cmd.ExecuteNonQuery();
            int affect = cmd.ExecuteNonQuery();
            if (affect > 0)
            {
                Lblmesajsonuc.Text = "Yorumunuz gönderilmiştir";
            }
            else
            {
                Lblmesajsonuc.Text = "Yorumunuz gönderilmemiştir";
            }
            baglanti.Sqlbaglanti().Close();
        }
    }
}