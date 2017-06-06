<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel/AdminYonetimiMaster.master" AutoEventWireup="true" CodeFile="KullaniciAra.aspx.cs" Inherits="adminpanel_KullaniciAra2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 22px;
        }

        .auto-style3 {
            width: 300px;
        }

        .auto-style4 {
            width: 116px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <table align="left" class="auto-style3">
                    <tr>
                        <td class="auto-style4">Kullanıcı Adı:</td>
                        <td>
                            <asp:TextBox ID="txtAra" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>
                            <asp:Button ID="btnAra" runat="server" Text="Ara" OnClick="btnAra_Click" />
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
    </table>
</asp:Content>

