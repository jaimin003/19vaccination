<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="UserCovid_adclogin_FeedBack" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demo.web3canvas.com/themeforest/startupkit/index-v-signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 19 Apr 2021 13:09:20 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Startup Responsive Landing page Template for startup, web services, newsletter signup, lead generation etc..">
<title>GIVE FEEDBACK</title>

<script src="../../cdn-cgi/apps/head/OkbNSnEV_PNHTKP2_EYPrFNyZ8Q.js"></script><link href="css/bootstrap.css" rel="stylesheet">

<link href="css/startup.css" rel="stylesheet">

<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
<![endif]-->

<link rel="shortcut icon" href="images/favicon.html">
<script src="js/pace.js"></script>

<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,600" rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="assets/css/animate.css">
		<link rel="stylesheet" href="./assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="../assets/css/icofont.min.css">
		<link rel="stylesheet" href="../assets/css/lightcase.css">
		<link rel="stylesheet" href="../assets/css/swiper.min.css">
		<link rel="stylesheet" href="../assets/css/style.css">
</head>
<body class="signup-v-layout">








		<%--<!-- desktop menu start here -->
		<header class="header-section home-7">
			<div class="header-area">
				<div class="container">
					<div class="primary-menu">
						<div class="logo">
							<a href="index.html"><img src="../assets/images/logo/01.png" alt="logo"></a>
                        </div>
						<div class="main-area">
							<div class="main-menu">
								<ul class="lab-ul">
                                    <li class="active"><a href="#">Home</a>
                                        <ul class="lab-ul">
                                            <li><a href="index.html">Home Style One</a></li>
                                            <li><a href="index-2.html">Home Style Two</a></li>
                                            <li><a href="index-3.html">Home Style Three</a></li>
                                            <li><a href="index-4.html">Home Style Four <sup>New</sup></a></li>
                                            <li><a href="index-5.html">Home Style Five <sup>New</sup></a></li>
                                            <li><a href="index-6.html">Home Style Six <sup>New</sup></a></li>
                                            <li class="active"><a href="index-7.html">Home Style Seven <sup>New</sup></a></li>
                                            <li><a href="one-page.html">One Page</a></li>
                                            <li><a href="index-box.html">Box Layout</a></li>
                                            <li><a href="http://demos.codexcoder.com/labartisan/html/covid-19-rtl/index.html">Rtl Layout</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Vaccine</a>
                                        <ul class="lab-ul">
                                            <li><a href="#0">About Vaccine</a>
                                                <ul class="lab-ul">
                                                    <li><a href="../Vaccineinfo.aspx">Vaccine Centre</a></li>
                                                    <li><a href="about-2.html">About Style 2</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="faq.html">Faq</a></li>
                                            <li><a href="outbreak.html">Outbreak</a></li>
                                            <li><a href="Feedback.aspx">FeedBack</a></li>
                                            <li><a href="404.html">404 Page</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="service.html">Prevention</a></li>
                                    <li><a href="#">Blog</a>
                                        <ul class="lab-ul">
                                            <li><a href="../dummycerti.aspx">View Certificate</a></li>
                                            <li><a href="../dummyinvoice.aspx">View Invoice</a></li>
                                            <li><a href="blog-3.html">Blog Style 3</a></li>
                                            <li><a href="blog-single.html">Blog Single</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#0">Shop</a>
                                        <ul class="lab-ul">
                                            <li><a href="shop-page.html">Products Page</a></li>
                                            <li><a href="shop-single.html">Product Single</a></li>
                                            <li><a href="cart-page.html">Cart Page</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
							</div>
							<div class="header-btn">
								<a href="#" class="lab-btn"><span>Donate<i class="icofont-heart"></i></span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- desktop menu ending here -->--%>
<div class="preloader"></div>

<main id="top" class="masthead" role="main">

<div class="container">



<h1 style="color: #FF0000">The Most <span data-typer-targets="Easy,Reliable,Secure,Friendly,Simple" style="color: #FF0000">Simple</span> <strong style="color: #FF0000">Webiste</strong> <br>
To <strong>Get</strong> Informaion About <strong>COVID</strong></h1>
<div class="row">
<div class="col-md-4 col-sm-12 col-md-offset-4">
<div class="signup-block"><form id="Form1" class="form"   runat="server" >

<div class="form-group">
<%--<input class="form-control input-lg" name="email" type="email" placeholder="Enter your email">--%>
<asp:TextBox ID="txtview" runat="server" class="form-control input-lg" placeholder="Enter your Feedback" TextMode="MultiLine"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Plzz Give A Feedback*" ControlToValidate="txtview" 
        ForeColor="Red"></asp:RequiredFieldValidator>
</div>


<div class="form-group last">
<%--<button type="submit" class="btn btn-success btn-block btn-lg">Sign In</button>--%>
<asp:Button ID="Button1" runat="server" Text="Give FeedBack" 
        class="btn btn-primary btn-block btn-lg" onclick="Button1_Click" ></asp:Button>

</div>

</form>

 </div>
 <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</div>

</div>





<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/easing.js"></script>
<script src="js/typer.js"></script>
<script src="js/nicescroll.js"></script>

<script>
    $(function () {
        $('[data-typer-targets]').typer();
    });
  </script>

<script>


    $(function () {
        $('.scrollto, .gototop').bind('click', function (event) {
            var $anchor = $(this);
            $('html, body').stop().animate({
                scrollTop: $($anchor.attr('href')).offset().top
            }, 1500, 'easeInOutExpo');
            event.preventDefault();
        });
    });
        

</script>
</body>

<!-- Mirrored from demo.web3canvas.com/themeforest/startupkit/index-v-signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 19 Apr 2021 13:09:34 GMT -->
</html>
