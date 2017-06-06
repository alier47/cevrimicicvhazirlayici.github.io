using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adminpanel_GrupYonetimi : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEkle_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = klas.baglan();
        SqlCommand cmd = new SqlCommand("Insert into KullaniciGrup (GrupAdi) values (@GrupAdi)",baglanti);
        cmd.Parameters.Add("GrupAdi", txtGrupAdi.Text);
        cmd.ExecuteNonQuery();
        Response.Redirect("GrupYonetimi.aspx");
    }
}