﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminpanel_YoneticiListesi : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    private string aranacak = "";
    private string islem = "";
    private string KullaniciId = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            aranacak = Request.QueryString["aranacak"];
            islem = Request.QueryString["islem"];
            KullaniciId = Request.QueryString["KullaniciId"];
        }
        catch (Exception)
        {}
        if (islem == "sil")
        {
            klas.cmd("Delete from Kullanici Where KullaniciId=" + KullaniciId);
            Response.Redirect("YoneticiListesi.aspx");
        }
        if (aranacak != null)
        {
            DataTable dtAra = klas.GetDataTable("SELECT dbo.Kullanici.*, dbo.KullaniciGrup.GrupAdi FROM dbo.Kullanici INNER JOIN dbo.KullaniciGrup ON dbo.Kullanici.GrupId = dbo.KullaniciGrup.GrupId Where AdSoyad like '%" + aranacak + "%' or KullaniciAdi like '%" + aranacak + "%' or Email like '%" + aranacak + "%'");
            dlAra.DataSource = dtAra;
            dlAra.DataBind();
            if (dtAra.Rows.Count > 0)
            {
                lblAra.Text = dtAra.Rows.Count.ToString() + " Adet Kullanıcı Bulunmuştur.";
                dlAra.Visible = true;
            }
            else { 
                lblAra.Text = "Aradığınız kriterlerde bir kullanıcı Bulunamadı.";
                dlAra.Visible = false;
            }
            }



        DataRow drKullanici = klas.GetDataRow("Select GrupId from KullaniciGrup Where GrupAdi='" + "Yönetici" + "'");
        DataTable dtKullanici =klas.GetDataTable("SELECT dbo.Kullanici.*, dbo.KullaniciGrup.GrupAdi FROM dbo.Kullanici INNER JOIN dbo.KullaniciGrup ON dbo.Kullanici.GrupId = dbo.KullaniciGrup.GrupId Where dbo.Kullanici.GrupId="+drKullanici["GrupId"].ToString());
        dlKullanici.DataSource = dtKullanici;
        dlKullanici.DataBind();
        if (dtKullanici.Rows.Count == 0)
            dlKullanici.Visible = false;
        else
            dlKullanici.Visible = true;
    }

    protected void btnAra_Click(object sender, EventArgs e)
    {
        Response.Redirect("YoneticiListesi.aspx?aranacak="+Seo.Temizle(txtAra.Text));
    }
}