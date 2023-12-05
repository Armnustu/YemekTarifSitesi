using System;
using System.Data.SqlClient;

namespace YemekTarifSitesi
{
    public partial class UyeKaydet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            Baglanti baglanti = new Baglanti();
            SqlConnection cn = baglanti.Sqlbaglanti();
            try
            {
                SqlCommand cmd = new SqlCommand("insert into UyeKayit(İsim,Soyisim,Mail,TelefonNumarasi,Cinsiyet) values(@İsim,@Soyisim,@Mail,@TelefonNumarasi,@Cinsiyet)", cn);
                cmd.Parameters.AddWithValue("@İsim", txtisim.Value);
                cmd.Parameters.AddWithValue("@Soyisim", txtsoyisim.Value);
                cmd.Parameters.AddWithValue("@Mail", txtmail.Value);
                cmd.Parameters.AddWithValue("@TelefonNumarasi", txtTelefonNumarasi.Value);
                cmd.Parameters.AddWithValue("@Cinsiyet", rdMan.Checked == rdMan.Checked == true ? "Erkek" : "Bayan");
                int affect = cmd.ExecuteNonQuery();
                if (affect > 0)
                {
                    LblMesaj.Text = "Üye kayıdınız yapıldı";
                }
                else
                {
                    LblMesaj.Text = "Üye Kaydınız Yapılamadı";
                }
            }
            catch (Exception error)
            {
                Response.Write($"<script>alert('{error.Message}')</script>");
            }
            finally
            {
                if (cn.State == System.Data.ConnectionState.Open)
                    cn.Close();
                baglanti = null;
            }
        }
    }
}