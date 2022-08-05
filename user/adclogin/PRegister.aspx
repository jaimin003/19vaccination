<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PRegister.aspx.cs" Inherits="ExtraCovid_Register" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demo.web3canvas.com/themeforest/startupkit/index-v-signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 19 Apr 2021 13:09:20 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Startup Responsive Landing page Template for startup, web services, newsletter signup, lead generation etc..">
<title>User Register</title>

<script src="../../cdn-cgi/apps/head/OkbNSnEV_PNHTKP2_EYPrFNyZ8Q.js"></script><link href="css/bootstrap.css" rel="stylesheet">

<link href="css/startup.css" rel="stylesheet">

<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
<![endif]-->

<link rel="shortcut icon" href="images/favicon.html">
<script src="js/pace.js"></script>

<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,600" rel='stylesheet' type='text/css'>
</head>
<body class="signup-v-layout">
<div class="preloader"></div>

<main id="top" class="masthead" role="main">
<div class="container">

<%--<div class="logo"> <a href="#"><img src="images/startup-template-logo.png" alt="startup-logo"></a> </div>--%>

<h1>The Most <span data-typer-targets="Easy,Reliable,Secure,Friendly,Simple">Simple</span> <strong>Webiste</strong> <br>
To <strong>Get</strong> Informaion About <strong>COVID</strong></h1>

<div class="row">
<div class="col-md-6 col-sm-12 col-md-offset-3">

<div class="signup-block"><form id="Form1" class="form" runat="server">
<div class="form-group">
<%--<input class="form-control input-lg" name="text" type="text" placeholder="Full name">--%>
<asp:TextBox ID="txtname" class="form-control input-lg" runat="server" placeholder="Full name"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Name Required*" ForeColor="Red" ControlToValidate="txtname"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<%--<input class="form-control input-lg" name="email" type="email" placeholder="Enter your email">--%>
<asp:TextBox ID="txtmail" runat="server" class="form-control input-lg" 
        placeholder="Enter your email" TextMode="Email"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Invalid Email*" ControlToValidate="txtmail" ForeColor="Red" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</div>
<div class="form-group">
<%--<input class="form-control input-lg" name="password" type="password" placeholder="Password">--%>
<asp:TextBox ID="txtpass" runat="server" class="form-control input-lg" 
        placeholder="Password" TextMode="Password"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Password Required*" ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<%--<input class="form-control input-lg" name="password" type="password" placeholder="Confirm Password">--%>
<asp:TextBox ID="txtcno" runat="server" class="form-control input-lg" 
        placeholder="Contact Number:" TextMode="Phone" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="Phone Number Required*" ControlToValidate="txtcno" 
        ForeColor="Red"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<%--<input class="form-control input-lg" name="password" type="password" placeholder="Confirm Password">--%>
<asp:TextBox ID="txtage" runat="server" class="form-control input-lg" 
        placeholder="YOUR AGE:" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ErrorMessage="Age Required*" ControlToValidate="txtage" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<%--<input class="form-control input-lg" name="password" type="password" placeholder="Confirm Password">--%>
<asp:FileUpload ID="FileUpload1" class="form-control input-lg" runat="server"></asp:FileUpload>
<asp:Image ID="Image1" runat="server" Height="200" Width="250" Visible="false"></asp:Image>
<asp:Label ID="Label1" runat="server" ></asp:Label>


</div>
<div class="form-group last">
<%--<button type="submit" class="btn btn-success btn-block btn-lg">SIGN UP FOR FREE</button>--%>
<asp:Button ID="btn_submit" runat="server" Text="SIGN UP " 
        class="btn btn-primary btn-block btn-lg" onclick="btn_submit_Click"></asp:Button>
</div><br />
<a href="Plogin.aspx" style="color: #FFFFFF; font-size: large; font-weight: bold;">Already a User,Login</a>&nbsp&nbsp&nbsp&nbsp

</form>
<span id="result" class="alertMsg"></span> </div>
</div>
</div>




</div>
</main>


<div class="container" id="explore">













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

