<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel/adminmaster.master" AutoEventWireup="true" CodeFile="AdminYonetimi.aspx.cs" Inherits="adminpanel_AdminYonetimi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="menuler">

        <ul>
            <li><a href="#">ANASAYFA</a></li>
            <li><a href="#">CV LİSTESİ</a></li>
            <li><a href="#">Üye LİSTESİ</a></li>
            <li><a href="#">İŞVEREN LİSTESİ</a></li>
            <li><a href="#">YÖNETİCİ LİSTESİ</a></li>
            <li><a href="#">S.S.S</a></li>
            <li><a href="#">İLANLAR</a></li>
            <li><a href="#">KULLANICI ARA</a></li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">Admin Yönetimi Sayfasına Hoşgeldiniz<br />
                Yandaki Menüden İşlemlerinizi Gerçekleştirebilirsiniz</td>
        </tr>
    </table>
</asp:Content>

