using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifSitesi
{
    public partial class Giris : System.Web.UI.Page
    {
        Baglanti baglanti = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["KullaniciAdi"] != null && Request.Cookies["MailAdresi"] != null && Request.Cookies["Sifre"] != null && Request.Cookies["TekrarSifre"] != null)
                {
                    txtKullaniciAdi.Text = Request.Cookies["KullaniciAdi"].Value;
                    txtMail.Text = Request.Cookies["MailAdresi"].Value;
                    txtSifre.Attributes["value"] = Request.Cookies["Sifre"].Value;
                    txtTekrarSifre.Attributes["value"] = Request.Cookies["TekrarSifre"].Value;

                }
            }
        }

        protected void GirisYap_Click(object sender, EventArgs e)
        {
            Session["KullaniciAdi"] = txtKullaniciAdi.Text;
            SqlCommand cmd = new SqlCommand("Select * From Giris where KullaniciAdi=@KullaniciAdi and MailAdresi=@MailAdresi and Sifre=@Sifre and TekrarSifre=@TekrarSifre", baglanti.Sqlbaglanti());
            cmd.Parameters.AddWithValue("@KullaniciAdi", txtKullaniciAdi.Text);
            cmd.Parameters.AddWithValue("@MailAdresi", txtMail.Text);
            cmd.Parameters.AddWithValue("@Sifre", txtSifre.Text);
            cmd.Parameters.AddWithValue("@TekrarSifre", txtTekrarSifre.Text);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    if (Remember.Checked == true)
                    {
                        Response.Cookies["KullaniciAdi"].Value = txtKullaniciAdi.Text;
                        Response.Cookies["MailAdresi"].Value = txtMail.Text;
                        Response.Cookies["Sifre"].Value = txtSifre.Text;
                        Response.Cookies["TekrarSifre"].Value = txtTekrarSifre.Text;
                        Response.Cookies["KullaniciAdi"].Expires = DateTime.Now.AddMinutes(1);
                        Response.Cookies["MailAdresi"].Expires = DateTime.Now.AddMinutes(1);
                        Response.Cookies["Sifre"].Expires = DateTime.Now.AddMinutes(1);
                        Response.Cookies["TekrarSifre"].Expires = DateTime.Now.AddMinutes(1);
                        //  Response.Cookies["TekrarSifre"].Value = txtTekrarSifre.Text;
                    }
                    else
                    {

                        Response.Cookies["KullaniciAdi"].Expires = DateTime.Now.AddMinutes(-1);
                        Response.Cookies["MailAdresi"].Expires = DateTime.Now.AddMinutes(-1);
                        Response.Cookies["Sifre"].Expires = DateTime.Now.AddMinutes(-1);
                        Response.Cookies["TekrarSifre"].Expires = DateTime.Now.AddMinutes(-1);
                        //Response.Cookies["TekrarSifre"].Expires = DateTime.Now.AddMinutes(1);

                    }
                    Response.Redirect("Kategori.aspx");
                    // Session.RemoveAll();
                    GirisYap.Visible = true;
                }

            }
            else
            {
                LblMesaj.Text = "Giriş Yapınız";
            }
            rd.Close();
            baglanti.Sqlbaglanti().Close();
        }
    }
}