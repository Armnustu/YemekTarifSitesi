<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciMasterPage.Master" AutoEventWireup="true" CodeBehind="UyeKaydet.aspx.cs" Inherits="YemekTarifSitesi.UyeKaydet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="page-wrapper bg-gra-04 p-t-45 p-b-50">
        <div class="wrapper wrapper--w550">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Üye Kayıt Formu</h2>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <div class="form-row m-b-55">
                            <div class="name">İsim</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-xs">
                                         <div class="input-group-desc">
                                            <input class="input--style-5" type="text" id="txtisim" name="first_name" runat="server" placeholder="isim">
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Kullanıcı Adını Giriniz" ControlToValidate="txtisim" ValidationGroup="aa"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-xs">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" ID="txtsoyisim" name="last_name" runat="server" placeholder="Soyisim" >
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Soyadınızı giriniz" ControlToValidate="txtsoyisim" ValidationGroup="aa"></asp:RequiredFieldValidator>
                                     </div> 
                                    </div>
                                </div>
                            </div>
                        </div>                        
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="col-xs">
                                <div class="input-group-desc">
                                    <input class="input--style-5" type="text" ID="txtmail" name="mail" runat="server" placeholder="Email Adresiniz" >
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Geçerli mail adresi giriniz" ValidationGroup="aa" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtmail"></asp:RegularExpressionValidator>  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mail Adresi Giriniz" ValidationGroup="aa" ControlToValidate="txtmail"></asp:RequiredFieldValidator>    
                                </div>
                                    </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name">Phone</div>
                            <div class="value">
                                <div class="row row-refine">
                                    
                                    <div class="col-xs">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" id="txtTelefonNumarasi" name="phone" runat="server" placeholder="Telefon Numarası">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Telefon numarası boş geçilemez" ControlToValidate="txtTelefonNumarasi" ValidationGroup="aa"></asp:RequiredFieldValidator><br/>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTelefonNumarasi" ErrorMessage="Geçersiz telefon numarası 11 haneli telefon numarası giriniz " ValidationExpression="\d{11}" ValidationGroup="aa"></asp:RegularExpressionValidator>
                                      
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                        <div class="form-row p-t-20">
                            <label class="label label--block">Cinsiyet</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">Erkek
                                 <asp:RadioButton ID="rdMan" runat="server" GroupName="Gender"  />
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">Bayan
                                    <asp:RadioButton ID="rdLady" runat="server" GroupName="Gender"  />
                                   
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        <div>
                            <asp:Button Text="Kaydet" runat="server" ID="btnKaydet" OnClick="btnKaydet_Click" CssClass="btn btn--radius-2 btn--red" BackColor="#CC2E38" BorderColor="White" width="250px" ValidationGroup="aa"  /><asp:Label ID="LblMesaj" runat="server"></asp:Label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
