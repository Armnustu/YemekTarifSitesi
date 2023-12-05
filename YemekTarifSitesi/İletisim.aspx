<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciMasterPage.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="YemekTarifSitesi.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="ftco-section" style="padding:0px">
		<div class="container">
			<div class="row  justify-content-center" style="height:40px">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section" style="color:white">İletişim Formu</h2>
				</div>
			</div>
			<div class="row justify-content-center col-xs-12" > 
				<div class="col-lg-10">
					<div class="wrapper">
						<div class="row no-gutters">
							<div class="col-md-6 d-flex align-items-stretch">
								<div class="contact-wrap w-100 p-md-5 p-4 py-5">
									<p class="mb-4" style="color:#FF3300;font-family: acumin-pro, system-ui, sans-serif;font-size:30px">Bize Yazın</p>
									<div id="form-message-warning" class="mb-4"></div> 
				      		<div id="form-message-success" class="mb-4">
				           En Kısa zamanda dönüş sağlanacaktır
				      		</div>
									<form method="POST" id="contactForm" name="contactForm" class="contactForm">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<%--<input type="text" class="form-control" name="name" id="name" placeholder="Name">--%>
													<asp:TextBox ID="txtKullaniciAdi" runat="server" placeholder="İsim" Width="192px" Height="26px"></asp:TextBox><br/>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtKullaniciAdi" ErrorMessage="Kullanıcı Adı Boş Geçilemez" ForeColor="#FF3300" ValidationGroup="aa"></asp:RequiredFieldValidator>
												</div>
											</div>
											<div class="col-md-12"> 
												<div class="form-group">
													<%--<input type="email" class="form-control" name="email" id="email" placeholder="Email">--%>
													<asp:TextBox ID="txtMail" runat="server" TextMode="Email" placeholder="Email" Height="26px" Width="192px" ></asp:TextBox><br/>
													<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMail" ErrorMessage="Email Adresi Boş Geçilemez" ForeColor="#FF3300" ValidationGroup="aa"></asp:RequiredFieldValidator>						<br/>
						<asp:RegularExpressionValidator runat="server" ErrorMessage="Geçersiz Mail Adresi" ControlToValidate="txtMail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="aa" ForeColor="Red"></asp:RegularExpressionValidator>  
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<%--<input type="text" class="form-control" name="subject" id="subject" placeholder="Subject">--%>
													 <asp:TextBox ID="txtTelefon" runat="server" Width="192px" TextMode="Phone" Height="26px" placeholder="Telefon"></asp:TextBox><br>
													<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTelefon" ErrorMessage="Telefon Numarası Boş Geçilemez" ForeColor="#FF3300" ValidationGroup="aa"></asp:RequiredFieldValidator><br/>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Geçersiz Telefon Numarası" ControlToValidate="txtTelefon" ValidationExpression="\d{11}" ValidationGroup="aa" ForeColor="Red"></asp:RegularExpressionValidator>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<%--<textarea name="message" class="form-control" id="message" cols="30" rows="6" placeholder="Message"></textarea>--%>
													 <asp:TextBox ID="txtMesajicerigi" runat="server" TextMode="MultiLine" Height="255px" Width="310px" style="border-radius:4px" placeholder="Mesajınız"></asp:TextBox><br/>
													<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMesajicerigi" ErrorMessage="Mesaj Boş Geçilemez" ForeColor="#FF3300" ValidationGroup="aa"></asp:RequiredFieldValidator>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													 &nbsp;<span class="submitting"></span><asp:Button ID="BtnMesaj_Gonder" runat="server" Font-Italic="True" ForeColor="White" Height="37px" Text="Mesaj Gönder" Width="141px" Style="border-radius:5px;font-size:20px" OnClick="BtnMesaj_Gonder_Click" ValidationGroup="aa" BackColor="Black"/>


                    <asp:Label ID="LblMesaj" runat="server"></asp:Label>

													  

													<%--<input type="submit" value="Send Message" class="btn btn-primary">
													<div class="submitting"></div>--%>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
							<div class="col-md-6 d-flex align-items-stretch">
								<div class="info-wrap w-100 p-md-5 p-4 py-5 img">
									<h3 style="color:#FF3300;font-family: acumin-pro, system-ui, sans-serif;">İletişim Bilgileri</h3>
									<p class="mb-4" style="color:#FF3300;font-family: acumin-pro, system-ui, sans-serif;">Önerilerinizi Yazın</p>
				        	<div class="dbox w-100 d-flex align-items-start">
				        		<div class="icon d-flex align-items-center justify-content-center">
				        			<span class="fa fa-map-marker"></span>
				        		</div>
				        		<div class="text pl-3">
					            <p><span style="color:#FF3300;font-family: acumin-pro, system-ui, sans-serif;">Adres:</span><a href="#" style="color:white;font-family: acumin-pro, system-ui, sans-serif;">Karabağlar/izmir</a></p>
					          </div>
				          </div>
				        	<div class="dbox w-100 d-flex align-items-center">
				        		<div class="icon d-flex align-items-center justify-content-center">
				        			<span class="fa fa-phone"></span>
				        		</div>
				        		<div class="text pl-3">
					            <p><span style="color:#FF3300;font-family: acumin-pro, system-ui, sans-serif;">Telefone:</span> <a href="tel://1234567920" style="color:white;font-family: acumin-pro, system-ui, sans-serif;">05312221336</a></p>
					          </div>
				          </div>
				        	<div class="dbox w-100 d-flex align-items-center">
				        		<div class="icon d-flex align-items-center justify-content-center">
				        			<span class="fa fa-paper-plane"></span>
				        		</div>
				        		<div class="text pl-3">
					            <p ><span style="color:#FF3300;font-family: acumin-pro, system-ui, sans-serif;">Email:</span> <a href="mailto:info@yoursite.com" style="color:white;font-family: acumin-pro, system-ui, sans-serif;">arman_a28@windowslive.com</a></p>
					          </div>
				          </div>
				        	<div class="dbox w-100 d-flex align-items-center">
				        		<div class="icon d-flex align-items-center justify-content-center">
				        			<span class="fa fa-globe"></span>
				        		</div>
				        		<div class="text pl-3">
					            <p "><span style="color:#FF3300;font-family: acumin-pro, system-ui, sans-serif;">Website :</span> <a href="#" style="color:white">http://www.yemektarifi.com</a></>
					          </div>
				          </div>
			          </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	
</asp:Content>
