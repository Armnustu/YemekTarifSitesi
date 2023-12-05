<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciMasterPage.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifSitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:DataList ID="DataListGununYemegi" runat="server">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style7" style="height: 35px">                                   
                                        <strong>
                                        <asp:Label ID="Label2" runat="server"  Text='<%# Eval("GununYemegiAdi") %>' ForeColor="Black"></asp:Label>
                                        </strong>                                
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                    <asp:Label ID="Label1" runat="server" Text="Malzemeler :" ForeColor="Black"></asp:Label>
                                    </strong>
                                    <asp:Label ID="Label3" runat="server" style="font-size: medium" Text='<%# Eval("GununYemegiMalzeme") %>' ForeColor="Black"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                    <asp:Label ID="Label7" runat="server" Text="Yemek Tarifi :" ForeColor="Black"></asp:Label>
                                    </strong>
                                    <asp:Label ID="Label4" runat="server" style="font-size: medium" Text='<%# Eval("GununYemekTarif") %>' ForeColor="Black"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="275px" ImageUrl="~/images/mantarcorbası.jpg" Width="720px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                    <asp:Label ID="Label9" runat="server" Text="Puan Durumu :" ForeColor="Black"></asp:Label>
                                    </strong>
                                    <asp:Label ID="Label5" runat="server" style="font-size: medium" Text='<%# Eval("GununYemekPuan") %>' ForeColor="Black"></asp:Label>
                                   
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                    <asp:Label ID="Label10" runat="server" Text="İnternete Verilme Tarihi :" ForeColor="Black"></asp:Label>
                                    </strong>
                                    <asp:Label ID="Label6" runat="server" style="font-size: medium" Text='<%# Eval("GununYemegiTarih") %>' ForeColor="Black"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>



      <asp:DataList ID="DataList1" runat="server">
          <ItemTemplate> 
     <table cellpadding="20" style="width: 100%; border-collapse: collapse; height: 100%; border: 1px solid #000000; background-color: #FFFFFF">
                <tr >
                    <td>   <asp:Label ID="Label10" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label></td>
                    <td> <asp:Label ID="Label13" runat="server" Text='<%# Eval("YorumMail") %>'></asp:Label></td>
                    
                </tr>
                <tr>
                    <td><asp:Label ID="Label11" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label></td>                   
                </tr>
                <tr>
                    <td><asp:Label ID="Label12" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label></td>                  
                </tr>
            </table>
              </ItemTemplate> 
               </asp:DataList>

    <div style="background-color:bisque">  
       
    <asp:Panel ID="Panel1" runat="server">
        <table style="width: 100%; border-collapse: collapse;">
            <tr style="background-color:darkgrey">
             <td style="width:100%"><asp:Label ID="Label17" runat="server" Text="YORUM PANELİ" Font-Bold="True"  CssClass="auto-style1" style="font-size:20px" ForeColor="Black" ></asp:Label></td>
            <td></td> 
            </tr>
            <tr>
                <td style="height: 21px; width: 177px; margin-top:2px">
                    <asp:Label ID="Label14" runat="server" Text="Adınız :" style="float:left" ForeColor="Black"></asp:Label>
                </td>
                <td style="height: 21px; width: 99px;margin-top:2px">
                    <asp:TextBox ID="TxtadYorumcuAdi" runat="server" Width="260px" Height="30px" style="float:left; margin-top:4px; margin-left: 0;" CssClass="breadcrumb-item"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 21px; width: 177px; margin-top:2px">
                    <asp:Label ID="Label15" runat="server" Text="Mail Adresiniz :" style="float:left;" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtmail" runat="server" Width="260px"  Height="30px" style="float:left;margin-top:4px;float:left"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 21px; width: 177px; margin-top:2px">
                    <asp:Label ID="Label16" runat="server" Text="İçerik :" style="float:left" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtİcerik" runat="server" TextMode="MultiLine" Height="242px" Width="490px"  style="float:left;margin-top:2px;" CssClass="breadcrumb-item"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td style="width: 177px"></td>
            <td><strong>
                <asp:Button ID="BtnYorum" CommandArgument="" runat="server" Height="30px" style="font-weight: bold" Text="Gönder" Width="125px" Font-Bold="True" Font-Italic="True" ForeColor="Black" OnClick="BtnYorum_Click" />
                </strong></td><td>  <asp:Label ID="LblSonuc" runat="server" ForeColor="Black"></asp:Label> </td>
            </tr>
        </table>
    </asp:Panel>
        </div>
</asp:Content>
