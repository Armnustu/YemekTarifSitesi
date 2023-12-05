using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifSitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        Baglanti baglanti = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            string KategoriID = Request.QueryString["KategoriID"];
            SqlCommand cmd = new SqlCommand("Select * From Urunler where KategoriID=@kategoriID", baglanti.Sqlbaglanti());
            cmd.Parameters.AddWithValue("@kategoriID", KategoriID);
            cmd.ExecuteNonQuery();
            SqlDataReader rd = cmd.ExecuteReader();
            DataList1.DataSource = rd;
            DataList1.DataBind();
        }
    }
}