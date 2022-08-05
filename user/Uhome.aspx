<%@ Page Title="" Language="C#" MasterPageFile="~/user/Umaster.master" AutoEventWireup="true" CodeFile="Uhome.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<div class="main-banner-wrapper">
<div class="main-banner-single">
<img src="assets/images/banner-1.jpg" class="image-fit" alt="banner">
<div class="overlay overlay-bg-black"></div>
</div>
<div class="banner-text transform-center">
<div class="container">
<div class="row justify-content-center">
<div class="col-12">
<div class="content-wrapper">
<h1 class="text-custom-white">CRONA VIRUS (COVID-19) TRACKER</h1>
<h4 class="text-custom-white">TOTAL CONFIRMED CRONA VIRUS CASES</h4>
<h2 class="text-theme count"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h2>
</div>
    
</div>
</div>
</div>
</div>
</div>


<section class="section-padding our-doctors">
<div class="container">
<div class="section-header">
<div class="section-heading text-center">
<h3 class="text-custom-black fw-600">Our Specialist</h3>
<div class="section-description">
<p class="text-theme fs-16 fw-500">
Our Doctors are the best for any treatment they are highly exeperienced in treatment and operation they all are high qulified.</p>
</div>
</div>
</div>

<div class="row">

<div class="col-12">

<div class="doctors-slider row">
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
<ItemTemplate>
<div class="slide-item col-12"> 

<div class="our-doctors-grid">

<div class="img-wrap">

<img src="../DocImg/<%#Eval("img") %>" class="image-fit" alt="img">
</div>
<div class="caption">
<h4 class="fw-600 no-margin"><a href="Ddetails.aspx?dname=<%#Eval("dname") %>&hname=<%#Eval("hospital") %>&img=<%#Eval("img") %>&bio=<%#Eval("bio") %>" class="text-custom-white"><%#Eval("dname") %></a></h4>
</div>
<div class="hover-wrap">
<div class="text-wrap">
<h4 class="fw-600"><a href="Ddetails.aspx?dname=<%#Eval("dname") %>&hname=<%#Eval("hospital") %>&img=<%#Eval("img") %>&bio=<%#Eval("bio") %>" class="text-custom-white"><%#Eval("dname") %></a></h4>
<p class="text-custom-white mb-xl-20"><%#Eval("bio") %> Hospital Name <%#Eval("hospital") %></p>
<ul class="custom-flex justify-content-center">
<li>
<a href="#" class="text-custom-white"><i class="fab fa-facebook-f"></i></a>
</li>
<li>
<a href="#" class="text-custom-white"><i class="fab fa-twitter"></i></a>
</li>
<li>
<a href="#" class="text-custom-white"><i class="fab fa-instagram"></i></a>
</li>
<li>
<a href="#" class="text-custom-white"><i class="fab fa-linkedin"></i></a>
</li>
</ul>
</div>
</div>

</div>
</div>


</ItemTemplate>
</asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [doctor_mstr]"></asp:SqlDataSource>
</div>

</div>

</div>
</div>

</section>



