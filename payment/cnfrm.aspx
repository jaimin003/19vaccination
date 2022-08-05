<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cnfrm.aspx.cs" Inherits="payment_Ppen" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

 
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demo.harnishdesign.net/html/payyed/request-money-confirm.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 15 May 2021 12:23:44 GMT -->
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">
<link href="http://demo.harnishdesign.net/html/payyed/images/favicon.png" rel="icon" />
<title>Payment</title>
<meta name="description" content="This professional design html template is for build a Money Transfer and online payments website.">
<meta name="author" content="harnishdesign.net">

<!-- Web Fonts
============================================= -->
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Rubik:300,300i,400,400i,500,500i,700,700i,900,900i' type='text/css'>

<!-- Stylesheet
============================================= -->
<link rel="stylesheet" type="text/css" href="http://demo.harnishdesign.net/html/payyed/vendor/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="http://demo.harnishdesign.net/html/payyed/vendor/font-awesome/css/all.min.css" />
<link rel="stylesheet" type="text/css" href="http://demo.harnishdesign.net/html/payyed/vendor/bootstrap-select/css/bootstrap-select.min.css" />
<link rel="stylesheet" type="text/css" href="http://demo.harnishdesign.net/html/payyed/vendor/currency-flags/css/currency-flags.min.css" />
<link rel="stylesheet" type="text/css" href="http://demo.harnishdesign.net/html/payyed/css/stylesheet.css" />
<!-- Colors Css -->
<link id="color-switcher" type="text/css" rel="stylesheet" href="#" />
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body>

<!-- Preloader -->
<div id="preloader">
  <div data-loader="dual-ring"></div>
</div>
<!-- Preloader End --> 
<div id="Div1"> 
   <br/>
   <br/>
<h2 class="text-success text-center display-4">CONFIRM YOUR DETAILS</h2><br />
<!-- Document Wrapper   
============================================= -->
<div id="main-wrapper"> 

  <!-- Header End --> 
  
  <!-- Secondary menu
  ============================================= -->
 <%-- <div class="bg-primary">
    <div class="container d-flex justify-content-center">
      <ul class="nav secondary-nav">
        <li class="nav-item"> <a class="nav-link" href="http://demo.harnishdesign.net/html/payyed/send-money.html">Send</a></li>
        <li class="nav-item"> <a class="nav-link active" href="http://demo.harnishdesign.net/html/payyed/request-money.html">Request</a></li>
      </ul>
    </div>
  </div>
  <!-- Secondary menu end --> 
  --%>
  <!-- Content
  ============================================= -->
  <div id="content" class="py-4">
    <div class="container"> 
      
      <!-- Steps Progress bar -->
      <div class="row mt-4 mb-5">
        <div class="col-lg-11 mx-auto">
          <div class="row widget-steps">
            <div class="col-4 step complete">
              <div class="step-name">Details</div>
              <div class="progress">
                <div class="progress-bar"></div>
              </div>
              <a href="CashF.aspx" class="step-dot"></a> </div>
            <div class="col-4 step active">
              <div class="step-name">Confirm</div>
              <div class="progress">
                <div class="progress-bar"></div>
              </div>
              <a href="cnfrm.aspx" class="step-dot"></a> </div>
            <div class="col-4 step disabled">
              <div class="step-name">Success</div>
              <div class="progress">
                <div class="progress-bar"></div>
              </div>
              <a href="Success.aspx" class="step-dot"></a> </div>
          </div>
        </div>
      </div>
      <h2 class="font-weight-400 text-center mt-3">Details Confirmation</h2>
      <p class="lead text-center mb-4">You are Paying to <span class="font-weight-500">
          <asp:Label ID="lblhname" class="text-success" runat="server" Text="Label"></asp:Label></span></p>
      <div class="row">
        <div class="col-md-9 col-lg-7 col-xl-6 mx-auto">
          <div class="bg-white shadow-sm rounded p-3 pt-sm-4 pb-sm-5 px-sm-5 mb-4"> 
            <!-- Request Money Confirm Details
            ============================================= -->
              <h3 class="text-5 font-weight-400 mb-3 mb-sm-4">Confirm Details</h3>
            <hr class="mx-n3 mx-sm-n5 mb-4">            
            <div class="form-row align-items-center">
              <p class="col-sm-4 text-5 font-weight-400  text-sm-right mb-0 mb-sm-3">Name:</p>
              <asp:Label ID="lblpname" class="col-sm-8 font-weight-200 text-4 text-dark mb-0 mb-sm-3" runat="server" Text="label"></asp:Label>
             <%-- <p class="col-sm-8 text-3">Smith Rhodes</p>--%>
             
            </div>
            <div class="form-row align-items-center">
              <p class="col-sm-4 text-5 font-weight-400 text-sm-right mb-0 mb-sm-3">Email:</p>
               <asp:Label ID="lblemail" class="col-sm-8  text-dark mb-0 mb-sm-3 font-weight-200 text-4" runat="server" Text="label"></asp:Label>
              
            </div>
            <div class="form-row align-items-center">
              <p class="col-sm-4 text-5 font-weight-400 text-sm-right mb-0 mb-sm-3">Center Name:</p>
               <asp:Label ID="lblcname" class="col-sm-8  text-dark mb-0 mb-sm-3 font-weight-200 text-4" runat="server" Text="label"></asp:Label>
            </div>
            <div class="form-row align-items-center">
              <p class="col-sm-4 text-5 font-weight-400 text-sm-right mb-0 mb-sm-3">Dose No:</p>
               <asp:Label ID="lbldose" class="col-sm-8  text-dark mb-0 mb-sm-3 font-weight-200 text-4" runat="server" Text="label"></asp:Label>
            </div>
            <div class="form-row align-items-center">
              <p class="col-sm-4 text-5 font-weight-300 text-sm-right  mb-0 mb-sm-3">Vaccine Name:</p>
               <asp:Label ID="lblvname" class="col-sm-8  text-dark mb-0 mb-sm-3 font-weight-200 text-4" runat="server" Text="label"></asp:Label>
            </div>
             <div class="form-row align-items-baseline">
              <p class="col-sm-4 text-5 font-weight-400 text-sm-right mb-0 mb-sm-3">Time Slot:</p>
               <asp:Label ID="lblslot" class="col-sm-8  text-dark mb-0 mb-sm-3 font-weight-200 text-4" runat="server" Text="label"></asp:Label>
            </div>
             <div class="form-row align-items-baseline">
              <p class="col-sm-4 text-5 font-weight-400 text-sm-right mb-0 mb-sm-3">Payment Date:</p>
               <asp:Label ID="lblpdate" class="col-sm-8  text-dark mb-0 mb-sm-3 font-weight-200 text-4" runat="server" Text="label"></asp:Label>
            </div>
            <div class="form-row align-items-baseline">
              <p class="col-sm-4 text-5 font-weight-400 text-sm-right mb-0 mb-sm-3">Total Amount:</p>
               <asp:Label ID="lblprice" class="col-sm-8  text-dark mb-0 mb-sm-3 font-weight-200 text-4" runat="server" Text="label"></asp:Label>
            </div>
            <form runat="server" id="form1" method="post">
            <asp:Button ID="btn_Sub" runat="server"   class="btn btn-primary btn-block" 
                Text="Confirm" onclick="btn_Sub_Click" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server"   class="btn btn-danger btn-block" 
                Text="Cancle" onclick="Button1_Click" />
              <%--<button class="btn btn-primary btn-block">Request Money</button>--%>
            </form>
            <!-- Request Money Confirm Details end --> 
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Content end --> 
  
  
<!-- Document Wrapper end --> 

