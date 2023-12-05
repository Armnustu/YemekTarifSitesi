<%@ Page Title="" Language="C#" MasterPageFile="~/AdminUser.Master" AutoEventWireup="true" CodeBehind="UrunTarifleri.aspx.cs" Inherits="YemekTarifSitesi.Yemekler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel2" runat="server" BackColor="#999999" Width="100%"  >
        <table class="auto-style8">
            <tr>
                <td style="width: 55px"><strong>
                    <asp:Button ID="PanelAc" runat="server" Font-Size="Large" Height="59px"  style="font-weight: bold; font-size: medium;" Text="+" Width="57px" OnClick="PanelAc_Click"  />
                    </strong></td>
                <td style="width: 55px">
                    <asp:Button ID="PanelKapat" runat="server" Font-Bold="True" Font-Size="Large" Height="59px" Text="-" Width="57px" style="font-size: large" OnClick="PanelKapat_Click" />
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Tarif Listesi"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">      
    <asp:DataList ID="DataList1" runat="server" style="width:790px">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="width: 10px">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("UrunID") %>'></asp:Label>
                    </td>
                    <td style="width: 160px"> <asp:Label ID="Label2" runat="server" Text='<%# Eval("UrunAdi") %>'></asp:Label></td>
                    <td style="width: 10px"> <asp:Label ID="Label3" runat="server" Text='<%# Eval("UrunMalzeme") %>'></asp:Label></td>
                   <td style="width: 160px"> <asp:Label ID="Label5" runat="server" Text='<%# Eval("UrunTarif") %>'></asp:Label></td>
                   <%-- <td style="width: 80px" > <asp:Image ID="Image1"  ImageUrl='<%# Bind("UrunResim", "~/images/{0}") %>' alt='<%#Eval("YemekResim") %>' runat="server" Width="51px" Height="51px" ImageAlign="Right" /></td>--%>
                   <td style="width: 160px"> <asp:Label ID="Label7" runat="server" Text='<%# Eval("UrunPuan") %>'></asp:Label></td>
                    <td style="width: 160px"> <asp:Label ID="Label10" runat="server" Text='<%# Eval("UrunTarih") %>'></asp:Label></td>
                    <td style="width: 51px">
                        <image src='/images/<%# Eval("UrunResim") %>' width="150" height="150" />
                        
                    </td>
                    <td style="width: 51px">
                        <a href="TarifDuzenle.aspx?UrunID=<%# Eval("UrunID")%>">
                      <img alt="" src="icons/guncelle.png" style="width: 51px; height: 51px" /></a>
                    </td>
                    <td style="width: 51px">
                          <a href="TarifDuzenle.aspx?UrunID=<%# Eval("UrunID")%>">
                        <img alt="" src="icons/sil.png" style="width: 51px; height: 51px" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </asp:Panel>
    
    <asp:Panel ID="Panel4" runat="server" BackColor="#999999" Width="100%" style="margin-top:2px">
        <table class="auto-style8">
            <tr>
                <td style="width: 55px">
                    <asp:Button ID="Button5" runat="server" Text="+" Height="59px" Width="57px" Font-Bold="True" style="font-size: medium" OnClick="Panelac_Click"/>
                </td>
                <td style="width: 55px">
                    <asp:Button ID="Button6" runat="server" Text="-" Height="59px" Width="57px" Font-Bold="True" style="font-size: large" OnClick="PanelKapa_Click"  />
                </td>
                <td>
                    <strong>
                    <asp:Label ID="Label9" runat="server" Text="Tarif Ekle"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
    </asp:Panel> 
    <asp:Panel ID="Panel3" runat="server" >
        <table class="auto-style8">            
            <tr>
                
                <td style="text-align: left;"><asp:Label ID="Label6" runat="server" Text="Tarif Adı :"></asp:Label></td>
                <td ><asp:TextBox ID="txtYemekAdi" runat="server" Width="380px"></asp:TextBox></td>
                <td><asp:Label ID="Label16" runat="server" Text="Kategori Adı :"></asp:Label><td>
                    
                <asp:DropDownList ID="DrpKategoriList" runat="server" Width="200px" DataTextField="KategoriAdi" DataValueField="KategoriAdi" OnSelectedIndexChanged="DrpKategoriList_SelectedIndexChanged" AutoPostBack="false"></asp:DropDownList> 
                    </td>             
            </tr>             
       
              <tr>
                <td style="text-align: left; width: 89px;"><asp:Label ID="Label11" runat="server" Text="Tarif Malzeme :"></asp:Label></td><td style="width: 361px">  <asp:TextBox ID="txtYemekMazeme" runat="server" Height="200px" TextMode="MultiLine" Width="448px"></asp:TextBox> </td>
               </tr>
                <tr>
                <td style="text-align: left; width: 89px;"><asp:Label ID="Label12" runat="server" Text="Urun Tarif :"></asp:Label></td><td style="width: 361px">
                    <asp:TextBox ID="txtYmekTarif" runat="server" Height="200px" TextMode="MultiLine" Width="446px"></asp:TextBox>     </td>
                </tr>
               <tr>               
                <td style="width: 89px; text-align: left;"><asp:Label ID="Label8" runat="server" Text="Yemek ikon :"></asp:Label>
                </td>
                 <td style="width: 361px"> 
                 <asp:FileUpload ID="FileUpload1" runat="server" Width="383px" />
                 </td>
                </tr>
                <tr>
                <td style="text-align: left; width: 89px;"><asp:Label ID="Label13" runat="server" Text="Puan :"></asp:Label></td><td style="width: 361px">
                    <asp:TextBox ID="txtPuan" runat="server" Width="200px"></asp:TextBox> </td>
                </tr>
                 <tr>
                <td style="text-align: left; width: 89px;"><asp:Label ID="Label14" runat="server" Text="Tarih :"></asp:Label></td>                   
                     <td style="width: 361px">
                  <asp:Calendar ID="calandarTarih" runat="server" Width="447px" BackColor="#CCCCCC" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="213px" NextPrevFormat="FullMonth">
                      <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                      <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                      <OtherMonthDayStyle ForeColor="#999999" />
                      <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                      <TitleStyle BackColor="#3333CC" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="White" />
                      <TodayDayStyle BackColor="#CCCCCC" />
                         </asp:Calendar>
                      </td>
                </tr>
            <tr>
                <td style="text-align: left; width: 89px;">
                   <asp:Label ID="Label15" runat="server" Text="Kategori :"> </asp:Label>                    
                </td>
                
            <tr>
                <td style="width: 89px">
                    
                </td>
                <td style="text-align: center; width: 361px;"><asp:Button ID="btnEkle" runat="server" Text="Ekle" Width="203px" OnClick="btnEkle_Click" Height="54px" style="float:left" /></td>
            </tr>


        </table>
    </asp:Panel>
</asp:Content>
