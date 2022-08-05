<%@ Page Title="" Language="C#" MasterPageFile="~/user/Umaster.master" AutoEventWireup="true" CodeFile="Ddetails.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server">
<div class="subheader normal-bg section-padding">
<div class="overlay overlay-bg-theme"></div>
<div class="container">
<div class="row">
<div class="col-12">
<div class="breadcrumb-text">
<h1 class="text-custom-white">Doctors Details</h1>
<ul class="custom-flex">
<li>
<a href="index.html" class="text-custom-white">Home</a>
</li>
<li>
<a href="blog.html" class="text-custom-white">Doctors</a>
</li>
<li class="active">Doctors Details</li>
</ul>
</div>
</div>
</div>
</div>
</div>


<section class="section-padding blog-details bg-light-white">
<div class="container">
<div class="row">
<div class="col-lg-8">
<div class="blog-details-wrap mb-xl-80">

<h2 class="post-title"><a href="#" class="text-custom-black">THE BEST DOCTORS FROM OUR HOSPITALS</a></h2>
<div class="post-img animate-img mb-xl-20">
<a href="Dinfo.aspx">
<asp:Image ID="Image1" runat="server" class="image-fit" alt="img"></asp:Image>
<%--<img src="../DocImg/<%#Eval("img") %>" class="image-fit" alt="img">--%>
</a>

</div>
<div class="blog-meta">
<p class="text-theme">
HOSPITAL NAME &nbsp&nbsp&nbsp<asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Black"></asp:Label><br />
DOCTOR &nbsp NAME &nbsp&nbsp&nbsp<asp:Label ID="Label2" runat="server" Text="Label"  ForeColor="Black"></asp:Label><br />
BIO  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="Label3"  ForeColor="Black" runat="server" Text="Label"></asp:Label><br />
</p>
</div>

<hr>

</div>

<div class="comment-box p-relative mb-md-80">
<div id="comment-box">
<h4 class="text-custom-black">Reviews</h4>
<ul class="comments">
<asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
<ItemTemplate>
<li class="comment">
<article>
<div class="comment-avatar">
<img src="../User_img/<%#Eval("img") %>" class="rounded-circle" alt="comment">
</div>
<div class="comment-content">
<div class="comment-meta">
<div class="comment-meta-header">
<h5 class="text-custom-theme fw-600 author mb-2 mr-3"><%#Eval("name") %></h5>
<div class="post-date mb-xl-20">
<a href="blog-details.html" class="date text-light-white"><%#Eval("email") %></a>

</div>
</div>
</div>
<div class="comment">
<p class="text-light-white"><%#Eval("review") %></p>
</div>
<div class="comment-meta-reply">
<button type="submit" class="comment-reply-link btn-small btn-submit btn_text_effect"><span class="button_title">Reply</span></button>
</div>
</div>
</article>
</li>
</ItemTemplate>
</asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Constr %>" 
        SelectCommand="SELECT * FROM [Feedback_mstr]"></asp:SqlDataSource>
</ul>
<div class="comment-respond" id="respond">
<h4 class="text-custom-black fw-600">Leave Comment</h4>
<form class="form-style-1">
<div class="row">
<div class="col-12">

<div class="form-group">
<label>Comment</label>
<asp:TextBox ID="txtview" class="form-control form-control-custom bg-custom-white" runat="server"></asp:TextBox>
<%--<textarea rows="5" name="#" class="form-control form-control-custom bg-custom-white"></textarea>--%>
</div>
<asp:Button ID="Button1" class="btn-small btn-submit btn_text_effect"  runat="server" Text="Leave Comment" onclick="Button1_Click"></asp:Button>
<%--<button type="submit" class="btn-submit btn_text_effect full-width"><span class="button_title">Leave Comment</span></button>--%>
</div>
</div>
</form>
</div>
</div>
</div>

</div>
<aside class="col-lg-4">
<div class="sidebar_wrap">
<div class="sidebar">














</div>
</div>
</aside>
</div>
</div>
</section>


<section class="section-padding our_articles no-bg">
<div class="container">
<div class="section-header">
<div class="section-heading text-center">
<h3 class="text-custom-black fw-600">Doctors Profiles</h3>
<div class="section-description">
<p class="text-theme fs-16 fw-500">“The aim of medicine is to prevent disease and prolong life; the ideal of medicine is to eliminate the need of a physician.”
</p>
</div>
</div>
</div>
<div class="row">
<div class="col-12">
<div class="blog-slider row">



<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
<ItemTemplate>
<article class="post col-lg-4 col-md-6">
<div class="post-wrapper bx-wrapper mb-xl-30">
<div class="post-img p-relative">
<a href="Dinfo.aspx">
<img src="../DocImg/<%#Eval("img") %>" class="full-width" alt="img">
</a>
&nbsp;&nbsp;&nbsp;</div>
<div class="blog-meta padding-20 bg-custom-white p-relative">

<div class="post-heading">
<h2 class="fs-20">
<a href="blog-details.html" class="text-custom-black fw-600 fs-20"><%#Eval("dname") %></a>
</h2>
<b><p class="text-light-white no-margin"><%#Eval("bio") %></p></b>
<b><p class="text-light-white no-margin"><%#Eval("hospital") %></p></b>
</div>
</div>
<div class="post-footer">
<div class="post-author">
<div class="post-author-img rounded-circle">
<img src="../DocImg/<%#Eval("img") %>" class="rounded-circle" alt="img">
</div>
<cite>
<a href="blog-details.html" class="text-custom-black fw-500 fs-14"><%#Eval("dname") %></a>
</cite>
</div>
<a href="Ddetails.aspx?dname=<%#Eval("dname") %>&hname=<%#Eval("hospital") %>&img=<%#Eval("img") %>&bio=<%#Eval("bio") %>" class="btn-submit btn_text_effect full-width"><span class="button_title">Read More</span></a>
</div>
</div>
</article>
</ItemTemplate>
</asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Constr %>" 
        SelectCommand="SELECT * FROM [doctor_mstr]"></asp:SqlDataSource>




</div>
</div>
</div>
</div>
</section>
</form>
</asp:Content>

