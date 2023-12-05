<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciMasterPage.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifSitesi.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>          
            <table class="auto-style1">
                <tr style="background-color:bisque">
                    <td>
                       <a href="UrunDetay.aspx?YemekID=<%#Eval("UrunID")%>"> <asp:Label ID="Label2" runat="server" Font-Bold="True" style="font-size: x-large" Text='<%# Eval("UrunAdi") %>'></asp:Label></a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="Label1" runat="server" Text="Malzemeler" style="font-size: large"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        <em>
                        <asp:Label ID="Label3" runat="server" CssClass="fs-16" Text='<%# Eval("UrunMalzeme") %>'></asp:Label>
                        </em>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="Label7" runat="server" Text="Label" style="font-size: large">Urun Tarifi</asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td style="height: 25px">
                        <em>
                        <asp:Label ID="Label4" runat="server" CssClass="fs-16" Text='<%# Eval("UrunTarif") %>'></asp:Label>
                        </em>
                    </td>
                </tr>
                 <tr>

                    <td>
                        <strong>
                        <asp:Label ID="Label8" runat="server" Text="Eklenme Tarihi" style="font-size: large"></asp:Label>
                        </strong>
                    &nbsp;
                        <em>
                        <asp:Label ID="Label5" runat="server" CssClass="fs-16" ForeColor="White" Text='<%# Eval("UrunTarih") %>'></asp:Label>
                        </em>
                    </td>
               </tr>
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="Label9" runat="server" Text="Puan" style="font-size: large"></asp:Label>
                        </strong>
                           &nbsp;
                        <em>
                        <asp:Label ID="Label6" runat="server" CssClass="fs-16" ForeColor="White" Text='<%# Eval("UrunPuan") %>'></asp:Label>
                        </em>&nbsp;
                        <strong>
                       <a href="UrunDetay.aspx?UrunID=<%#Eval("UrunID")%>"> <asp:Label ID="Label10" runat="server" Text="Label" style="float:right;color:black" ><i class="fa-solid fa-comment"></i>Yorumlar</asp:Label></a>
                        </strong>
                       </td>                   
                    
                     
                  <%--<td>
                       <a href="YemekDetay.aspx?YemekID=<%#Eval("YemekID")%>"> <asp:Button ID="Label10" runat="server" Font-Bold="True" style="font-size: x-large" Text="Yorumlar"></asp:Button></a>                      
                  </td>--%>                     
                </tr>                
            </table>             
             <a href="UrunDetay.aspx?YemekID=<%#Eval("UrunID")%>"> <asp:Image ID="Image1"  ImageUrl='<%# Bind("UrunResim", "~/images/{0}") %>' alt='<%#Eval("UrunResim") %>' runat="server" Width="595px" Height="230px" ImageAlign="Right" /></a>
            <strong>
           
            </strong>
            <br />            
        </ItemTemplate>
</asp:DataList>
</asp:Content>
