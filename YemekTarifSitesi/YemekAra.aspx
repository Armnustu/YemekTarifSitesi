<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciMasterPage.Master" AutoEventWireup="true" CodeBehind="YemekAra.aspx.cs" Inherits="YemekTarifSitesi.YemekAra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>          
            <table class="auto-style1">
                <tr>
                    <td style="width:100%;background-color:bisque;font-size: x-large">
                       <a href="UrunDetay.aspx?UrunID=<%#Eval("UrunID")%>"> 
                   <asp:Label ID="Label2" runat="server" Font-Bold="True" style="font-size: medium;color:#ff487e;font-weight:bold" Text='<%# Eval("UrunAdi") %>' ForeColor="Black"></asp:Label></a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="Label1" runat="server" style="font-size: medium" Text="Malzemeler" ForeColor="Black"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" style="font-size: medium" Text='<%# Eval("UrunMalzeme") %>' ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="Label7" runat="server" style="font-size: medium" Text="Yemek Tarifi" ForeColor="Black"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" style="font-size: medium" Text='<%# Eval("UrunTarif") %>' ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                 <tr>

                    <td>
                        <strong>
                        <asp:Label ID="Label8" runat="server" Text="Eklenme Tarihi" style="font-size: large" ForeColor="Black"></asp:Label>
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
                        <asp:Label ID="Label9" runat="server" Text="Puan" style="font-size: large" ForeColor="Black"></asp:Label>
                        </strong>
                           &nbsp;
                        <em>
                        <asp:Label ID="Label6" runat="server" CssClass="fs-16" ForeColor="White" Text='<%# Eval("UrunPuan") %>'></asp:Label>
                        </em>&nbsp;
                        <strong>
                       <a href="UrunDetay.aspx?UrunID=<%#Eval("UrunID")%>"> <asp:Label ID="Label10" runat="server" Text="Yorumlar" style="float:right" ForeColor="Black" ></asp:Label></a>
                        </strong>
                       </td>                   
                    
                     
                  <%--<td>
                       <a href="YemekDetay.aspx?YemekID=<%#Eval("YemekID")%>"> <asp:Button ID="Label10" runat="server" Font-Bold="True" style="font-size: x-large" Text="Yorumlar"></asp:Button></a>                      
                  </td>--%>                     
                </tr>                
            </table>             
            <%-- <a href="UrunDetay.aspx?UrunID=<%#Eval("UrunID")%>"> <asp:Image ID="Image1"  ImageUrl='<%# Bind("UrunResim", "~/images/{0}") %>' alt='<%#Eval("UrunResim") %>' runat="server" Width="790px" Height="340px" ImageAlign="right"  /></a>--%>
             <a href="UrunDetay.aspx?UrunID=<%#Eval("UrunID")%>"> <asp:Image ID="Image2"  ImageUrl='<%# Bind("UrunResim", "~/images/{0}") %>' alt='<%#Eval("UrunResim") %>' runat="server" Width="790px" Height="340px" ImageAlign="right"  /></a>

            
            <strong>
           
            </strong>
            <br />            
        </ItemTemplate>
</asp:DataList>
    </asp:Content>
