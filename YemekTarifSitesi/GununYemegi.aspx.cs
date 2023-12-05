using System;
using System.Data.SqlClient;

namespace YemekTarifSitesi
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        Baglanti baglanti = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = 1;
            SqlCommand cmd = new SqlCommand("Select * From GununYemekleri where GununYemegiID=@UrunID", baglanti.Sqlbaglanti());
            cmd.Parameters.AddWithValue("@UrunID", id);
            SqlDataReader rd = cmd.ExecuteReader();
            DataListGununYemegi.DataSource = rd;
            DataListGununYemegi.DataBind();
            bool durum = true;
            SqlCommand cmd1 = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YorumTarih From Yorumlar where UrunID=@UrunID and YorumOnay=@YorumOnay ", baglanti.Sqlbaglanti());
            cmd1.Parameters.AddWithValue("@UrunID", id);
            cmd1.Parameters.AddWithValue("@YorumOnay", durum);
            cmd1.ExecuteNonQuery();
            SqlDataReader rd1 = cmd1.ExecuteReader();
            DataList1.DataSource = rd1;
            DataList1.DataBind();
        }
        protected void BtnYorum_Click(object sender, EventArgs e)
        {
            DateTime Tarih;
            Tarih = DateTime.Now.Date;
            int urunId = 0;
            if (Request.QueryString["UrunID"] != null)
            {
                urunId = Convert.ToInt32(Request.QueryString["UrunID"]);
            }
            SqlCommand cmd = new SqlCommand("insert into Yorumlar(YorumAdSoyad,YorumMail,YorumTarih,Yorumicerik,UrunID,GununyemegiID,YorumOnay) values(@YorumAdSoyad,@YorumMail,@YorumTarih,@Yorumicerik,@UrunID,@GununyemegiID,@YorumOnay)", baglanti.Sqlbaglanti());
            cmd.Parameters.AddWithValue("@YorumAdSoyad", TxtadYorumcuAdi.Text);
            cmd.Parameters.AddWithValue("@YorumMail", Txtmail.Text);
            cmd.Parameters.AddWithValue("@YorumTarih", Tarih);
            cmd.Parameters.AddWithValue("@Yorumicerik", Txtİcerik.Text);
            cmd.Parameters.AddWithValue("@UrunID", urunId);
            cmd.Parameters.AddWithValue("@YorumOnay", false);
            int affect = cmd.ExecuteNonQuery();
            if (affect > 0)
            {

                Response.Write("<script>alert('Yorumunuz gönderilmiştir');</script>");
            }
            baglanti.Sqlbaglanti().Close();
        }
    }
}