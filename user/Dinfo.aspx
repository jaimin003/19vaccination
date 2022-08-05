<%@ Page Title="" Language="C#" MasterPageFile="~/user/Umaster.master" AutoEventWireup="true" CodeFile="Dinfo.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

<div class="subheader normal-bg section-padding">
<div class="overlay overlay-bg-theme"></div>
<div class="container">
<div class="row">
<div class="col-12">
<div class="breadcrumb-text">
<h1 class="text-custom-white">Blog</h1>
<ul class="custom-flex">
<li>
<a href="index.html" class="text-custom-white">Home</a>
</li>
<li class="active">Blog</li>
</ul>
</div>
</div>
</div>
</div>
</div>


<section class="section-padding our_articles no-bg">
<div class="container">
<div class="row">
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
<ItemTemplate>
<article class="post col-lg-4 col-md-6">
<div class="post-wrapper bx-wrapper mb-xl-30">
<div class="post-img p-relative">
<a href="Dinfo.aspx">
<img src="../DocImg/<%#Eval("img") %>" class="full-width" alt="img">
</a>
&nbsp;&nbsp;</div>
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
</section>
    </form>
</asp:Content>

