<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel/adminmaster.master" AutoEventWireup="true" CodeFile="GrupYonetimi.aspx.cs" Inherits="adminpanel_GrupYonetimi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }

        .auto-style5 {
            width: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <div id="menuler">

        <ul>
            <li><a href="#">ANASAYFA</a></li>
            <li><a href="#">KULLANICILAR</a></li>
            <li><a href="#">İŞ VERENLER</a></li>
            <li><a href="#">YÖNETİCİLER</a></li>

        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" style="font-weight: bold">Grup Adı :</td>
            <td>
                <asp:TextBox ID="txtGrupAdi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:Button ID="btnEkle" runat="server" OnClick="btnEkle_Click" Text="Ekle" />
            </td>
        </tr>
    </table>
</asp:Content>

