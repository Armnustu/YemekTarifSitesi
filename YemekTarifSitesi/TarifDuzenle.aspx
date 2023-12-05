<%@ Page Title="" Language="C#" MasterPageFile="~/AdminUser.Master" AutoEventWireup="true" CodeBehind="TarifDuzenle.aspx.cs" Inherits="YemekTarifSitesi.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel2" runat="server" BackColor="#999999" Width="100%" >
        <table class="auto-style8">
            <tr>
                <td style="width: 55px"><strong>
                    <asp:Button  runat="server" Font-Size="Large" Height="59px"  style="font-weight: bold; font-size: medium;" Text="+" Width="57px" ID="PanelAcınız" OnClick="PanelAcınız_Click"    />
                    </strong></td>
                <td style="width: 55px">
                    <asp:Button ID="PanelKapatınız" runat="server" Font-Bold="True" Font-Size="Large" Height="59px" Text="-" Width="57px" style="font-size: large" OnClick="PanelKapatınız_Click"  />
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Tarif Listesi"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="PanelDtListUrunler" runat="server" BackColor="#999999" Width="100%" >       
    <asp:DataList ID="DtListUrunler" runat="server" Width="708px">
        <ItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td style="width: 10px">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("UrunID") %>'></asp:Label>
                    </td>
                    <td style="width: 160px"> <asp:Label ID="Label2" runat="server" Text='<%# Eval("UrunAdi") %>'></asp:Label></td>
                    <td style="width: 10px"> <asp:Label ID="Label3" runat="server" Text='<%# Eval("UrunMalzeme") %>'></asp:Label></td>
                   <td style="width: 160px"> <asp:Label ID="Label5" runat="server" Text='<%# Eval("UrunTarif") %>'></asp:Label></td>
                    <td style="width: 80px" > <asp:Image ID="Image1"  ImageUrl='<%# Bind("UrunResim", "~/images/{0}") %>' alt='<%#Eval("UrunResim") %>' runat="server" Width="51px" Height="51px" ImageAlign="Right" /></td>
                   
                    <td style="width: 160px"> <asp:Label ID="Label7" runat="server" Text='<%# Eval("UrunPuan") %>'></asp:Label></td>
                   <%-- <td style="width: 160px"> <asp:Label ID="Label10" runat="server" Text='<%# Eval("UrunTarih") %>'></asp:Label></td>--%>
                    <td style="width: 51px">
                        <a href="TarifDuzenle.aspx">
                        <img alt="" src="icons/ekle.png" style="width: 51px; height: 51px" /></a>
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
    <asp:Panel ID="Panel7" runat="server" BackColor="#999999" Width="100%" style="margin-top:2px">
        <table class="auto-style8">
            <tr>
                <td style="width: 55px">
                    <asp:Button ID="PanelAÇ" runat="server" Text="+" Height="59px" Width="57px" Font-Bold="True" style="font-size: medium" OnClick="PanelAÇ_Click" />
                </td>
                <td style="width: 55px">
                    <asp:Button ID="PaneLKAPAT" runat="server" Text="-" Height="59px" Width="57px" Font-Bold="True" style="font-size: large" OnClick="PaneLKAPAT_Click"  />
                </td>
                <td>
                    <strong>
                    <asp:Label ID="Label9" runat="server" Text="Tarif Güncelle"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
    </asp:Panel> 
    <asp:Panel ID="PanelTabloGuncelle" runat="server" BackColor="#999999" Width="100%"  >    
        <table class="auto-style8">            
            <tr>
                
                <td style="text-align: left;"><asp:Label ID="Label6" runat="server" Text="Tarif Adı :"></asp:Label></td>
                <td ><asp:TextBox ID="txtUrunAdi" runat="server" Width="380px"></asp:TextBox></td>
                <td><asp:Label ID="Label16" runat="server" Text="Kategori Adı :"></asp:Label><td>
                    
                <asp:DropDownList ID="DropKategoriList" runat="server">
                </asp:DropDownList>
                </td>             
            </tr>                    
              <tr>
                <td style="text-align: left; width: 89px;"><asp:Label ID="Label11" runat="server" Text="Tarif Malzeme :"></asp:Label></td><td style="width: 361px">  <asp:TextBox ID="txtUrunMalzeme" runat="server" Height="200px" TextMode="MultiLine" Width="380px"></asp:TextBox> </td>
               </tr>
                <tr>
                <td style="text-align: left; width: 89px;"><asp:Label ID="Label12" runat="server" Text="Urun Tarif :"></asp:Label></td><td style="width: 361px">
                    <asp:TextBox ID="txtUrunTarif" runat="server" Height="200px" TextMode="MultiLine" Width="380px"></asp:TextBox>     </td>
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
                  <asp:Calendar ID="calandarTarih" runat="server" Width="385px" BackColor="#CCCCCC" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="239px" NextPrevFormat="FullMonth">
                      <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                      <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                      <OtherMonthDayStyle ForeColor="#999999" />
                      <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                      <TitleStyle BackColor="#333399" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="White" />
                      <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                         <WeekendDayStyle ForeColor="Black" />
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
                <td style="text-align: center; width: 361px;"><asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" Width="183px" OnClick="btnGuncelle_Click"   />
                    <asp:Button ID="Sil" runat="server" OnClick="Sil_Click" Text="Sil" Width="178px" />
                </td>
            </tr>
        </table>
        </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" BackColor="#999999" Width="100%" style="margin-top:2px">
        <table class="auto-style8">
            <tr>
                <td style="width: 55px">
                    <asp:Button ID="PanelTabloAc" runat="server" Text="+" Height="59px" Width="57px" Font-Bold="True" style="font-size: medium" OnClick="PanelTabloAc_Click" />
                </td>
                <td style="width: 55px">
                    <asp:Button ID="PnlAc" runat="server" Text="-" Height="59px" Width="57px" Font-Bold="True" style="font-size: large" OnClick="PnlAc_Click"   />
                </td>
                <td>
                    <strong>
                    <asp:Label ID="Label10" runat="server" Text="Tarif Ekle"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
    </asp:Panel> 
    <asp:Panel ID="PanelTabloEkle" BackColor="#999999" runat="server" >
        <table class="auto-style8">            
            <tr>
                
                <td style="text-align: left;"><asp:Label ID="Label17" runat="server" Text="Tarif Adı :"></asp:Label></td>
                <td ><asp:TextBox ID="txtYemekAdi" runat="server" Width="380px"></asp:TextBox></td>
                <td><asp:Label ID="Label18" runat="server" Text="Kategori Adı :"></asp:Label><td>
                    
                <asp:DropDownList ID="DrpKategoriList" runat="server" Width="200px" DataTextField="KategoriAdi" DataValueField="KategoriAdi" AutoPostBack="false"></asp:DropDownList> 
                    </td>             
            </tr>             
       
              <tr>
                <td style="text-align: left; width: 89px;"><asp:Label ID="Label19" runat="server" Text="Tarif Malzeme :"></asp:Label></td><td style="width: 361px">  <asp:TextBox ID="txtYemekMazeme" runat="server" Height="200px" TextMode="MultiLine" Width="448px"></asp:TextBox> </td>
               </tr>
                <tr>
                <td style="text-align: left; width: 89px;"><asp:Label ID="Label20" runat="server" Text="Urun Tarif :"></asp:Label></td><td style="width: 361px">
                    <asp:TextBox ID="txtYmekTarif" runat="server" Height="200px" TextMode="MultiLine" Width="446px"></asp:TextBox>     </td>
                </tr>
               <tr>               
                <td style="width: 89px; text-align: left;"><asp:Label ID="Label21" runat="server" Text="Yemek ikon :"></asp:Label>
                </td>
                 <td style="width: 361px"> 
                 <asp:FileUpload ID="FileUpload2" runat="server" Width="383px" />
                 </td>
                </tr>
                <tr>
                <td style="text-align: left; width: 89px;"><asp:Label ID="Label22" runat="server" Text="Puan :"></asp:Label></td><td style="width: 361px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox> </td>
                </tr>
                 <tr>
                <td style="text-align: left; width: 89px;"><asp:Label ID="Label23" runat="server" Text="Tarih :"></asp:Label></td>                   
                     <td style="width: 361px">
                  <asp:Calendar ID="Calendar1" runat="server" Width="447px" BackColor="#CCCCCC" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="213px" NextPrevFormat="FullMonth">
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
                   <asp:Label ID="Label24" runat="server" Text="Kategori :"> </asp:Label>                    
                </td>
                
            <tr>
                <td style="width: 89px">
                    
                </td>
                <td style="text-align: center; width: 361px;"><asp:Button ID="btnEkle" runat="server" Text="Ekle" Width="203px"  Height="54px" style="float:left" /></td>
            </tr>


        </table>
    </asp:Panel>
    

</asp:Content>
