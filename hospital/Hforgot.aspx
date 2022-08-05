<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hforgot.aspx.cs" Inherits="hospital_Hforgot" %>

<!doctype html>
<html lang="en">
	
<!-- Mirrored from bootstrap.gallery/royal-hospital-admin/design-option-2/forgot-pwd.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 15 Apr 2021 07:37:53 GMT -->
<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!-- Meta -->
		<meta name="description" content="Responsive Bootstrap4 Dashboard Template">
		<meta name="author" content="ParkerThemes">
		<link rel="shortcut icon" href="img/fav.png" />

		<!-- Title -->
		<title>Royal Hospitals Admin Template - Forgot Password</title>
		
		<!-- *************
			************ Common Css Files *************
			************ -->
			
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css" />

		<!-- Main CSS -->
		<link rel="stylesheet" href="css/main.css" />


	</head>

	<body class="authentication">

		<!-- Container start -->
		<div class="container">
			
			<form id="Form1" runat="server">
				<div class="row justify-content-md-center">
					<div class="col-xl-5 col-lg-5 col-md-6 col-sm-12">
						<div class="login-screen">
							<div class="login-box">
								<a href="#" class="login-logo">
									Hospitals
								</a>
								<h5 class="mr-5">In order to access your dashboard, please enter the email id you provided during the registration process.</h5>
								<div class="form-group">
									<%--<input type="text" class="form-control" placeholder="Enter Email Address" />--%>
                                    <asp:TextBox ID="txtmail" runat="server" class="form-control" placeholder="Enter Email Address" TextMode="Email"></asp:TextBox>
                                
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email*" 
                                                    ControlToValidate="txtmail" ForeColor="Red" 
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
								</div>
								<div class="actions">
									<%--<button type="submit" class="btn btn-primary">Submit</button>--%>
                                    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" onclick="Button1_Click" 
                                      />
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>

		</div>
		<!-- Container end -->

	</body>

<!-- Mirrored from bootstrap.gallery/royal-hospital-admin/design-option-2/forgot-pwd.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 15 Apr 2021 07:37:53 GMT -->
</html>
