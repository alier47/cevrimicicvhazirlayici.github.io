<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel/AdminYonetimiMaster.master" AutoEventWireup="true" CodeFile="YoneticiListesi.aspx.cs" Inherits="adminpanel_YoneticiListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 300px;
        }

        .auto-style3 {
            width: 139px;
        }

        .auto-style4 {
            width: 96px;
        }

        .auto-style5 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <table align="left" class="auto-style2">
                    <tr>
                        <td class="auto-style3">Aranacak Kelime :</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtAra" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">
                            <asp:Button ID="btnAra" runat="server" OnClick="btnAra_Click" Text="Ara" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="lblAra" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="dlAra" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="100%">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        <table class="auto-style1" style="font-size: 12px">
                            <tr>
                                <td style="width: 20%">Kullanıcı Adı</td>
                                <td style="width: 20%">Adı Soyadı</td>
                                <td style="width: 20%">E posta</td>
                                <td style="width: 20%">Tel No</td>
                                <td style="width: 10%">Düzenle</td>
                                <td style="width: 10%">Sil</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemStyle BackColor="#F7F7DE" />
                    <ItemTemplate>
                        <table class="auto-style1" style="font-size: 12px">
                            <tr>
                                <td style="width: 20%"><%#Eval("KullaniciAdi") %></td>
                                <td style="width: 20%"><%#Eval("AdSoyad") %></td>
                                <td style="width: 20%"><%#Eval("Email") %></td>
                                <td style="width: 20%"><%#Eval("Tel") %></td>
                                <td style="width: 10%">
                                    <a href="KullaniciDuzenle2?KullaniciId=<%#Eval("KullaniciId") %>">
                                        <img border="0" height="30" src="image/duzenle9.png" /></a></td>
                                <td style="width: 10%;">
                                    <a href="YoneticiListesi.aspx?KullaniciId=<%#Eval("KullaniciId") %>&islem=sil">
                                        <img border="0" height="30" src="image/sil10.png" /></a></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td style="background-color: #00CC99; height: 2px;"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="dlKullanici" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="100%" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="Olive" Font-Bold="True" ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                    <HeaderTemplate>
                        <table class="auto-style1" style="font-size: 12px">
                            <tr>
                                <td style="width: 20%">Kullanıcı Adı</td>
                                <td style="width: 20%">Adı Soyadı</td>
                                <td style="width: 20%">E posta</td>
                                <td style="width: 20%">Tel No</td>
                                <td style="width: 10%">Düzenle</td>
                                <td style="width: 10%">Sil</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemStyle BackColor="#F7F7DE" />
                    <ItemTemplate>
                        <table class="auto-style1" style="font-size: 12px">
                            <tr>
                                <td style="width: 20%"><%#Eval("KullaniciAdi") %></td>
                                <td style="width: 20%"><%#Eval("AdSoyad") %></td>
                                <td style="width: 20%"><%#Eval("Email") %></td>
                                <td style="width: 20%"><%#Eval("Tel") %></td>
                                <td style="width: 10%">
                                    <a href="KullaniciDuzenle2.aspx?KullaniciId=<%#Eval("KullaniciId") %>">
                                        <img border="0" height="30" src="image/duzenle9.png" /></a></td>
                                <td style="width: 10%;">
                                    <a href="YoneticiListesi.aspx?KullaniciId=<%#Eval("KullaniciId") %>&islem=sil">
                                        <img border="0" height="30" src="image/sil10.png" /></a></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

