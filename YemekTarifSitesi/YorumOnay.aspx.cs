using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifSitesi
{
    public partial class YorumOnay : System.Web.UI.Page
    {
        Baglanti baglanti = new Baglanti();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            id = Convert.ToInt32(Request.QueryString["YorumID"]);
            if (!Page.IsPostBack)//Sayfa eğer postback ise(yani butona tıklanılmışsa) buttonun değerini çalıştır sayfaloadını es geç demek.burda sayfa açıldığı andaki anı çalıştır burayı post back giremez ve butonun içindeki sonuç kabul edilir
            {
                SqlCommand cmd = new SqlCommand("Select * From Yorumlar where YorumID=@ID", baglanti.Sqlbaglanti());
                cmd.Parameters.AddWithValue("@ID", id);
                SqlDataReader rd = cmd.ExecuteReader();
                DtYorumList.DataBind();
                while (rd.Read())
                {
                    txtMail.Text = rd[2].ToString();
                    txtYorumAdSoyad.Text = rd[1].ToString();
                    txtYorumTarih.Text = rd[4].ToString();
                    txtYorumİçeriği.Text = rd[5].ToString();
                }
            }
            else
            {
                SqlCommand cmd = new SqlCommand("Select * From Yorumlar", baglanti.Sqlbaglanti());
                SqlDataReader rd = cmd.ExecuteReader();
                DtYorumList.DataBind();
            }
        }
        protected void BBntYorumAc_Click(object sender, EventArgs e)
        {
            PanelYorumOnaylaSil.Visible = true;
        }

        protected void BtnYorumKapat_Click(object sender, EventArgs e)
        {
           PanelYorumOnaylaSil.Visible = false;
        }

        protected void YorumOnayla_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["YorumID"]);
            SqlCommand cmd = new SqlCommand("Update Yorumlar set YorumAdSoyad=@YorumAdSoyad,YorumMail=@YorumMail,YorumTarih=@YorumTarih,Yorumicerik=@Yorumicerik,YorumOnay=@YorumOnay where YorumID=@ID", baglanti.Sqlbaglanti());
            cmd.Parameters.AddWithValue("@YorumAdSoyad", txtYorumAdSoyad.Text);
            cmd.Parameters.AddWithValue("@YorumMail", txtMail.Text);
            cmd.Parameters.AddWithValue("@YorumTarih", Convert.ToDateTime(txtYorumTarih.Text.ToString()));
            cmd.Parameters.AddWithValue("@Yorumicerik", txtYorumİçeriği.Text);
            cmd.Parameters.AddWithValue("@YorumOnay", true);
            cmd.Parameters.AddWithValue("@ID", id);
            int affect=cmd.ExecuteNonQuery();
            if (affect > 0)
            {
                Response.Write("<script>alert('Yorum onaylanmıştır');</script>");
            }
            else{
                Response.Write("<script>alert('Yorum onaylanmadı');</script>");
            }
            SqlCommand cmd2 = new SqlCommand("Select * From Yorumlar where YorumOnay=@YorumOnay", baglanti.Sqlbaglanti());
            cmd2.Parameters.AddWithValue("YorumOnay", true);
            SqlDataReader rd2 = cmd2.ExecuteReader();
            DtYorumList.DataSource = rd2;
            DtYorumList.DataBind();
            baglanti.Sqlbaglanti().Close();


        }

        protected void Yorumsil_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["YorumID"]);
            SqlCommand cmd = new SqlCommand("Delete Yorumlar where YorumID=@YorumID ", baglanti.Sqlbaglanti());
            cmd.Parameters.AddWithValue("@YorumID",id);                   
            int affect=cmd.ExecuteNonQuery();           
            if (affect > 0)
            {
               
                Response.Write("<script>alert('Yorum silindi');</script>");
             
      
            }
            else
            {
                Response.Write("<script>alert('Yorum Silinmedi');<script>");
            }
            baglanti.Sqlbaglanti().Close();
        }

        protected void PanelAc_Click(object sender, EventArgs e)
        {
            PanelDataList.Visible = true;
            SqlCommand cmd3 = new SqlCommand("Select * From Yorumlar where YorumOnay=@Yorumonay", baglanti.Sqlbaglanti());
            cmd3.Parameters.AddWithValue("@Yorumonay", true);
            SqlDataReader rd3 = cmd3.ExecuteReader();
            DtYorumList.DataSource = rd3;
            DtYorumList.DataSource = rd3;
            DtYorumList.DataBind();
        }

        protected void PanelKapat_Click(object sender, EventArgs e)
        {
            PanelDataList.Visible = false;

        }

        protected void BtnYorumOnaylanmayanPanelAc_Click(object sender, EventArgs e)
        {
            PanelOnaylanmayanYorumList.Visible= true;
            SqlCommand cmd3 = new SqlCommand("Select * From Yorumlar where YorumOnay=@Yorumonay", baglanti.Sqlbaglanti());
            cmd3.Parameters.AddWithValue("@Yorumonay", false);
            SqlDataReader rd3 = cmd3.ExecuteReader();
            DtOnaylanmayanList.DataSource = rd3;
            DtOnaylanmayanList.DataBind();
        }

        protected void BtnYorumOnaylanamayanPanelKapat_Click(object sender, EventArgs e)
        {
            PanelOnaylanmayanYorumList.Visible = false;
        }

        protected void BtnTextDetailsAc_Click(object sender, EventArgs e)
        {
            PanelYorumOnaylaSil.Visible = true;
        }

        protected void BtnTextDetailsKapat_Click(object sender, EventArgs e)
        {
            PanelYorumOnaylaSil.Visible = false;
        }
    }
}
