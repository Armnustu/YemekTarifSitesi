<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciMasterPage.Master" AutoEventWireup="true" CodeBehind="Tarifoner.aspx.cs" Inherits="YemekTarifSitesi.Tarifoner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" style="background-color:bisque">
      
    <asp:Panel ID="Panel1" runat="server" style="width:100%;background-color:bisque;">     
           <asp:Label ID="Label17" runat="server" Text="TARİF PANELİ" Font-Bold="True"  CssClass="auto-style1" style="font-size:20px" ></asp:Label>   
         </asp:Panel>
    <table style="float:left">       
            <tr>
            <td style="width: 40px; text-align: right;">
                <strong>
                    <asp:Label ID="Label2" runat="server" Text="Tarif  :" ForeColor="Black"></asp:Label>
                </strong>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txttarifad" runat="server" Width="450px" Height="20px"></asp:TextBox>
            </td>
          
        </tr>          
            <tr>
                <td style="width: 40px; text-align: right;"><strong>
                    <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Malzeme :"></asp:Label>
                    </strong></td>
                <td style="text-align: right">
                    <asp:TextBox ID="txtmalzeme" runat="server" Height="150px" Style="margin-left: 0px" TextMode="MultiLine" Width="577px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 80px; text-align: right;"><strong>
                    <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Yapılış :"></asp:Label>
                    </strong></td>
                <td style="text-align: right">
                    <asp:TextBox ID="txtyapilis" runat="server" CssClass="offset-sm-0" Height="200px" TextMode="MultiLine" Width="577px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 80px; text-align: right;"><strong>
                    <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Resim :"></asp:Label>
                    </strong></td>
                <td style="text-align: left"><strong>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="458px" />
                    </strong></td>
            </tr>
            <tr>
                <td style="width: 100px; text-align: right;"><strong>
                    <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Tarif Öneren:"></asp:Label>
                    </strong></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txttarifoneren" runat="server" Height="20px" Width="450px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 80px; text-align: right;"><strong>
                    <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Mail Adresi :"></asp:Label>
                    </strong></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtmail" runat="server" Height="20px" TextMode="Email" Width="450px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 80px; text-align: right;">
                    
                </td>
                <td>
                    <asp:Button ID="TrfOner" runat="server" Font-Bold="True" Font-Italic="True" Height="45px" OnClick="TrfOner_Click" Text="Tarif Öner" Width="91px" />
                    <asp:Label ID="LblHatamesajı" runat="server" ForeColor="Black"></asp:Label>
                    <asp:Label ID="LblMesaj" runat="server" ForeColor="Black"></asp:Label>
                </td>
            </tr>
      
         </table>
    
</asp:Content>
