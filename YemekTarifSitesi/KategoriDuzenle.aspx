<%@ Page Title="" Language="C#" MasterPageFile="~/AdminUser.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="YemekTarifSitesi.KategoriDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style8">
        <tr>
            <td>Kategori Düzenle</td>
        </tr>
        <tr>          
            <td>
            <asp:Label ID="Label1" runat="server" Text="Kategori Adı :"></asp:Label> </td>
            <td>
                <asp:TextBox ID="txtKategoriAdi" runat="server"></asp:TextBox>
            </td>
            <td>
              </td>
        </tr>
        
        <tr>
            <td>
            <asp:Label ID="Label2" runat="server" Text="Kategori Resim"></asp:Label></td>
            
            <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
            
            <td></td>
        </tr>
        
        <tr><td> <asp:Button ID="Guncelle" runat="server" Text="Güncelle" OnClick="Guncelle_Click"/></td></tr>
    </table>
</asp:Content>
