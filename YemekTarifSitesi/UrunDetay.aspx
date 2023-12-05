<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciMasterPage.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="YemekTarifSitesi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>          
            <table class="auto-style1">
                <tr >
                    <td style="width:100%;background-color:bisque;">
                       <a href="UrunDetay.aspx?UrunID=<%#Eval("UrunID")%>"> <asp:Label ID="Label2" runat="server" Font-Bold="True" style="font-size: x-large;color:#ff487e;" Text='<%# Eval("UrunAdi") %>'></asp:Label></a>
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
                        <asp:Label ID="Label3" runat="server" style="font-size: medium"  Text='<%# Eval("UrunMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="Label7" runat="server" Text="Label" style="font-size: large">Yemek Tarifi</asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" style="font-size: medium" Text='<%# Eval("UrunTarif") %>'></asp:Label>
                    </td>
                </tr>
                 <tr>

                    <td>
                        <strong>
                        <asp:Label ID="Label8" runat="server" Text="Eklenme Tarihi" style="font-size: large"></asp:Label>
                        </strong>
                    &nbsp;&nbsp;
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
                        &nbsp;&nbsp;
                        <em>
                        <asp:Label ID="Label6" runat="server" CssClass="fs-16" ForeColor="White" Text='<%# Eval("UrunPuan") %>'></asp:Label>
                        </em>
                    </td>
                </tr>
                
            </table>
       <%-- <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# Eval("YemekResim") %>' Width="390px;Heigt=100px" />       --%>

             <a href="UrunDetay.aspx?UrunID=<%#Eval("UrunID")%>"> <asp:Image ID="Image1"  ImageUrl='<%# Bind("UrunResim", "~/images/{0}") %>' alt='<%#Eval("UrunResim") %>' runat="server" Width="790px" Height="340px" ImageAlign="right"  /></a>
           
            <br />
          

       
        </ItemTemplate>
</asp:DataList>
     <asp:DataList ID="DataList2" runat="server">
          <ItemTemplate> 
     <table cellpadding="20" style="width: 100%; border-collapse: collapse; border: 1px solid #000000; background-color: #FFFFFF">
                <tr >
                    <td> <asp:Label ID="Label10" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label></td>
                    <td><asp:Label ID="Label13" runat="server" Text='<%# Eval("YorumMail") %>'></asp:Label></td>
                    
                </tr>
                <tr >
                    <td><asp:Label ID="Label11" runat="server" Text='<%# Eval("Yorumicerik") %>' style="font-size:medium;"></asp:Label></td>                   
                </tr>
                <tr>
                    <td><asp:Label ID="Label12" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label></td>                  
                </tr>
            </table>
              </ItemTemplate> 
               </asp:DataList>
   
    <asp:Panel ID="Panel1" runat="server">        
        <%--   <table>
               <tr style="background-color:darkgrey">
             <td style="width:100%"><asp:Label ID="Label17" runat="server" Text="YORUM PANELİ" Font-Bold="True"  CssClass="auto-style1" style="font-size:20px" ForeColor="Black" ></asp:Label></td>  
            </tr>
               </table>
        
            <table style="background-color:bisque">
            <tr>             
                <td style="height: 32px; width: 613px;">
                    <asp:Label ID="Label19" runat="server" Text="Adınız :" > </td>< td></asp:Label><asp:TextBox ID="TxtadYorumcuAdi" runat="server" Height="30px" style="margin-top:0px" Width="260px"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtadYorumcuAdi" ErrorMessage="Kullanıcı Adı Boş Geçilemez" ForeColor="Red" ValidationGroup="aa"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
                       
                <tr>                   
                    <td style="height: 46px; width: 613px;">
                       <asp:Label ID="Label15" runat="server" Text="Mail Adresiniz :"></asp:Label>
                        <asp:TextBox ID="Txtmail" runat="server" Height="30px" Width="260px"></asp:TextBox>
                        <asp:RegularExpressionValidator runat="server" ControlToValidate="TxtMail" ErrorMessage="Geçersiz Mail Adresi" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="aa"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtmail" ErrorMessage="Mail Boş Geçilemez" ForeColor="Red" ValidationGroup="aa"></asp:RequiredFieldValidator>
                    </td><td style="width: 210px"> &nbsp;</td>
                </tr>
                <tr>                   
                    <td style="width: 613px">
                          <asp:Label ID="Label16" runat="server" Text="İçerik :"></asp:Label><asp:TextBox ID="Txtİcerik" runat="server" Height="181px" TextMode="MultiLine" Width="344px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txtİcerik" ErrorMessage="İçerik boş geçilemez" ForeColor="Red" ValidationGroup="aa"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                   <td style="width: 613px">
                        <asp:Button ID="BtnYorumGonder" runat="server" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Height="56px" OnClick="BtnYorumGonder_Click" Text="Yorum Gönder" ValidationGroup="aa" Width="136px" />
                    </td>
                </tr>          
        </table>--%>
        


        <table style="background-color:darkgrey; width:100%">
            <tr>
            <td > <asp:Label ID="Label17" runat="server" Text="YORUM PANELİ" Font-Bold="True" style="font-size:20px" ForeColor="Black" ></asp:Label><td>
            </tr>
          </table>
        <table style="border:1px solid black ;background-color:bisque;width:100%" >
                    <tr style="border:1px solid black"><td style="width: 259px"><asp:Label ID="Label14" runat="server" Text="Kullanıcı adınız :" style="Float:right;  " Font-Bold="True"></asp:Label></td><td><asp:TextBox ID="TxtadYorumcuAdi" runat="server" Width="260" Height="35" ></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtadYorumcuAdi" ErrorMessage="Kullanıcı Adı Boş Geçilemez" ForeColor="Red" ValidationGroup="aa"></asp:RequiredFieldValidator></td></tr>
                    <tr style="border:1px solid black"><td style="width: 259px"><asp:Label ID="Label1" runat="server" Text="Mail :" style="Float:right" Font-Bold="True"></asp:Label></td><td><asp:TextBox ID="TxtMail" runat="server"  Width="260" Height="35"  ></asp:TextBox><asp:RegularExpressionValidator runat="server" ControlToValidate="TxtMail" ErrorMessage="Geçersiz Mail Adresi" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="aa"></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtMail" ErrorMessage="Mail Boş Geçilemez" ForeColor="Red" ValidationGroup="aa"></asp:RequiredFieldValidator></td></tr>
                    <tr style="border:1px solid black"><td style="width: 259px"><asp:Label ID="Label2" runat="server" Text="İçerik :" style="Float:right" Font-Bold="True"></asp:Label></td><td><asp:TextBox ID="Txtİcerik" runat="server" Height="251px"  TextMode="MultiLine" Width="409px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txtİcerik" ErrorMessage="İçerik boş geçilemez" ForeColor="Red" ValidationGroup="aa"></asp:RequiredFieldValidator></td></tr>
					<tr style="border:1px solid black"><td style="width: 259px"><td>  <asp:Button ID="BtnYorumGonder" runat="server" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Height="56px" OnClick="BtnYorumGonder_Click" Text="Yorum Gönder" ValidationGroup="aa" Width="136px" /> <asp:Label ID="Lblmesajsonuc" runat="server" Font-Bold="True"></asp:Label></td>
       </tr>
                     </table>
    </asp:Panel>
   
</asp:Content>