<%--<section class="corona-count-sec section-padding bg-custom-white">
<div class="container">
<div class="row">
<div class="col-12">
<div class="corona-count-bottom bg-custom-white">
<div class="row align-items-center">
<div class="col-lg-8">
<div class="content-sec mb-md-80">
<h3 class="text-custom-black fw-600">What is coronavirus, how did it start ?</h3>
<p class="fs-16 text-theme fw-600">Coronavirus disease (COVID-19) is an infectious disease caused by a new virus.</p>
<p class="text-light-white">The disease causes respiratory illness (like the flu) with symptoms such as a cough, fever, and in more severe cases, difficulty breathing. You can protect yourself by washing your hands frequently, avoiding touching your face, and avoiding close contact (1 meter or 3 feet) with people who are unwell.</p>
<ul class="custom">
<li>COVID-19 is the disease caused by the new coronavirus that emerged in China in December 2019.</li>
<li>The animal source of Covid-19 has not yet been identified, but the original host is thought to be bats.</li>
<li>COVID-19 symptoms such as a cough, fever, and in more severe cases, difficulty breathing, and some cases have caused death.</li>
</ul>
<a href="about.html" class="btn-submit btn_text_effect"><span class="button_title">Read More</span></a>
</div>
</div>
<div class="col-lg-4">
<div class="row">
<div class="col-lg-12 col-md-6">
<div class="case-box p-relative mb-xl-30">
<div class="title">
<h4 class="text-custom-white no-margin">Active Cases</h4>
</div>
<div class="content-box">
<div class="top-text text-center">
<h5 class="fw-600">619,808<span class="fs-14 text-light-white d-block fw-400">Currently Infected Patients</span></h5>
</div>
<div class="middle-text">
<div class="row">
<div class="col-6 text-left">
<h5 class="text-theme">588,335 <span class="fs-16 text-custom-black">(95%)</span><span class="text-light-white fs-14 fw-400 d-block">in Mild Condition</span></h5>
</div>
<div class="col-6 text-right">
<h5 class="text-custom-theme">31,473 <span class="fs-16 text-custom-black">(5%)</span><span class="text-light-white fs-14 fw-400 d-block">Serious or Critical</span></h5>
</div>
</div>
</div>
<div class="bottom-text text-center">
<a href="statics.html" class="btn-small btn-submit btn_text_effect"><span class="button_title">View All</span></a>
</div>
</div>
</div>
<div class="case-box p-relative">
<div class="title">
<h4 class="text-custom-white no-margin">Closed Cases</h4>
</div>
<div class="content-box">
<div class="top-text text-center">
<h5 class="fw-600">217,307<span class="fs-14 text-light-white d-block fw-400">Cases which had an outcome:</span></h5>
</div>
<div class="middle-text">
<div class="row">
<div class="col-6 text-left">
<h5 class="text-theme">176,058 <span class="fs-16 text-custom-black">(81%)</span><span class="text-light-white fs-14 fw-400 d-block">Recovered</span></h5>
</div>
<div class="col-6 text-right">
<h5 class="text-custom-theme">41,249 <span class="fs-16 text-custom-black">(19%)</span><span class="text-light-white fs-14 fw-400 d-block">Deaths</span></h5>
</div>
</div>
</div>
<div class="bottom-text text-center">
<a href="statics.html" class="btn-small btn-submit btn_text_effect"><span class="button_title">View All</span></a>
</div>
</div>
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
--%>

<section class="section-padding corona-symptoms parallax">
<div class="overlay overlay-bg-theme"></div>
<div class="container">
<div class="section-header">
<div class="section-heading text-center">
<h3 class="text-custom-white fw-600">Corona Virus Symptoms</h3>
<div class="section-description">
<p class="text-custom-white fs-16 fw-500">
Our Doctors are the best for any treatment they are highly exeperienced in treatment and operation they all are high qulified.</p>
</div>
</div>
</div>
<div class="row">
<asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
<ItemTemplate>

<div class="col-lg-4 col-md-6">
<div class="corona-sy-grid">
<br />
<div class="img-wrap">
<img src="../SImg/<%#Eval("spic") %>" class="image-fit" alt="img">
</div>
<div class="caption">
<h4 class="no-margin fw-600"><a href="#" class="text-custom-black"><%#Eval("sname") %></a></h4>
</div>
<div class="hover-wrap">
<div class="text-wrap">
<h4 class="fw-600"><a href="#" class="text-custom-black"><%#Eval("sname") %></a></h4>
<p class="text-light-white mb-xl-20"><%#Eval("sdis") %></p>

</div>
</div>
</div>
</div>

</ItemTemplate>
</asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [syn]"></asp:SqlDataSource>
</div>
</div>
</section>




