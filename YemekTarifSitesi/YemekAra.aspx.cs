using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifSitesi
{
    public partial class YemekAra : System.Web.UI.Page
    {
        Baglanti baglanti = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["result"] != null)
                {
                    string search = Request.QueryString["result"].ToString();
                    SqlCommand cmd = new SqlCommand(" SELECT * FROM Urunler WHERE UrunAdi LIKE '%' + @UrunAdi + '%'", baglanti.Sqlbaglanti());
                    cmd.Parameters.AddWithValue("@UrunAdi", search);
                    cmd.ExecuteNonQuery();
                    SqlDataReader rd = cmd.ExecuteReader();
                    DataList2.DataSource = rd;
                    DataList2.DataBind();
                    rd.Close();
                    baglanti.Sqlbaglanti().Close();
                }
            }

        }
    }
}