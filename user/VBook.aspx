<%@ Page Title="" Language="C#" MasterPageFile="~/user/Umaster.master" AutoEventWireup="true" CodeFile="VBook.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server">
<div class="subheader normal-bg section-padding">
<div class="overlay overlay-bg-theme"></div>
<div class="container">
<div class="row">
<div class="col-12">
<div class="breadcrumb-text">
<h1 class="text-custom-white">Vaccine Booking</h1>
<ul class="custom-flex">
<li>
<a href="index.html" class="text-custom-white">Home</a>
</li>
<li class="active">Vaccine Booking</li>
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
<img src="assets/images/bg-blog.jpg" class="image-fit" alt="docimg">
</div>
</div>
<div class="col-lg-6">
<div class="appointment-form bg-custom-white bx-wrapper text-center full-height">
<h1 class="text-custom-black mb-xl-30">Book Vaccine </h1>

<div class="row">
<div class="col-12">
<div class="form-group">
<label  style="font-size: 17px">Select Identity Proof <sup class="required">*</sup></label>
                               <asp:DropDownList ID="ddlidname" runat="server" class="form-control">
                                   <asp:ListItem>AADHAR CARD</asp:ListItem>
                                   <asp:ListItem>PAN CARD</asp:ListItem>
                                   <asp:ListItem>DRIVING LISENCE</asp:ListItem>
                               </asp:DropDownList>   
</div>
<div class="form-group">
<label  style="font-size: 17px">Identity Number <sup class="required">*</sup></label>
 <asp:TextBox ID="txtano" class="form-control" runat="server" placeholder="Enter Your Identity Number"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Identity Number" 
                                       ControlToValidate="txtano" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<label  style="font-size: 17px">Gender <sup class="required">*</sup></label>
<div class="radio-box form-group">
<div class="custom-radio">
     <asp:RadioButtonList  ID="rdgen"  runat="server" 
                                CellPadding="10" RepeatDirection="Horizontal" CellSpacing="10" 
                                Height="22px" Width="526px">
                                          <asp:ListItem>Male</asp:ListItem>
                                          <asp:ListItem>Female</asp:ListItem>
                                          <asp:ListItem>Other</asp:ListItem>
                            </asp:RadioButtonList> 
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="Please Select Your Gender*" ControlToValidate="rdgen" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
</div>
</div>

<div class="form-group">
<label  style="font-size: 17px">Date. <sup class="required">*</sup></label>
<asp:TextBox ID="txtdate" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="Please Select A date*" ControlToValidate="txtdate" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
<label  style="font-size: 17px">Time Slot. <sup class="required">*</sup></label>
<asp:DropDownList ID="ddlslot" runat="server" class="form-control">
                                   <asp:ListItem>10:00 AM -  11:00 AM</asp:ListItem>
                                   <asp:ListItem>11:00 AM- 12:00 PM</asp:ListItem>
                                   <asp:ListItem>12:00 PM- 1:00 PM</asp:ListItem>
                                   <asp:ListItem>1:00 PM- 4:00 PM</asp:ListItem>
                               </asp:DropDownList>     
</div>

<div class="form-group">
<label  style="font-size: 17px">Vaccine Dose <sup class="required">*</sup></label>
  <asp:TextBox ID="txtdose" class="form-control" runat="server"></asp:TextBox>
</div>

 

<asp:Button ID="Button1" class="btn-small btn-submit btn_text_effect" 
        runat="server" Text="Request Vaccine" onclick="Button1_Click"></asp:Button>

</div>
</div>
</div>
</div>
</div>
</div>
</section>
</form>

</asp:Content>