<!-- Back to Top
============================================= --> 
<a id="back-to-top" data-toggle="tooltip" title="Back to Top" href="javascript:void(0)"><i class="fa fa-chevron-up"></i></a> 

<!-- Styles Switcher -->
<div id="styles-switcher" class="left">
  <h2 class="text-3">Color Switcher</h2>
  <hr>
  <ul>
    <li class="blue" data-toggle="tooltip" title="Blue" data-path="http://demo.harnishdesign.net/html/payyed/css/color-blue.css"></li>
	<li class="indigo" data-toggle="tooltip" title="Indigo" data-path="http://demo.harnishdesign.net/html/payyed/css/color-indigo.css"></li>
    <li class="purple" data-toggle="tooltip" title="Purple" data-path="http://demo.harnishdesign.net/html/payyed/css/color-purple.css"></li>
	<li class="pink" data-toggle="tooltip" title="Pink" data-path="http://demo.harnishdesign.net/html/payyed/css/color-pink.css"></li>
	<li class="red" data-toggle="tooltip" title="Red" data-path="http://demo.harnishdesign.net/html/payyed/css/color-red.css"></li>
    <li class="orange" data-toggle="tooltip" title="Orange" data-path="http://demo.harnishdesign.net/html/payyed/css/color-orange.css"></li>
	<li class="yellow" data-toggle="tooltip" title="Yellow" data-path="http://demo.harnishdesign.net/html/payyed/css/color-yellow.css"></li>
	<li class="teal" data-toggle="tooltip" title="Teal" data-path="http://demo.harnishdesign.net/html/payyed/css/color-teal.css"></li>
    <li class="cyan" data-toggle="tooltip" title="Cyan" data-path="http://demo.harnishdesign.net/html/payyed/css/color-cyan.css"></li>
    <li class="brown" data-toggle="tooltip" title="Brown" data-path="http://demo.harnishdesign.net/html/payyed/css/color-brown.css"></li>
  </ul>
  <button class="btn btn-dark btn-sm btn-block border-0 font-weight-400 rounded-0 shadow-none" data-toggle="tooltip" title="Green" id="reset-color">Reset Default</button>
  <button class="btn switcher-toggle"><i class="fas fa-cog"></i></button>
</div>
<!-- Styles Switcher End --> 

<!-- Script --> 
<script src="http://demo.harnishdesign.net/html/payyed/vendor/jquery/jquery.min.js"></script> 
<script src="http://demo.harnishdesign.net/html/payyed/vendor/bootstrap/js/bootstrap.bundle.min.js"></script> 
<script src="http://demo.harnishdesign.net/html/payyed/vendor/bootstrap-select/js/bootstrap-select.min.js"></script> 
<!-- Style Switcher --> 
<script src="http://demo.harnishdesign.net/html/payyed/js/switcher.min.js"></script> 
<script src="http://demo.harnishdesign.net/html/payyed/js/theme.js"></script>
</body>

<!-- Mirrored from demo.harnishdesign.net/html/payyed/request-money-confirm.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 15 May 2021 12:23:44 GMT -->
</html>