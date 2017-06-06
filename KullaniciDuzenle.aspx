<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel/AdminYonetimiMaster.master" AutoEventWireup="true" CodeFile="KullaniciDuzenle.aspx.cs" Inherits="KullaniciDuzenle" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=4.5.7.1213, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }

        .auto-style3 {
            width: 345px;
        }

        .auto-style5 {
            height: 30px;
        }

        .auto-style6 {
            width: 10px;
            height: 30px;
            text-align: left;
        }

        .auto-style12 {
            width: 345px;
        }

        .auto-style13 {
            width: 100%;
        }

        .auto-style14 {
            width: 30%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="left" class="auto-style1">
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="lblBilgi" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Kullanıcı Adı:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Şifre:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Şifre Tekrarı:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtSifre2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Ad Soyad:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtAdSoyad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Görevi:</td>
            <td class="auto-style12">
                <asp:DropDownList ID="ddlGorevi" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">E posta:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">İli:</td>
            <td class="auto-style12" rowspan="2">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <contenttemplate>
                         <table class="auto-style13">
                    <tr>
                        <td>
                <asp:DropDownList ID="ddlil" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlil_SelectedIndexChanged">
                </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:DropDownList ID="ddlilce" runat="server" AutoPostBack="True">
                </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </td>
            </ContentTemplate>
                </asp:UpdatePanel>
                
        </tr>
        <tr>
            <td class="auto-style5">İlçesi:</td>
        </tr>
        <tr>
            <td class="auto-style5">Telefon No:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtTelNo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Telefon No 2:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtTelNo2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Cinsiyet:</td>
            <td class="auto-style12">
                <asp:RadioButton ID="rdbErkek" runat="server" Checked="True" GroupName="Cinsiyet" Text="Erkek" />
                <asp:RadioButton ID="rdbBayan" runat="server" GroupName="Cinsiyet" Text="Bayan" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Doğum Tarihi:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtDogum" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td class="auto-style14">Adres:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtAdres" runat="server" Height="130px" TextMode="MultiLine" Width="304px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">Engelleme:</td>
            <td class="auto-style3">
                <asp:RadioButton ID="rdEvet" runat="server" GroupName="Engel" Text="Evet" />
                <asp:RadioButton ID="rdHayir" runat="server" GroupName="Engel" Text="Hayır" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="btnGnclle" runat="server" Text="Güncelle" OnClick="btnGnclle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>


