<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>
        AvukatBook Giriş
    </title>
    <meta name="description" content="Latest updates and statistic charts"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <!--begin::Web font -->
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
    <script>
        WebFont.load({
            google: {"families":["Poppins:300,400,500,600,700","Roboto:300,400,500,600,700"]},
            active: function() {
                sessionStorage.fonts = true;
            }
        });
    </script>
    <!--end::Web font -->
    <!--begin::Base Styles -->
    <link href="../../../assets/vendors/base/vendors.bundle.css" rel="stylesheet" type="text/css" />
    <link href="../../../assets/demo/default/base/style.bundle.css" rel="stylesheet" type="text/css" />
    <!--end::Base Styles -->
    <link rel="shortcut icon" href="../../../assets/app/media/img//logos/law.png" />
</head>
    <body class="m--skin- m-header--fixed m-header--fixed-mobile m-aside-left--enabled m-aside-left--skin-dark m-aside-left--offcanvas m-footer--push m-aside--offcanvas-default"  >
		<!-- begin:: Page -->
    <form id="m_login__form_m_form" class="m-login__form m-form" runat="server">
		<div class="m-grid m-grid--hor m-grid--root m-page">
			<div class="m-grid__item m-grid__item--fluid m-grid m-grid--hor m-login m-login--singin m-login--2 m-login-2--skin-2" id="m_login" style="background-image: url(../../../assets/app/media/img//bg/bg-3.jpg);">
				<div class="m-grid__item m-grid__item--fluid	m-login__wrapper">
					<div class="m-login__container">
						<div class="m-login__logo">
							<a href="#">
							    <img src="../../../assets/app/media/img//logos/law.png"/>
							</a>
						</div>
						<div class="m-login__signin">
							<div class="m-login__head">
								<h3 class="m-login__title">
									Giriş Yap
								</h3>
							</div>
							<form class="m-login__form m-form" action="">
								<div class="form-group m-form__group">
									 <asp:TextBox ID="email" class="form-control m-input" runat="server"  placeholder="Email" autocomplete="off" ></asp:TextBox>
								    <asp:RegularExpressionValidator ID="EmailFormat" runat="server"  SetFocusOnError="true" Text="Lütfen gerçerli email giriniz" ToolTip="Lütfen gerçerli email giriniz." ControlToValidate="Email" ValidationExpression="(\w)+@(\w)+.com(.(\w)+)*" ForeColor="Red"  />
                                </div>
								<div class="form-group m-form__group">
								    <asp:TextBox ID="sifre" class="form-control m-input m-login__form-input--last" runat="server"  placeholder="Şifre" TextMode="Password"></asp:TextBox>
								</div>
								<div class="row m-login__form-sub">
									<div class="col m--align-left m-login__form-left">
										<label class="m-checkbox  m-checkbox--focus">
										    <asp:CheckBox ID="remember" runat="server" />
											Beni Hatırla
											<span></span>
										</label>
									</div>
									<div class="col m--align-right m-login__form-right">
										<a href="javascript:;" id="m_login_forget_password" class="m-link">
											Şifremi Unuttum
										</a>
									</div>
								</div>
								<div class="m-login__form-action">
								    <asp:Button ID="m_login_signin_submit" runat="server" Text="Giriş Yap" class="btn btn-focus m-btn m-btn--pill m-btn--custom m-btn--air m-login__btn m-login__btn--primary" />
								</div>
							</form>
						</div>
						<div class="m-login__signup">
							<div class="m-login__head">
								<h3 class="m-login__title">
									Kayıt Ol
								</h3>
								<div class="m-login__desc">
									Hesap Oluşturmak İçin Bilgilerinizi Giriniz
								</div>
							</div>
							<form class="m-login__form m-form" action="">
								<div class="form-group m-form__group">
								    <asp:TextBox ID="adiniz" class="form-control m-input"  runat="server"  placeholder="Adınızı Giriniz" ></asp:TextBox>
								</div>
								<div class="form-group m-form__group">
								    <asp:TextBox ID="emailkayit" class="form-control m-input"  runat="server"  placeholder="Email" autocomplete="off" ></asp:TextBox>
								    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  SetFocusOnError="true" Text="Lütfen gerçerli email giriniz" ToolTip="Lütfen gerçerli email giriniz." ControlToValidate="Email" ValidationExpression="(\w)+@(\w)+.com(.(\w)+)*" ForeColor="Red"  />
								</div>
								<div class="form-group m-form__group">
								    <asp:TextBox ID="sifreKayit" class="form-control m-input m-login__form-input--last" runat="server"  placeholder="Şifre" TextMode="Password"></asp:TextBox>
								</div>
								<div class="form-group m-form__group">
								    <asp:TextBox ID="tekrarsifrekayit" class="form-control m-input m-login__form-input--last" runat="server"  placeholder="Şifreyi tekrar giriniz" TextMode="Password"></asp:TextBox>
								</div>
								<div class="row form-group m-form__group m-login__form-sub">
									<div class="col m--align-left">
										<label class="m-checkbox m-checkbox--focus">
											<asp:CheckBox ID="agree" runat="server" />
											<a href="#" class="m-link m-link--focus">
												Ön bilgileri okudum ve onaylıyorum
											</a>
											.
											<span></span>
										</label>
										<span class="m-form__help"></span>
									</div>
								</div>
								<div class="m-login__form-action">
								    <asp:Button ID="m_login_signup_submit" runat="server" Text="Kayıt Ol" class="btn btn-focus m-btn m-btn--pill m-btn--custom m-btn--air  m-login__btn" />
									&nbsp;&nbsp;
								    <asp:Button ID="m_login_signup_cancel" runat="server" Text="İptal" class="btn btn-outline-focus m-btn m-btn--pill m-btn--custom  m-login__btn" />

								</div>
							</form>
						</div>
						<div class="m-login__forget-password">
							<div class="m-login__head">
								<h3 class="m-login__title">
									Şifremi Unuttum
								</h3>
								<div class="m-login__desc">
									Şifrenizi sıfırlamak için e-mail adresinizi giriniz:
								</div>
							</div>
							<form class="m-login__form m-form" action="">
								<div class="form-group m-form__group">
								    <asp:TextBox ID="m_email" class="form-control m-input" runat="server"  placeholder="Email" autocomplete="off" ></asp:TextBox>
								    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  SetFocusOnError="true" Text="Lütfen gerçerli email giriniz" ToolTip="Lütfen gerçerli email giriniz." ControlToValidate="Email" ValidationExpression="(\w)+@(\w)+.com(.(\w)+)*" ForeColor="Red"  />
								</div>
								<div class="m-login__form-action">
                                    <asp:Button ID="m_login_forget_password_submit" runat="server" Text="Sıfırla" class="btn btn-focus m-btn m-btn--pill m-btn--custom m-btn--air  m-login__btn m-login__btn--primaryr" />
									&nbsp;&nbsp;
								    <asp:Button ID="m_login_forget_password_cancel" runat="server" Text="İptal" class="btn btn-outline-focus m-btn m-btn--pill m-btn--custom m-login__btn" />
								</div>
							</form>
						</div>
						<div class="m-login__account">
							<span class="m-login__account-msg">
								Henüz Hesabınız yok mu?
							</span>
							&nbsp;&nbsp;
							<a href="javascript:;" id="m_login_signup" class="m-link m-link--light m-login__account-link">
								Kayıt ol
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end:: Page -->
		<!--begin::Base Scripts -->
		<script src="../../../assets/vendors/base/vendors.bundle.js" type="text/javascript"></script>
		<script src="../../../assets/demo/default/base/scripts.bundle.js" type="text/javascript"></script>
		<!--end::Base Scripts -->
		<!--begin::Page Snippets -->
		<script src="../../../assets/snippets/pages/user/login.js" type="text/javascript"></script>
		<!--end::Page Snippets -->
        </form>
	</body>
	<!-- end::Body -->
</html>
