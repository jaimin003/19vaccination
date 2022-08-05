<%@ Page Title="" Language="C#" MasterPageFile="~/hospital/Hmaster.master" AutoEventWireup="true" CodeFile="HosDoc_edit.aspx.cs" Inherits="hospital_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<form id="form1" runat="server">




		<div class="container-fluid">


			<!-- Navigation start -->
			<nav class="navbar navbar-expand-lg custom-navbar">
						</nav>
			<!-- Navigation end -->


			<!-- *************
				************ Main container start *************
			************* -->
			<div class="main-container">


				<!-- Page header start -->
				<div class="page-header">
					<ol class="breadcrumb">
						<li class="breadcrumb-item">Doctors</li>
						<li class="breadcrumb-item active">Add Doctor Details</li>
					</ol>
					
				</div>
				<!-- Page header end -->


				<!-- Content wrapper start -->
				<div class="content-wrapper">

					<!-- Row start -->
					<div class="row gutters">
					<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12">
							<div class="card">
								<div class="card-body">
									<div class="doctor-profile">
										<div class="doctor-thumb">
                                                <asp:Image ID="Image1" runat="server" alt="Doctor Image"/>
										</div>
										<div class="input-group mb-3">
											<div class="custom-file">
												<%--<input type="file" class="custom-file-input" id="changeProfile" aria-describedby="changeProfile">--%>
                                                <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />&nbsp
                                                
												<%--<label class="custom-file-label" for="changeProfile">Update Image</label>--%>
                                                <asp:Label ID="Label1" runat="server" Text="" class=" text-primary"></asp:Label>
                                                <asp:Button ID="btn_upload" class="btn btn-success" runat="server" 
                                                    Text="Upload" onclick="btn_upload_Click" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-8 col-lg-6 col-md-12 col-sm-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">Enter Doctor Details</div>
								</div>
								<div class="card-body">
									<div class="row gutters">
                                    	
                                   
										<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">Doctor Name</label>
												<%--<input type="text" class="form-control" id="fullName" placeholder="Enter Doctor Name">--%>
                                                <asp:TextBox ID="txtdname" runat="server" class="form-control" placeholder="Enter Doctor Name"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ErrorMessage="Plzz Enter Doctor Name*" ControlToValidate="txtdname" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
										<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputEmail">Doctor Email</label>
												<%--<input type="email" class="form-control" id="inputEmail" placeholder="doctor@bm.com">--%>
                                                <asp:TextBox ID="txtmail" runat="server" class="form-control" placeholder="Enter Doctor Email" TextMode="Email"> </asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                    ErrorMessage="Ivalid Doctor Email*" ControlToValidate="txtmail" ForeColor="Red" 
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
											</div>
										</div>
									
                                     
                                         <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputSpeciality">Change Your Fees</label>
												<%--<input type="text" class="form-control" id="Text2" placeholder="Contact number">--%>
                                                <asp:TextBox ID="txtfees" runat="server" class="form-control" placeholder="Enter Fees"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ErrorMessage="Plzz Enter Your New Fees Amount*" ControlToValidate="txtfees"></asp:RequiredFieldValidator>
											</div>
										</div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputSpeciality">Contact Number</label>
												<%--<input type="text" class="form-control" id="Text2" placeholder="Contact number">--%>
                                                <asp:TextBox ID="txtphno" runat="server" class="form-control" 
                                                    placeholder="Contact number" TextMode="Phone"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                    ErrorMessage="Plzz Enter Doctor Phone Number*" ControlToValidate="txtphno" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
									
										<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
											<div class="form-group">
												<label for="biO">Bio</label>
												<%--<textarea class="form-control" id="biO" rows="3" placeholder="Description"></textarea>--%>
                                                <asp:TextBox ID="txtbio" runat="server" class="form-control" TextMode="MultiLine" placeholder="Description"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                    ErrorMessage="Plzz Enter Doctor Bio*" ControlToValidate="txtbio" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
                                        
										<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
											<div class="text-center">
												<%--<button class="btn btn-primary">Add Doctor</button>--%>
                                                <asp:Button ID="btn_update" runat="server" class="btn btn-primary" 
                                                    Text="Update Doctor" onclick="btn_update_Click"  />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
					</div>
					<!-- Row end -->

				</div>
				<!-- Content wrapper end -->

			</div>
			<!-- *************
				************ Main container end *************
			************* -->

			

		</div>

		<!-- *************
			************ Required JavaScript Files *************
		************* -->
		<!-- Required jQuery first, then Bootstrap Bundle JS -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.bundle.min.js"></script>
		<script src="js/moment.js"></script>


		<!-- *************
			************ Vendor Js Files *************
		************* -->

		<!-- Main Js Required -->
		<script src="js/main.js"></script>

	</body>

<!-- Mirrored from bootstrap.gallery/royal-hospital-admin/design-option-2/hospital-add-doctor.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 15 Apr 2021 07:32:38 GMT -->
</html>
        </form>

</asp:Content>

