using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifSitesi
{
    public partial class Kategori : System.Web.UI.Page
    {
        Baglanti baglanti = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter adapter = new SqlDataAdapter("Select * From Kategoriler", baglanti.Sqlbaglanti());
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            DrpListKategori.DataSource = dt;
            DrpListKategori.DataTextField = "KategoriAdi";
            DrpListKategori.DataValueField = "KategoriID";
            DrpListKategori.DataBind();
            if (!Page.IsPostBack)
            {
                PanelDataList.Visible = false;
                PanelKategoriEkle.Visible = false;
                if (Request.QueryString["KategoriID"] != null)
                {
                    int id = Convert.ToInt32(Request.QueryString["KategoriID"]);
                    SqlCommand cmd = new SqlCommand("Delete From Kategoriler where KategoriID=@Id", baglanti.Sqlbaglanti());
                    cmd.Parameters.AddWithValue("@Id", id);
                    int affect=cmd.ExecuteNonQuery();
                    Response.Write("<scrpit>alert('Kategori Silindi');</script>");
                }
                SqlCommand cmd1 = new SqlCommand("Select * From Kategoriler", baglanti.Sqlbaglanti());
                SqlDataReader rd = cmd1.ExecuteReader();
                DrpListKategori.DataSource = rd;
                DrpListKategori.DataBind();
                rd.Close();
                baglanti.Sqlbaglanti().Close();
            }
           
        }
        protected void KategoriEkle_Click(object sender, EventArgs e)
        {
            if (FileUploadResim.HasFile||txtKategoriAdi.Text==null)
            {
                string uzanti = System.IO.Path.GetExtension(FileUploadResim.FileName).ToLower();
                if (uzanti == ".png" || uzanti == ".jpg")
                {
                    if (txtKategoriAdi.Text =="")
                    {
                        Response.Write("<script>alert('Kategori Adı Boş Geçilemez!');</script>");
                    }
                    else
                    {
                        FileUploadResim.PostedFile.SaveAs(Server.MapPath("images/") + FileUploadResim.FileName);
                        SqlCommand cmd = new SqlCommand("insert into Kategoriler(KategoriAdi,KategoriResim) values(@KategoriAdi,@KategoriResim) ", baglanti.Sqlbaglanti());
                        cmd.Parameters.AddWithValue("@KategoriAdi", txtKategoriAdi.Text);
                        cmd.Parameters.AddWithValue("@KategoriResim", FileUploadResim.FileName);
                        int affect = cmd.ExecuteNonQuery();
                        if (affect > 0)
                        {
                            Response.Write("<script>alert('Kategori eklendi');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Kategori eklenemedi');</script>");
                        }
                    }
                }
               
            }
            else
            {
                Response.Write("<script>alert('Resim formatı png yada jpg formatında olmalıdır');</script>");
            }
        }

        protected void BtnPanelAc_Click(object sender, EventArgs e)
        {
            PanelDataList.Visible = true;
            SqlCommand cmd = new SqlCommand("Select * From Kategoriler", baglanti.Sqlbaglanti());
            SqlDataReader rd = cmd.ExecuteReader();
            DtListKategori.DataSource = rd;
            DtListKategori.DataBind();
            rd.Close();
            baglanti.Sqlbaglanti().Close();
        }

        protected void BtnPanelKapat_Click(object sender, EventArgs e)
        {
            PanelDataList.Visible = false;
        }

        protected void BtnPnlAC_Click(object sender, EventArgs e)
        {
            PanelKategoriEkle.Visible = true;
        }

        protected void PnlKapat_Click(object sender, EventArgs e)
        {
            PanelKategoriEkle.Visible = false;
        }
    }
}