<%@ Page Title="" Language="C#" MasterPageFile="~/hospital/Hmaster.master" AutoEventWireup="true" CodeFile="Hservice.aspx.cs" Inherits="hospital_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container-fluid">


			

			<!-- *************
				************ Main container start *************
			************* -->
			<div class="main-container">


				<!-- Page header start -->
				<div class="page-header">
					<ol class="breadcrumb">
						<li class="breadcrumb-item">Pages</li>
						<li class="breadcrumb-item">
							<a href="#">Services</a>
						</li>
						<li class="breadcrumb-item active">Add Service</li>
					</ol>
					
				</div>
				<!-- Page header end -->


				<!-- Content wrapper start -->
				<div class="content-wrapper">


					<div class="row gutters justify-content-center">
						<div class="col-xl-4 col-lg-4 col-md-5 col-sm-6 col-12">
							<form id="Form1" runat="server">
								<div class="card m-0">
									<div class="card-header">
										<div class="card-title">Add Services</div>
										<div class="card-sub-title">Add Your Hospital Services</div>
									</div>
									<div class="card-body">
										<div class="form-group">
											<%--<input type="text" class="form-control" id="name" name="name" placeholder="Name" required="">--%>
                                            <asp:TextBox ID="txtsname" class="form-control" runat="server" placeholder="Service Name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ErrorMessage="Plzz Enter Service NAme*" ControlToValidate="txtsname" 
                                                ForeColor="Red"></asp:RequiredFieldValidator>
										</div>
										<div class="form-group">
											<%--<input type="email" class="form-control" id="email" name="email" placeholder="Email" required="">--%>
                                            <asp:TextBox ID="txtdesc" runat="server" class="form-control" placeholder="Service Description"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ErrorMessage="Plzz Enter Service Description*" ControlToValidate="txtdesc" 
                                                ForeColor="Red"></asp:RequiredFieldValidator>
										</div>
                                        <div class="form-group">
											<%--<input type="email" class="form-control" id="email" name="email" placeholder="Email" required="">--%>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />

                                             <asp:Image ID="Image1" runat="server" />
                                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                                            <asp:Button ID="btn_upload" runat="server" Text="Upload" 
                                                class="btn btn-success" onclick="btn_upload_Click"/>
										</div>
										
										<%--<button type="button" id="submit" name="submit" class="btn btn-primary float-right">Submit Form</button>--%>
                                        <asp:Button ID="Button1" runat="server" Text="Add Service" 
                                            class="btn btn-primary float-right" onclick="Button1_Click" />
									</div>
								</div>
							</form>
						</div>
					</div>


				</div>
				<!-- Content wrapper end -->


			</div>
			<!-- *************
				************ Main container end *************
			************* -->


			<footer class="main-footer">© Royal Hospitals 2019</footer>


		</div>
</asp:Content>

