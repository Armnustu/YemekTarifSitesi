<%@ Page Title="" Language="C#" MasterPageFile="~/AdminUser.Master" AutoEventWireup="true" CodeBehind="Kategori.aspx.cs" Inherits="YemekTarifSitesi.Kategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel" runat="server" BackColor="#999999" Width="100%" >
        <table class="auto-style8">
            <tr>
                <td style="width: 55px"><strong>
                    <asp:Button ID="BtnPanelAc" runat="server" Font-Size="Large" Height="59px"  style="font-weight: bold; font-size: medium;" Text="+" Width="57px" OnClick="BtnPanelAc_Click" />
                    </strong></td>
                <td style="width: 55px">
                    <asp:Button ID="BtnPanelKapat" runat="server" Font-Bold="True" Font-Size="Large" Height="59px"  Text="-" Width="57px" style="font-size: large" OnClick="BtnPanelKapat_Click" />
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Kategori Listesi"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="PanelDataList" runat="server"  BackColor="#999999" Width="100%">      
    <asp:DataList ID="DtListKategori" runat="server">
        <ItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td style="width: 10px">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriID") %>'></asp:Label>
                    </td>
                    <td style="width: 160px"> <asp:Label ID="Label2" runat="server" Text='<%# Eval("KategoriAdi") %>'></asp:Label></td>
                   
                  <%--  <td style="width: 80px" > <asp:Image ID="Image1"  ImageUrl='<%# Bind("KategoriResim", "~/images/{0}") %>' alt='<%#Eval("KategoriResim") %>' runat="server" Width="51px" Height="51px" ImageAlign="Right" /></td>--%>

                    <td style="width: 51px">
                       <image src='/images/<%# Eval("KategoriResim") %>' width="150" height="150" />
                    
                    </td>
                 
                    <td>
                        <img alt="" src="icons/ekle.png" style="width: 51px; height: 51px" />
                    </td>
                    <td>
                        <a href="KategoriDuzenle.aspx?KategoriID=<%# Eval("KategoriID")%>">
                      <img alt="" src="icons/guncelle.png" style="width: 51px; height: 51px" /></a>
                    </td>
                    <td>
                          <a href="Kategori.aspx?KategoriID=<%# Eval("KategoriID")%>&Islem=Delete">
                        <img alt="" src="icons/sil.png" style="width: 51px; height: 51px" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" BackColor="#999999" Width="100%" style="margin-top:1px">
        <table class="auto-style8">
            <tr>
                <td style="width: 55px">
                    <asp:Button ID="BtnPnlAC" runat="server" Text="+" Height="59px" Width="57px" Font-Bold="True" style="font-size: medium" OnClick="BtnPnlAC_Click" />
                </td>
                <td style="width: 55px">
                    <asp:Button ID="PnlKapat" runat="server" Text="-" Height="59px" Width="57px" Font-Bold="True" style="font-size: large" OnClick="PnlKapat_Click" />
                </td>
                <td>
                    <strong>
                    <asp:Label ID="Label9" runat="server" Text="Kategori  Ekle"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
    </asp:Panel> 
    <asp:Panel ID="PanelKategoriEkle" runat="server" BackColor="#999999" Width="100%" style="margin-top:1px">
        <table class="auto-style8">            
            <tr>
                
                <td style="width: 104px"><asp:Label ID="Label6" runat="server" Text="Kategori Adı :"></asp:Label></td><td style="width: 137px"><asp:TextBox ID="txtKategoriAdi" runat="server" Width="240px"></asp:TextBox></td><td>
                <asp:DropDownList ID="DrpListKategori" runat="server">
                </asp:DropDownList>
                </td>
            </tr>
             <tr>               
            <td style="width: 104px"><asp:Label ID="Label8" runat="server" Text="Kategori ikon"></asp:Label> </td><td style="width: 137px"> 
                 <asp:FileUpload ID="FileUploadResim" runat="server" Width="240px" />
                 </td><td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td><asp:Button ID="KategoriEkle" runat="server" Text="Ekle" Width="183px" OnClick="KategoriEkle_Click" /></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