<section class="section-padding our-faqs">
<div class="container">
<div class="section-header">
<div class="section-heading text-center">
<h3 class="text-custom-black fw-600">Frequently Ask Questions</h3>
<div class="section-description">
<p class="text-theme fs-16 fw-500">
Our Doctors are the best for any treatment they are highly exeperienced in treatment and operation they all are high qulified.</p>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-7">
<%--<div id="accordion" class="custom-accordion mb-md-80">
<div class="card mb-xl-20">
<div class="card-header" id="headingOne">
<button class="collapsebtn" data-toggle="collapse" data-target="#collapseOne">
What is coronavirus?
</button>
</div>
<div id="collapseOne" class="collapse show" data-parent="#accordion">
<div class="card-body">
<p class="text-light-white">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
<p class="text-light-white">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
<p class="text-light-white no-margin">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
</div>
</div>
</div>
<div class="card mb-xl-20">
<div class="card-header" id="headingTwo">
<button class="collapsebtn collapsed" data-toggle="collapse" data-target="#collapseTwo">
coronavirus 24/7 support.
</button>
</div>
<div id="collapseTwo" class="collapse" data-parent="#accordion">
<div class="card-body">
<p class="text-light-white">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
<p class="text-light-white">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
<p class="text-light-white no-margin">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
</div>
</div>
</div>
<div class="card mb-xl-20">
<div class="card-header" id="headingThree">
<button class="collapsebtn collapsed" data-toggle="collapse" data-target="#collapseThree">
Coronavirus: Symptoms, Diagnosis, Treatment ?
</button>
</div>
<div id="collapseThree" class="collapse" data-parent="#accordion">
<div class="card-body">
<p class="text-light-white">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
<p class="text-light-white">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
<p class="text-light-white no-margin">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
</div>
</div>
</div>
<div class="card mb-xl-20">
<div class="card-header" id="headingFour">
<button class="collapsebtn collapsed" data-toggle="collapse" data-target="#collapseFour">
Why is the disease being called coronavirus disease 2019, COVID-19?
</button>
</div>
<div id="collapseFour" class="collapse" data-parent="#accordion">
<div class="card-body">
<p class="text-light-white">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
<p class="text-light-white">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
<p class="text-light-white no-margin">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
</div>
</div>
</div>
<div class="card mb-xl-20">
<div class="card-header" id="headingFive">
<button class="collapsebtn collapsed" data-toggle="collapse" data-target="#collapseFive">
How can I help protect myself?
</button>
</div>
<div id="collapseFive" class="collapse" data-parent="#accordion">
<div class="card-body">
<p class="text-light-white">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
<p class="text-light-white">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
<p class="text-light-white no-margin">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
</div>
</div>
</div>
<div class="card">
<div class="card-header" id="headingSix">
<button class="collapsebtn collapsed" data-toggle="collapse" data-target="#collapseSix">
Has anyone in the United States gotten infected?
</button>
</div>
<div id="collapseSix" class="collapse" data-parent="#accordion">
<div class="card-body">
<p class="text-light-white">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
<p class="text-light-white">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
<p class="text-light-white no-margin">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
</p>
</div>
</div>
</div>
</div>--%>
</div>
<div class="col-lg-12 align-self-center">
<div class="faq-right text-center">
<div class="img-wrap mb-xl-20">
<img src="assets/images/faqs.jpg" class="image-fit" alt="img">
</div>
<h3 class="text-custom-black fw-600">Any Question ?</h3>
<p class="text-light-white mb-xl-20">You can ask anything you want to know about Feedback?.</p>
<div class="form mb-xl-20">
<input type="search" name="#" class="form-control form-control-custom" placeholder="Enter Here">
</div>
<asp:Button ID="Button1" runat="server" Text="Send" 
        class="btn-submit btn_text_effect" onclick="Button1_Click"></asp:Button>

</div>
</div>
</div>
</div>
</section>

<section class="section-padding corona-precautions parallax">
<div class="overlay overlay-bg-theme"></div>
<div class="container">
<div class="section-header">
<div class="section-heading text-center">
<h3 class="text-custom-white fw-600">Important Services</h3>
<div class="section-description">
<p class="text-custom-white fs-16 fw-500">
Our Hospital's are the best for any treatment they are highly facilaited in treatment and operation.</p>
</div>
 </div>
</div>

<div class="row">
<asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
<ItemTemplate>
<div class="col-lg-4 col-md-6">
<div class="precautions-box">
<br />
<div class="img-wrap animate-img">
<img src="../Hos_service_img/<%#Eval("img") %>" class="image-fit" alt="img">
</div>
<div class="content-wrap">
<h5 class="fw-600"><a href="#" class="text-custom-black"><%#Eval("servicename") %></a></h5>
<p class="text-light-white no-margin"><%#Eval("dis") %></p>
</div>
</div>

</div>
</ItemTemplate></asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Constr %>" 
        SelectCommand="SELECT * FROM [service_mstr]"></asp:SqlDataSource>
</div>
</div>
</section>



