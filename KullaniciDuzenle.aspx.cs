using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KullaniciDuzenle : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    string KullaniciId = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        KullaniciId = Request.QueryString["KullaniciId"];
        if (Page.IsPostBack == false)
        {
            DataRow drKullanici =
                klas.GetDataRow(
                    "SELECT dbo.Kullanici.*, dbo.iller.ilAdi, dbo.ilceler.ilceAdi, dbo.KullaniciGrup.GrupAdi FROM dbo.Kullanici INNER JOIN dbo.iller ON dbo.Kullanici.ilId = dbo.iller.ilId INNER JOIN dbo.ilceler ON dbo.Kullanici.ilceId = dbo.ilceler.ilceId INNER JOIN dbo.KullaniciGrup ON dbo.Kullanici.GrupId = dbo.KullaniciGrup.GrupId Where dbo.Kullanici.KullaniciId=" + KullaniciId);

            txtAdSoyad.Text = drKullanici["AdSoyad"].ToString();
            txtEmail.Text = drKullanici["Email"].ToString();
            txtAdres.Text = drKullanici["Adres"].ToString();
            txtKullaniciAdi.Text = drKullanici["KullaniciAdi"].ToString();
            txtSifre.Text = drKullanici["Sifre"].ToString();
            txtTelNo.Text = drKullanici["Tel"].ToString();
            txtTelNo2.Text = drKullanici["Tel2"].ToString();
            txtDogum.Text = drKullanici["Dogum"].ToString();
            il();
            ddlil.SelectedValue = drKullanici["ilId"].ToString();
            ilce();
            ddlilce.SelectedValue = drKullanici["ilceId"].ToString();
            Grup();
            ddlGorevi.SelectedValue = drKullanici["GrupId"].ToString();
            if (drKullanici["Cinsiyet"].ToString() == "Erkek")
            {
                rdbErkek.Checked = true;
            }
            else
                rdbBayan.Checked = true;
            if (drKullanici["Engel"].ToString() == "0")
                rdHayir.Checked = true;
            else
                rdEvet.Checked = true;
        }

    }

    void il()
    {
        DataTable dtiller = klas.GetDataTable("Select * from iller  order by [ilAdi]");
        ddlil.DataTextField = "ilAdi";
        ddlil.DataValueField = "ilId";
        ddlil.DataSource = dtiller;
        ddlil.DataBind();
    }
    void ilce()
    {
        DataRow drKullanici =
               klas.GetDataRow("SELECT dbo.Kullanici.*, dbo.iller.ilAdi, dbo.ilceler.ilceAdi, dbo.KullaniciGrup.GrupAdi FROM dbo.Kullanici INNER JOIN dbo.iller ON dbo.Kullanici.ilId = dbo.iller.ilId INNER JOIN dbo.ilceler ON dbo.Kullanici.ilceId = dbo.ilceler.ilceId INNER JOIN dbo.KullaniciGrup ON dbo.Kullanici.GrupId = dbo.KullaniciGrup.GrupId Where dbo.Kullanici.KullaniciId=" + KullaniciId);

        DataTable dtilceler = klas.GetDataTable("Select * from ilceler Where ilId=" + drKullanici["ilId"].ToString() + "order by [ilceAdi]");
        ddlilce.DataTextField = "ilceAdi";
        ddlilce.DataValueField = "ilceId";
        ddlilce.DataSource = dtilceler;
        ddlilce.DataBind();
    }
    void ilce2() /* DropdownListteki veriyi değiştirmek için*/
    {
        DataRow drKullanici =
               klas.GetDataRow("SELECT dbo.Kullanici.*, dbo.iller.ilAdi, dbo.ilceler.ilceAdi, dbo.KullaniciGrup.GrupAdi FROM dbo.Kullanici INNER JOIN dbo.iller ON dbo.Kullanici.ilId = dbo.iller.ilId INNER JOIN dbo.ilceler ON dbo.Kullanici.ilceId = dbo.ilceler.ilceId INNER JOIN dbo.KullaniciGrup ON dbo.Kullanici.GrupId = dbo.KullaniciGrup.GrupId Where dbo.Kullanici.KullaniciId=" + KullaniciId);

        DataTable dtilceler = klas.GetDataTable("Select * from ilceler Where ilId=" + ddlil.SelectedValue + "order by [ilceAdi]");
        ddlilce.DataTextField = "ilceAdi";
        ddlilce.DataValueField = "ilceId";
        ddlilce.DataSource = dtilceler;
        ddlilce.DataBind();
    }
    void Grup()
    {
        DataTable dtGrup = klas.GetDataTable("Select * from KullaniciGrup");
        ddlGorevi.DataTextField = "GrupAdi";
        ddlGorevi.DataValueField = "GrupId";
        ddlGorevi.DataSource = dtGrup;
        ddlGorevi.DataBind();
    }
    protected void btnGnclle_Click(object sender, EventArgs e)
    {
        string cinsiyet = "";
        string engel = "";
        if (rdbErkek.Checked)
            cinsiyet = "Erkek";
        else
            cinsiyet = "Bayan";
        if (rdHayir.Checked)
            engel = "0";
        else
            engel = "1";

        DataRow drKul = klas.GetDataRow("Select * from Kullanici Where KullaniciId=" + KullaniciId);
        DataRow drKullanici = klas.GetDataRow("Select * from Kullanici Where KullaniciAdi='" + txtKullaniciAdi.Text + "' and KullaniciAdi!='" + drKul["KullaniciAdi"].ToString() + "'");
        if (drKullanici == null)
        {
            DataRow drEmail = klas.GetDataRow("Select * from Kullanici Where Email='" + txtEmail.Text + "' and Email!='" +
                                drKul["Email"].ToString() + "'");
            if (drEmail == null)
            {
                SqlConnection baglanti = klas.baglan();
                SqlCommand cmd = new SqlCommand("Update Kullanici set GrupId = @GrupId, ilId=@ilId, ilceId=@ilceId, KullaniciAdi=@KullaniciAdi, Sifre=@Sifre , AdSoyad=@Adsoyad, Email=@Email, Adres=@Adres, Tel=@Tel, Tel2=@Tel2, Cinsiyet=@Cinsiyet, Dogum=@Dogum, Engel=@Engel Where KullaniciId=" +KullaniciId, baglanti);
                cmd.Parameters.Add("GrupId", ddlGorevi.SelectedValue);
                cmd.Parameters.Add("ilId", ddlil.SelectedValue);
                cmd.Parameters.Add("ilceId", ddlilce.SelectedValue);
                cmd.Parameters.Add("KullaniciAdi", txtKullaniciAdi.Text);
                cmd.Parameters.Add("Sifre", txtSifre.Text);
                cmd.Parameters.Add("AdSoyad", txtAdSoyad.Text);
                cmd.Parameters.Add("Email", txtEmail.Text);
                cmd.Parameters.Add("Adres", txtAdres.Text);
                cmd.Parameters.Add("Tel", txtTelNo.Text);
                cmd.Parameters.Add("Tel2", txtTelNo2.Text);
                cmd.Parameters.Add("Cinsiyet", cinsiyet);
                cmd.Parameters.Add("Dogum", txtDogum.Text);
                cmd.Parameters.Add("Engel", engel);
                Response.Redirect("YoneticiListesi.aspx");
            }
            else
                lblBilgi.Text = "Bu E-posta adresi kullanılmaktadır. Lütfen başka E-posta adresi giriniz.";
        }
        else
            lblBilgi.Text = "Bu isimde kullanıcı bulunmaktadır. Farklı bir kullanıcı adı deneyiniz";
    }
    protected void ddlil_SelectedIndexChanged(object sender, EventArgs e)
    {
        ilce2();
    }
}