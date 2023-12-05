using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Deployment.Internal;

namespace YemekTarifSitesi
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        Baglanti baglanti = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

            //int id = Convert.ToInt32(Request.QueryString["YemekID"]);
            //SqlCommand cmd1 = new SqlCommand("Select * From Yemekler", baglanti.Sqlbaglanti());
            //SqlDataReader rd1 = cmd1.ExecuteReader();
            //DataList1.DataSource = rd1;
            //DataList1.DataBind();
         
       
            SqlDataAdapter adapter = new SqlDataAdapter("Select * From Kategoriler", baglanti.Sqlbaglanti());
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            DropKategoriList.DataSource = dt;
            DropKategoriList.DataTextField = "KategoriAdi";
            DropKategoriList.DataValueField = "KategoriID";
            DropKategoriList.DataBind();
            if (!Page.IsPostBack)
            {
                PanelTabloGuncelle.Visible = false;
                PanelTabloEkle.Visible = false;
                if (Request.QueryString["UrunID"] != null)
                {
                    PanelTabloGuncelle.Visible = true;
                    int id = Convert.ToInt32(Request.QueryString["UrunID"]);
                    SqlCommand cmd = new SqlCommand("Select * From Urunler where UrunID=@ıd", baglanti.Sqlbaglanti());
                    cmd.Parameters.AddWithValue("@ıd", id);
                    SqlDataReader rd = cmd.ExecuteReader();
                    while (rd.Read())
                    {

                        txtUrunAdi.Text = rd[1].ToString();
                        txtUrunMalzeme.Text = rd[2].ToString();
                        txtUrunTarif.Text = rd[3].ToString();
                        calandarTarih.SelectedDate = Convert.ToDateTime(rd[5].ToString());
                        txtPuan.Text = rd[6].ToString();
                        //fileUpload1.FileName = Convert.ToString(rd3[4].ToString());
                        DropKategoriList.Text = rd[7].ToString();

                    }
                }
                                
            }
           
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["UrunID"]);
            
            if (FileUpload1.HasFile)
            {             
                string uzanti = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                if (uzanti == ".png" || uzanti == ".jpg")
                {
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("images/") + FileUpload1.FileName);
                    SqlCommand cmd = new SqlCommand("Update Urunler set UrunAdi=@UrunAdi,UrunMalzeme=@UrunMalzeme,UrunTarif=@UrunTarif,UrunResim=@UrunResim,UrunPuan=@UrunPuan,KategoriID=@KategoriID where UrunID=@Id", baglanti.Sqlbaglanti());
                    cmd.Parameters.AddWithValue("@UrunAdi", txtUrunAdi.Text);
                    cmd.Parameters.AddWithValue("@UrunMalzeme", txtUrunMalzeme.Text);
                    cmd.Parameters.AddWithValue("@UrunTarif", txtUrunTarif.Text);
                    cmd.Parameters.AddWithValue("@UrunPuan", txtPuan.Text);
                    cmd.Parameters.AddWithValue("@UrunResim", FileUpload1.FileName);
                    cmd.Parameters.AddWithValue("@KategoriID", DropKategoriList.SelectedValue);
                    cmd.Parameters.AddWithValue("@Id", id);
                    int affect= cmd.ExecuteNonQuery();
                    if (affect>0)
                    {
                        Response.Write("<script>alert('Güncelleme Başarılı');</script>");
                    }
                    baglanti.Sqlbaglanti().Close();
                }
            }
        }
        protected void Sil_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["UrunID"]);
            SqlCommand cmd = new SqlCommand("Delete Urunler where UrunID=@Id", baglanti.Sqlbaglanti());
            cmd.Parameters.AddWithValue("@Id", id);
           int affect= cmd.ExecuteNonQuery();
            if (affect > 0)
            {
                Response.Write("<script>alert('Silme Başarılı');</script>");
            }
            baglanti.Sqlbaglanti().Close();
         
        }

        //protected void PaneLKAPAT_Click(object sender, EventArgs e)
        //{
        //   // Panel3.Visible = false;
        //}

        //protected void PanelAÇ_Click(object sender, EventArgs e)
        //{
        //   // Panel3.Visible = true;

        //}

        //protected void Panelac_Click(object sender, EventArgs e)
        //{
        //Panel1.Visible = true;
        //SqlDataAdapter adapter = new SqlDataAdapter("Select * From Urunler", baglanti.Sqlbaglanti());
        //DataTable dt = new DataTable();
        //adapter.Fill(dt);
        //DataList1.DataSource = dt;
        //DataList1.DataBind();

        //}

        //protected void PanelKapa_Click1(object sender, EventArgs e)
        //{
        //    Panel1.Visible = false;
        //}

        protected void PnlAc_Click(object sender, EventArgs e)
        {
            PanelTabloEkle.Visible = false;
        }

        protected void PanelTabloAc_Click(object sender, EventArgs e)
        {
            PanelTabloEkle.Visible = true;
        }

        protected void PanelAÇ_Click(object sender, EventArgs e)
        {
            PanelTabloGuncelle.Visible = true;
        }

        protected void PaneLKAPAT_Click(object sender, EventArgs e)
        {
            PanelTabloGuncelle.Visible = false;
        }

        protected void PanelKapatınız_Click(object sender, EventArgs e)
        {
            PanelDtListUrunler.Visible = false;
        }

        protected void PanelAcınız_Click(object sender, EventArgs e)
        {
            PanelDtListUrunler.Visible = true;
            SqlDataAdapter adapter = new SqlDataAdapter("Select * From Urunler", baglanti.Sqlbaglanti());
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            DtListUrunler.DataSource = dt;
            DtListUrunler.DataBind();
        }
    }
}