<%@ Page Title="" Language="C#" MasterPageFile="~/user/Umaster.master" AutoEventWireup="true" CodeFile="Vupro.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" runat="server">
<div class="subheader normal-bg section-padding">
<div class="overlay overlay-bg-theme"></div>
<div class="container">
<div class="row">
<div class="col-12">
<div class="breadcrumb-text">
<h1 class="text-custom-white">User Profile</h1>
<ul class="custom-flex">
<li>
<a href="index.html" class="text-custom-white">Home</a>
</li>
<li class="active">View Profile</li>
</ul>
</div>
</div>
</div>
</div>
</div>


<section class="section-padding bg-light-white appointment-sec">

<div class="container">
<div class="row">
<div class="col-lg-6">
<div class="img-wrap full-height mb-md-80">

<asp:Image ID="Image1" runat="server" class="image-fit" alt="userimg"></asp:Image>
<%--<img src="assets/images/bg-blog.jpg" class="image-fit" alt="docimg">--%>
</div>
</div>
<div class="col-lg-6">
<div class="appointment-form bg-custom-white bx-wrapper text-center full-height">
<h1 class="text-custom-black mb-xl-30">View Profile </h1>

<div class="row">
<div class="col-12">

<div class="form-group">
<label  style="font-size: 17px">User Name </label>
 <asp:TextBox ID="txtname"  class="form-control" runat="server" 
        ReadOnly="True"></asp:TextBox>
</div>

<div class="form-group">
<label  style="font-size: 17px">User Email</label>
 <asp:TextBox ID="txtemail"  class="form-control" runat="server" 
        ReadOnly="True"></asp:TextBox>
</div>

<div class="form-group">
<label  style="font-size: 17px">Contact No</label>
 <asp:TextBox ID="txtcno"  class="form-control" runat="server" 
        ReadOnly="True"></asp:TextBox>
</div>

<div class="form-group">
<label  style="font-size: 17px">Age</label>
 <asp:TextBox ID="txtage"  class="form-control" runat="server" 
        ReadOnly="True"></asp:TextBox>
</div>
 

 <asp:Button ID="Button1" class="btn-small btn-submit btn_text_effect" 
        runat="server" Text="Go Home" onclick="Button1_Click1" ></asp:Button>
</div>



</div>
</div>
</div>
</div>
</div>


        

</section>
</form>

</asp:Content>

