<%@ Page Title="" Language="C#" MasterPageFile="~/hospital/Hmaster.master" AutoEventWireup="true" CodeFile="Hevent.aspx.cs" Inherits="hospital_Default" %>

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
							<a href="#">Events</a>
						</li>
						<li class="breadcrumb-item active">Add Event</li>
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
										<div class="card-title">Add Event</div>
										<div class="card-sub-title">Add Your Hospital Events</div>
									</div>
									<div class="card-body">
										<div class="form-group">
											<%--<input type="text" class="form-control" id="name" name="name" placeholder="Name" required="">--%>
                                            <asp:TextBox ID="txtename" class="form-control" runat="server" placeholder="Event Name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ErrorMessage="Plzz Enter Event Name*" ControlToValidate="txtename" 
                                                ForeColor="Red"></asp:RequiredFieldValidator>
										</div>
                                        <div class="form-group">
											<%--<input type="text" class="form-control" id="name" name="name" placeholder="Name" required="">--%>
                                            <asp:TextBox ID="txtedesc" class="form-control" runat="server" placeholder="Event Description"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ErrorMessage="Plzz Enter Event Description*" ControlToValidate="txtedesc" 
                                                ForeColor="Red"></asp:RequiredFieldValidator>
										</div>
										<div class="form-group">
											<%--<input type="email" class="form-control" id="email" name="email" placeholder="Email" required="">--%>
                                            <asp:TextBox ID="txtdate" runat="server" class="form-control" placeholder="Event Date" TextMode="Date"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ErrorMessage="Plzz Enter Event Date*" ControlToValidate="txtdate" 
                                                ForeColor="Red"></asp:RequiredFieldValidator>
										</div>
                                        <div class="form-group">
											<%--<input type="text" class="form-control" id="name" name="name" placeholder="Name" required="">--%>
                                            <label class="form-label">Event Image:</label>
                                            <asp:FileUpload ID="FileUpload1" runat="server"  class="form-control"/><br />
                                            
                                            <asp:Image ID="Image1" runat="server" height="200" Width="250" /><br />
                                             <asp:Button ID="bt_upload" runat="server" Text="Uplaod Image" 
                                            class="btn btn-success" onclick="bt_upload_Click"  /><br />
                                            <asp:Label ID="Label1" runat="server" Text="" class="text-primary"></asp:Label><br />
                                           
										</div>
										
										<%--<button type="button" id="submit" name="submit" class="btn btn-primary float-right">Submit Form</button>--%>
                                        <asp:Button ID="Button1" runat="server" Text="Add Event" 
                                            class="btn btn-primary float-right" onclick="Button1_Click"  />
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


			


		
    </div>

</asp:Content>