<section class="section-padding sponsors">
<div class="container">
<div class="section-header">
<div class="section-heading text-center">
<h3 class="text-custom-black fw-600">Follow steps to wash hands</h3>
<div class="section-description">
<p class="text-theme fs-16 fw-500">
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
</div>
</div>
</div>
<div class="row">
<div class="col-12">
<div class="sponser-slider row">
<div class="sponsor-item col-12">
<div class="sponsor-thumb animate-img text-center">
<a href="#">
<img src="assets/images/soap-hand.png" class="image-fit mb-3" alt="img">
<h5 class="text-custom-black fs-18 no-margin">Soap on Hand</h5>
</a>
</div>
</div>
<div class="sponsor-item col-12">
<div class="sponsor-thumb animate-img text-center">
<a href="#">
<img src="assets/images/palm-to-palm.png" class="image-fit mb-3" alt="img">
<h5 class="text-custom-black fs-18 no-margin">Palm to Palm</h5>
</a>
</div>
</div>
<div class="sponsor-item col-12">
<div class="sponsor-thumb animate-img text-center">
<a href="#">
<img src="assets/images/between-finger.png" class="image-fit mb-3" alt="img">
<h5 class="text-custom-black fs-18 no-margin">Between Fingers</h5>
</a>
</div>
</div>
<div class="sponsor-item col-12">
<div class="sponsor-thumb animate-img text-center">
<a href="#">
<img src="assets/images/hand-back.png" class="image-fit mb-3" alt="img">
<h5 class="text-custom-black fs-18 no-margin">Back to Hands</h5>
</a>
</div>
</div>
<div class="sponsor-item col-12">
<div class="sponsor-thumb animate-img text-center">
<a href="#">
<img src="assets/images/cl-water.png" class="image-fit mb-3" alt="img">
<h5 class="text-custom-black fs-18 no-margin">Clean with Water</h5>
</a>
</div>
</div>
<div class="sponsor-item col-12">
<div class="sponsor-thumb animate-img text-center">
<a href="#">
<img src="assets/images/wrist.png" class="image-fit mb-3" alt="img">
<h5 class="text-custom-black fs-18 no-margin">Focus on Wrist</h5>
</a>
</div>
</div>
</div>
</div>
</div>
</div>
</section>



<section class="section-padding our_articles normal-bg">
<div class="overlay overlay-bg-theme"></div>
<div class="container">
<div class="section-header">
<div class="section-heading text-center">
<h3 class="text-custom-white fw-600">Our Most Popular Blog</h3>
<div class="section-description">
<p class="text-custom-white fs-16 fw-500">
Our Hospital provide the events on special day with special action for any requirement and need of our patients. 
</p>
</div>
</div>
</div>
<div class="row">
<div class="col-12">
<div class="blog-slider row">
<asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource4"><ItemTemplate>

<article class="post slide-item col-12">
<div class="post-wrapper bx-wrapper">
<div class="post-img p-relative">
<a href="blog-details.html">
<img src="../event_img/<%#Eval("img") %>" class="full-width" alt="img">
</a>
&nbsp;<div class="post-date">
<%--<div class="text-custom-white fw-600 date bg-theme"></div>
<div class="text-custom-white year"></div>--%>
</div>
</div>
<div class="blog-meta padding-20 bg-custom-white p-relative">
<%--<div class="post-meta mb-xl-20">
<a href="blog-details.html" class="text-light-white fs-14 mr-2">
<span class="text-theme">
<i class="fas fa-comment"></i>
</span> 
</a>
<a href="blog-details.html" class="text-light-white fs-14 mr-2">
<span class="text-theme">
<i class="fas fa-thumbs-up"></i>
</span> 
</a>
</div>--%>
<div class="post-heading">
<h2 class="fs-20">
<a href="blog-details.html" class="text-custom-black fw-600 fs-20"><%#Eval("ename") %></a>
</h2>
<p class="text-light-white no-margin"><%#Eval("dis") %></p>
</div>
</div>
<div class="post-footer">
<div class="post-author">
<div class="post-author-img rounded-circle">
<img src="../event_img/<%#Eval("img") %>" class="rounded-circle" alt="img">
</div>
<cite>
<a href="blog-details.html" class="text-custom-black fw-500 fs-14"><%#Eval("ename") %></a>
</cite>
</div>
<a href="Edetails.aspx?ename=<%#Eval("ename") %>&img=<%#Eval("img") %>&dis=<%#Eval("dis") %>&hname=<%#Eval("hospital") %>" class="btn-small btn-submit btn_text_effect" class="btn-submit btn_text_effect full-width"><span class="button_title">Read More</span></a>
</div>
</div>
</article>
</ItemTemplate></asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Constr %>" 
        SelectCommand="SELECT * FROM [event_mstr]"></asp:SqlDataSource>
</div>
</div>
</div>
</div>
</section>


<section class="section-padding sponsors">
<div class="container">
</div>
</section>

    </form>
</asp:Content>

