<%@ Page Title="" Language="C#" MasterPageFile="~/user/Umaster.master" AutoEventWireup="true" CodeFile="EList.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

<div class="subheader normal-bg section-padding">
<div class="overlay overlay-bg-theme"></div>
<div class="container">
<div class="row">
<div class="col-12">
<div class="breadcrumb-text">
<h1 class="text-custom-white">Eventss</h1>
<ul class="custom-flex">
<li>
<a href="index.html" class="text-custom-white">Home</a>
</li>
<li class="active">Events</li>
</ul>
</div>
</div>
</div>
</div>
</div>


<section class="section-padding">
<div class="container">
<div class="row">
<aside class="col-lg-4">
<div class="sidebar_wrap mb-md-80">
<div class="sidebar">



<div class="sidebar_widgets mb-xl-30">
<div class="widget_title">
<h5 class="no-margin text-custom-black">Recent Posts</h5>
</div>
<ul class="popular-post custom recent-post-slider sidebar-arrow">
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
<ItemTemplate>
<li class="post-box">
<div class="post-img animate-img p-relative mb-xl-20">
<a href="Edetails.aspx?ename=<%#Eval("ename") %>&img=<%#Eval("img") %>&dis=<%#Eval("dis") %>&hname=<%#Eval("hospital") %>">
<img src="../event_img/<%#Eval("img") %>" class="image-fit" alt="img">
</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="post-meta">
<a href="Edetails.aspx?ename=<%#Eval("ename") %>&img=<%#Eval("img") %>&dis=<%#Eval("dis") %>&hname=<%#Eval("hospital") %>" class="btn-small btn-submit btn_text_effect"><span class="button_title">Read More</span></a>
<div class="comnt"> <span ></span></div>
</div>
</div>
<p><a href="blog-details.html" class="text-light-white"><%#Eval("dis") %></a></p>
</li>
</ItemTemplate>
</asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Constr %>" 
        SelectCommand="SELECT * FROM [event_mstr]"></asp:SqlDataSource>
</ul>
</div>


<div class="sidebar_widgets">
<div class="widget_title">
<h5 class="no-margin text-custom-black">Tags</h5>
</div>
<div class="blog-tags">
<a href="#">Corona</a>
<a href="#">News</a>
<a href="#">Luxury</a>
<a href="#">Themeforest</a>
<a href="#">Code</a>
<a href="#">Studio</a>
<a href="#">Lands</a>
<a href="#">Commericial</a>
<a href="#">Office</a>
<a href="#">Industrial</a>
<a href="#">Colorful</a>
<a href="#">Comfortable</a>
<a href="#">Design</a>
<a href="#">Interior</a>
<a href="#">Listing</a>
<a href="#">Property</a>
<a href="#">Renovated</a>
<a href="#">Virus</a>
</div>
</div>

</div>
</div>
</aside>
<div class="col-lg-8">
<div class="row our_articles no-bg">
<asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
<ItemTemplate>
<article class="post col-lg-4 col-md-6">
<div class="post-wrapper bx-wrapper mb-xl-30">
<div class="post-img p-relative">
<a href="EList.aspx">
<img src="../event_img/<%#Eval("img") %>" class="full-width" alt="img">
</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div class="blog-meta padding-20 bg-custom-white p-relative">

<div class="post-heading">
<h2 class="fs-20">
<a href="Edetails.aspx?ename=<%#Eval("ename") %>&img=<%#Eval("img") %>&dis=<%#Eval("dis") %>&hname=<%#Eval("hospital") %>" class="text-custom-black fw-600 fs-20"><%#Eval("ename") %></a>
</h2>
<b><p class="text-light-white no-margin"><%#Eval("dis") %></p></b>

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
<a href="Edetails.aspx?ename=<%#Eval("ename") %>&img=<%#Eval("img") %>&dis=<%#Eval("dis") %>&hname=<%#Eval("hospital") %>" class="btn-submit btn_text_effect full-width"><span class="button_title">Read More</span></a>
</div>
</div>
</article>
</ItemTemplate>
</asp:Repeater>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Constr %>" 
        SelectCommand="SELECT * FROM [event_mstr]"></asp:SqlDataSource>


</div>

</div>
</div>
</div>
</section>
    </form>
</asp:Content>

