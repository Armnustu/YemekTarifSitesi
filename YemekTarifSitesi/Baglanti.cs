using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace YemekTarifSitesi
{
    public class Baglanti
    {
        public SqlConnection Sqlbaglanti()
        {
            string cs = WebConfigurationManager.ConnectionStrings["YemektarifiConnectionString"].ConnectionString;
            SqlConnection baglanti = new SqlConnection(cs);
            if (baglanti.State == ConnectionState.Closed)
                baglanti.Open();
            return baglanti;
        }
    }
}