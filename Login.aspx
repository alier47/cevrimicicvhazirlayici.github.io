<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="adminpanel_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 23px;
        }
        .auto-style3 {
            width: 400px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
        }
        .auto-style6 {
            height: 23px;
            width: 133px;
        }
        #admin-giris {
    width: 500px;
    height: 300px;
    background:  #f5185e;
    position: relative;
    margin: auto;
    top: 150px;
    border-radius: 0 26px;
    box-shadow: 10px 20px 1px #1c3564;
    padding-top: 10px;
}
        

    </style>
</head>
<body style="background-image: url('image/bg_login.jpg')">
    <form id="form1" runat="server">
        <div id="admin-giris">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="font-family: arial, Helvetica, sans-serif; font-weight: bold; color: white">CevrimiciCvHazirlayici Yönetim Paneli </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="lblBilgi" runat="server" Font-Bold="True" ForeColor="Aqua"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table align="center" class="auto-style3">
                        <tr>
                            <td class="auto-style5" colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">Kullanıcı Adı :</td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Şifre : </td>
                            <td>
                                <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td>
                                <asp:Button ID="btnGiris" runat="server" Text="Giriş" OnClick="btnGiris_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
            </div>
    </form>
</body>
</html>
