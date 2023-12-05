<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciMasterPage.Master" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="YemekTarifSitesi.Giris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="limiter" style="width:100% ;right:0px">
		<div class="container-login99" >
			<div class="wrap-login100" style="width:81%">
				<div class="login100-form-title" style="background-image: url(Content/images/bg-01.jpg); ">
					<span class="login100-form-title-1">						
					</span>
				<h1 style="color:white">Giriş Yapınız</h1>
				</div>
				<form1 class="login100-form validate-form">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100" style="color:black">İsim :</span>					
						<asp:TextBox ID="txtKullaniciAdi" runat="server" name="username" placeholder="Kullanıcı Adı Giriniz" Height="70px"></asp:TextBox>						
						<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtKullaniciAdi" ErrorMessage="Kullanıcı ismi Boş Geçilemez" ForeColor="#FF3300" ValidationGroup="aa"></asp:RequiredFieldValidator>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100"style="color:black">Mail adresi :</span>				
						<asp:TextBox ID="txtMail" runat="server" name="username" placeholder="Mail Adresi Giriniz" Height="70px" Width="138px"></asp:TextBox>						
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMail" ErrorMessage="Email Adresi Boş Geçilemez" ForeColor="#FF3300" ValidationGroup="aa"></asp:RequiredFieldValidator>						
						<asp:RegularExpressionValidator runat="server" ErrorMessage="Geçersiz Mail Adresi" ControlToValidate="txtMail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="aa" ForeColor="Red"></asp:RegularExpressionValidator>  
					</div>
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100"style="color:black">Şifre :</span>					
						<asp:TextBox ID="txtSifre" runat="server"  type="password" name="pass" placeholder="Şİfre Giriniz" Height="40px"></asp:TextBox>                       
					    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSifre" ErrorMessage="Kullanıcı Şifresi Boş Geçilemez" ForeColor="Red" ValidationGroup="aa"></asp:RequiredFieldValidator>
					</div>					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100" style="color:black">Tekrar Şifre :</span>				
						<asp:TextBox ID="txtTekrarSifre" runat="server"  type="password" name="pass" placeholder="Tekrar Şİfre" Height="40px"></asp:TextBox>                        
					    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTekrarSifre" ErrorMessage="Şifre Boş Geçilemez" ForeColor="Red" ValidationGroup="aa"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSifre" ControlToValidate="txtTekrarSifre" ErrorMessage="Hatalı Şifre" ForeColor="Red" ValidationGroup="aa"></asp:CompareValidator>                        
					</div>
					<div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							
							<asp:CheckBox ID="Remember" runat="server" Text="Hatırla beni" />
							
						</div>

						<div>
							<a href="ResetPasword.aspx" class="txt1">
								Şifremi Unuttum?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
                        <%--<button class="login100-form-btn">
							Login
						</button>--%>
				        <asp:Button ID="GirisYap" runat="server" OnClick="GirisYap_Click" Text="Giriş Yap" BackColor="#CCCCCC" Font-Bold="True" Font-Italic="True" Height="56px" Width="136px"  ValidationGroup="aa"/>
				 <%--  <asp:Button ID="Login" runat="server" Height="50px" Text="Login" Width="120px" BackColor="Lime" OnClick="Login_Click1" ValidationGroup="aa" />--%>
					    <asp:Label ID="LblMesaj" runat="server" ForeColor="Black"></asp:Label>
					</div>
					<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" Height="102px" ValidationGroup="aa" />
				</form1>
			</div>
		</div>
	</div>
</asp:Content>
