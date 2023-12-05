using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifSitesi
{
    public partial class KategoriDuzenle : System.Web.UI.Page
    {
        Baglanti baglanti = new Baglanti();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KategoriID"];

            if (Page.IsPostBack == false)
            {


                SqlCommand cmd = new SqlCommand("Select * From Kategoriler where KategoriID=@Id", baglanti.Sqlbaglanti());
                cmd.Parameters.AddWithValue("@Id", id);
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {

                    txtKategoriAdi.Text = rd[1].ToString();
                    //FileUpload1.FileName = rd[3].ToString();
                }
                rd.Close();
                baglanti.Sqlbaglanti().Close();

            }

        }
        protected void Guncelle_Click(object sender, EventArgs e)
        {
            id = Request.QueryString["KategoriID"];

            if (FileUpload1.HasFile)
            {
                // HasFile: Seçili dosya varmı kontrol eder.

                string uzanti = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                if (uzanti == ".png" || uzanti == ".jpg")
                {
                    //resmi kaydet
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("images/") + FileUpload1.FileName + uzanti);
                    SqlCommand cmd = new SqlCommand("Update Kategoriler set KategoriAdi=@Kategoriadi,KategoriResim=@KategoriResim where KategoriID=@Id", baglanti.Sqlbaglanti());
                    cmd.Parameters.AddWithValue("@Id", id);
                    cmd.Parameters.AddWithValue("@Kategoriadi", txtKategoriAdi.Text);
                    cmd.Parameters.AddWithValue("@KategoriResim", FileUpload1.FileName + uzanti);
                    cmd.ExecuteNonQuery();
                    baglanti.Sqlbaglanti().Close();

                }
            }
        }
    }
}