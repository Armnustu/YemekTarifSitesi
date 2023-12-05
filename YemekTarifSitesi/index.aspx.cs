using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifSitesi
{
    public partial class index : System.Web.UI.Page
    {
        Baglanti baglanti = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            
                SqlCommand cmd = new SqlCommand("Select * From Urunler", baglanti.Sqlbaglanti());
                SqlDataReader rd = cmd.ExecuteReader();
                DtListUrunler.DataSource = rd;
                DtListUrunler.DataBind();
                rd.Close();
                baglanti.Sqlbaglanti().Close();          
        }
    }
}
