using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifSitesi
{
    public partial class KullaniciMasterPage : System.Web.UI.MasterPage
    {
        Baglanti baglanti = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select * From Kategoriler", baglanti.Sqlbaglanti());
                SqlDataReader rd = cmd.ExecuteReader();
                DataList1.DataSource = rd;
                DataList1.DataBind();
                rd.Close();
                baglanti.Sqlbaglanti().Close();
                Loading();
            }
     

            if (Session["KullaniciAdi"] == null)
            {
                Label2.Text = "";

                AdminCikis2.Visible = false;

            }
            else
            {

                Label2.Text = "Hoş geldiniz " + Session["KullaniciAdi"].ToString();

                AdminCikis2.Visible = true;


            }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    FormsAuthentication.SignOut();

        //    //Session Silme 
        //    //Session.Abandon();
        //    Session.RemoveAll();
        //    Response.Redirect("giris.aspx");
        //}



        //protected void Button3_Click(object sender, EventArgs e)
        //{
        //    FormsAuthentication.SignOut();
        //}

        protected void AdminCikis_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();

            //Session Silme 
            //Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("Giris.aspx");

        }

        protected void TxtYemekAra(object sender, EventArgs e)
        {
            string result = "~/YemekAra.aspx?result=" + txtYemekAra.Text;
            Response.Redirect(result);

        }



        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            string result = "~/YemekAra.aspx?result=" + txtYemekAra.Text;
            Response.Redirect(result);
        }

        protected void lnkDetail_Click(object sender, EventArgs e)
        {

        }
        private void Loading()
        {
            Baglanti baglanti = new Baglanti();
            SqlConnection cn = baglanti.Sqlbaglanti();
            try
            {
                List<Urunler> lst = new List<Urunler>();
                SqlCommand cmd = new SqlCommand("Select * from Urunler", cn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        lst.Add(new Urunler
                        {
                            KategoriID = Convert.ToInt32(dr["KategoriID"]),
                            UrunID = Convert.ToInt32(dr["UrunID"]),
                            UrunAdi = dr["UrunAdi"].ToString(),
                            UrunMalzeme = dr["UrunMalzeme"].ToString(),
                            UrunResim = dr["UrunResim"].ToString(),
                            UrunTarif = dr["UrunTarif"].ToString(),
                            UrunPuan = Convert.ToInt16(dr["UrunPuan"]),
                            UrunTarih = Convert.ToDateTime(dr["UrunTarih"])
                        });
                    }
                }
                dr.Close();
                rptList.DataSource = lst;
                rptList.DataBind();
            }
            catch (Exception error)
            {
                Response.Write($"<script>alert('{error.Message}')</script>");
            }
            finally
            {
                if (cn.State == System.Data.ConnectionState.Open)
                    cn.Close();
                baglanti= null;
            }
        }

        protected void lnkProductDetail1_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Detail")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect($"~/UrunDetay.aspx?id={id}");
            }
        }
    }
    class Urunler
    {
        public int UrunID { get; set; }
        public string UrunAdi { get; set; }
        public string UrunMalzeme { get; set; }
        public string UrunTarif { get; set; }
        public DateTime UrunTarih { get; set; }
        public string UrunResim { get; set; }
        public short UrunPuan { get; set; }
        public int KategoriID { get; set; }
    }
}