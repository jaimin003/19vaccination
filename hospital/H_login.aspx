<%@ Page Language="C#" AutoEventWireup="true" CodeFile="H_login.aspx.cs" Inherits="hospital_h_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<!doctype html>
<html lang="en">
	
<!-- Mirrored from bootstrap.gallery/royal-hospital-admin/design-option-2/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 15 Apr 2021 07:33:24 GMT -->
<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!-- Meta -->
		<meta name="description" content="Responsive Bootstrap4 Dashboard Template">
		<meta name="author" content="ParkerThemes">
		<link rel="shortcut icon" href="img/fav.png" />

		<!-- Title -->
		<title>Hospitals Admin Side  - Login</title>
		
		<!-- *************
			************ Common Css Files *************
			************ -->
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css" />

		<!-- Master CSS -->
		<link rel="stylesheet" href="css/main.css" />

	</head>

	<body class="authentication">

		<!-- Container start -->
		<div class="container">
			
			<form action="" runat="server">
				<div class="row justify-content-md-center">
					<div class="col-xl-4 col-lg-5 col-md-6 col-sm-12">
						<div class="login-screen">
							<div class="login-box">
								<a href="#" class="login-logo">
									 Hospitals
								</a>
								<h5>Welcome back,<br />Please Login to your Account.</h5>
								<div class="form-group">
									<%--<input type="text" class="form-control" placeholder="Email Address" />--%>
                                     <label class="form-label">
                                Enter Email <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Enter Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                                ErrorMessage="Please Enter Email*" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
								</div>
								<div class="form-group">
                                  <label class="form-label">
                                Enter Password <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtpass" type="password" runat="server" class="form-control" placeholder="Enter Password"></asp:TextBox>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                                ErrorMessage="Please Enter Password*" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
									<%--<input type="password" class="form-control" placeholder="Password" />--%>
								</div>
								<div class="actions">
									<a href="Hforgot.aspx">Recover password</a>
                                    <asp:Button ID="btn_login" runat="server" class="btn btn-info" Text="Sign In" 
                                        onclick="btn_login_Click" />
								<%--	<button type="submit" class="btn btn-info">Login</button>--%>
								</div>
								<hr>
								<div class="m-0">
									<span class="additional-link">No account? <a href="H_reg.aspx" class="btn btn-secondary">Signup</a></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>

		</div>
		<!-- Container end -->

	</body>

<!-- Mirrored from bootstrap.gallery/royal-hospital-admin/design-option-2/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 15 Apr 2021 07:33:24 GMT -->
</html>