using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Bismillah
{
    public partial class Haltambahdata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //ini untuk mencoba koneksi
            SqlConnection GasConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["TechnicaltestConnectionString"].ConnectionString);
            //buka db
            GasConnect.Open();
            String insert = "INSERT INTO m_dukcapil_data (NIK, name, maiden_name, birth_date, gender, religion_id, martial_status) VALUES (@NIK, @name, @maiden_name, @birth_date, @gender, @religion_id, @martial_status)";

            //menjalankan query masukkan ke sqlcommand yang parameternya sama kek qury biasa tapi dibalek antara konek dan insert
            SqlCommand inserquery = new SqlCommand(insert, GasConnect);

            inserquery.Parameters.AddWithValue("@NIK", TextNIK.Text);
            inserquery.Parameters.AddWithValue("@name", TextFName.Text);
            inserquery.Parameters.AddWithValue("@maiden_name", TextMname.Text);
            inserquery.Parameters.AddWithValue("@birth_date", Calendar2.SelectedDate);
            inserquery.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue.ToString());
            inserquery.Parameters.AddWithValue("@religion_id", DropDownList1.SelectedValue);
            inserquery.Parameters.AddWithValue("@martial_status", DropDownList2.SelectedValue);

            inserquery.ExecuteNonQuery();

            GasConnect.Close();

            Response.Redirect("Nomor1.aspx");
        }
    }
}