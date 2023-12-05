using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.CompilerServices;
using System.IO;
using YemekTarifSitesi.CustomExceptions;

namespace YemekTarifSitesi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        Baglanti baglanti = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                Loading();
                Panel1.Visible = false;
                Panel3.Visible = false;  

            }
        }
        private void Loading()
        {
            SqlCommand cmd1 = new SqlCommand("Select * From Kategoriler", baglanti.Sqlbaglanti());
            SqlDataReader rd1 = cmd1.ExecuteReader();
            DrpKategoriList.DataSource = rd1;
            DrpKategoriList.DataTextField = "KategoriAdi";
            DrpKategoriList.DataValueField = "KategoriID";
            DrpKategoriList.DataBind();
            rd1.Close();
        }
     
        protected void btnEkle_Click(object sender, EventArgs e)
        {
          
            if (FileUpload1.HasFile)
            {
                // HasFile: Seçili dosya varmı kontrol eder.

                string uzanti = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                if (uzanti == ".png" || uzanti == ".jpg")
                {
                    //resmi kaydet
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("images/") + FileUpload1.FileName + uzanti);

                    SqlCommand cmd = new SqlCommand("insert into Urunler(UrunAdi,UrunMalzeme,UrunTarif,UrunPuan,UrunTarih,UrunResim,KategoriID) values(@UrunAdi,@UrunMalzeme,@UrunTarif,@UrunPuan,@UrunTarih,@UrunResim,@KategoriID) ", baglanti.Sqlbaglanti());
                    cmd.Parameters.AddWithValue("@UrunAdi", txtYemekAdi.Text);
                    cmd.Parameters.AddWithValue("@UrunMalzeme", txtYemekMazeme.Text);
                    cmd.Parameters.AddWithValue("@UrunTarif", txtYmekTarif.Text);
                    cmd.Parameters.AddWithValue("@UrunPuan", txtPuan.Text);
                    DateTime dt = calandarTarih.SelectedDate;
                    cmd.Parameters.AddWithValue("@UrunTarih", calandarTarih.SelectedDate);
                    cmd.Parameters.AddWithValue("@UrunResim", FileUpload1.FileName + uzanti);
                    string id = DrpKategoriList.SelectedValue;
                    cmd.Parameters.AddWithValue("@KategoriID", Convert.ToInt32(DrpKategoriList.SelectedValue));
                    int affect = cmd.ExecuteNonQuery();
                    if (affect > 0)
                    {
                        Loading();
                        Response.Write("<script>alert('Kayıt Başarılı Oldu');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('İşlem Başarısız Oldu');</script>");
                    }
                }                             
            }
        }
        protected void DrpKategoriList_SelectedIndexChanged(object sender, EventArgs e)
        {



        }      
        protected void PanelKapat_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
           
        }

        protected void PanelAc_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            SqlDataAdapter adapter = new SqlDataAdapter("Select * From Urunler", baglanti.Sqlbaglanti());
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void Panelac_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void PanelKapa_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }
    }
}