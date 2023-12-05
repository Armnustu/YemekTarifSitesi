<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciMasterPage.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifSitesi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:DataList ID="DtListMetin" runat="server">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Metin") %>' ForeColor="Black"></asp:Label>                          
             <asp:Image ID="Image2"  ImageUrl='<%# Bind("Resim", "~/images/{0}") %>' alt='<%# Eval("Resim") %>' runat="server" Width="100%" Height="500px" ImageAlign="Right" />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
