<%@ Page Title="" Language="C#" MasterPageFile="~/AdminUser.Master" AutoEventWireup="true" CodeBehind="YorumOnay.aspx.cs" Inherits="YemekTarifSitesi.YorumOnay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 125px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#999999" Width="100%">
        <table class="auto-style8">
            <tr>
                <td style="width: 55px"><strong>
                    <asp:Button ID="PanelAc" runat="server" Font-Size="Large" Height="59px" OnClick="PanelAc_Click" Style="font-weight: bold; font-size: medium;" Text="+" Width="57px" />
                </strong></td>
                <td style="width: 55px">
                    <asp:Button ID="PanelKapat" runat="server"  OnClick="PanelKapat_Click" Text="-" Width="57px" Style="font-size: large" Font-Bold="True" Font-Size="Large" Height="59px" />
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Yorum Onaylanan Listesi"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="PanelDataList" runat="server" BackColor="#999999" Width="100%" style="margin-top:1px">
        <asp:DataList ID="DtYorumList" runat="server">
            <ItemTemplate>
                <table class="auto-style8" style="width: 700px; float: right;">
                    <tr>
                        <td>

                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumID") %>'></asp:Label>

                        </td>
                        <td>

                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td>

                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("YorumMail") %>'></asp:Label>
                        </td>
                        <td>

                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumOnay") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label></td>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label></td>                        
                        <td>
                           <a href="YorumOnay.aspx?YorumID=<%# Eval("YorumID")%>">   <img alt="" class="auto-style9" src="icons/sil.png" style="width: 51px; height: 51px;" /></a>
                        </td>
                        <td>
                            <a href="YorumOnay.aspx?YorumID=<%# Eval("YorumID")%>">  <img alt="" class="auto-style10" src="icons/guncelle.png" style="width: 51px; height: 51px;" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <asp:Panel ID="Panel5" runat="server" BackColor="#999999" Width="100%" style="margin-top:1px">
        <table class="auto-style8">
            <tr>
                <td style="width: 55px"><strong>
                    <asp:Button ID="BtnYorumOnaylanmayanPanelAc" runat="server" Text="+" Font-Size="Large" Height="59px"  Style="font-weight: bold; font-size: medium;" Width="57px" OnClick="BtnYorumOnaylanmayanPanelAc_Click"   />
                </strong></td>
                <td style="width: 55px">
                    <asp:Button ID="BtnYorumOnaylanamayanPanelKapat" runat="server"  Text="-" Width="57px" Style="font-size: large" Font-Bold="True" Font-Size="Large" Height="59px" OnClick="BtnYorumOnaylanamayanPanelKapat_Click"   />
                </td>
                <td>
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Yorum Onaylanmayanların Listesi"></asp:Label>
                </td>
            </tr>
        </table>

    </asp:Panel>
    <asp:Panel ID="PanelOnaylanmayanYorumList" runat="server" BackColor="#999999" Width="100%" style="margin-top:1px">
        <asp:DataList ID="DtOnaylanmayanList" runat="server">
            <ItemTemplate>
                <table class="auto-style8" style="width: 700px; float: right;">
                    <tr>
                        <td>

                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumID") %>'></asp:Label>

                        </td>
                        <td>

                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td>

                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("YorumMail") %>'></asp:Label>
                        </td>
                        <td>

                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumOnay") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label></td>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label></td>                        
                        <td>
                           <a href="YorumOnay.aspx?YorumID=<%# Eval("YorumID")%>">   <img alt="" class="auto-style9" src="icons/sil.png" style="width: 51px; height: 51px;" /></a>
                        </td>
                        <td>
                            <a href="YorumOnay.aspx?YorumID=<%# Eval("YorumID")%>">  <img alt="" class="auto-style10" src="icons/guncelle.png" style="width: 51px; height: 51px;" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>

        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="PanelYorumDuzenle" runat="server" BackColor="#999999" Width="100%" style="margin-top:1px" >
        <table class="auto-style8">
            <tr>
                <td style="width: 55px"><strong>
                    <asp:Button ID="BtnTextDetailsAc" runat="server" Font-Size="Large" Height="59px" Text="+" Style="font-weight: bold; font-size: medium;" Width="57px" OnClick="BtnTextDetailsAc_Click"  />
                </strong></td>
                <td style="width: 55px">
                    <asp:Button ID="BtnTextDetailsKapat" runat="server" Font-Size="Large" Height="59px" Text="-" Width="57px" Style="font-size: large" OnClick="BtnTextDetailsKapat_Click"  />
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Yorum Düzenleme Formu"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="PanelYorumOnaylaSil" runat="server" BackColor="#999999" Width="100%" style="margin-top:1px">
        <table>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label8" runat="server" Text="Yorum Ad Soyad"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtYorumAdSoyad" runat="server" Width="375px"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label9" runat="server" Text="Yorumcu Maili :"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtMail" runat="server" TextMode="Email" Width="375px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label11" runat="server" Text="Yorum Tarihi :"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtYorumTarih" runat="server" Width="375px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label12" runat="server" Text="Yorum İçeriği :"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtYorumİçeriği" runat="server" Height="240px" TextMode="MultiLine" Width="493px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style11"><asp:Button ID="YorumOnayla" runat="server" Text="Yorum Onayla" OnClick="YorumOnayla_Click" />
                  
                </td>
                <td><asp:Button ID="Yorumsil" runat="server" Text="YorumSil" OnClick="Yorumsil_Click" Width="111px" /></td>
            </tr>

        </table>
    </asp:Panel>
</asp:Content>
