<%@ Page Title="" Language="C#" MasterPageFile="~/hospital/Hmaster.master" AutoEventWireup="true" CodeFile="editvacc.aspx.cs" Inherits="hospital_Default" %>

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
						<li class="breadcrumb-item">Vaccination</li>
						<li class="breadcrumb-item active">Add Vaccination Center</li>
					</ol>
					
				</div>
				<!-- Page header end -->


				<!-- Content wrapper start -->
				<div class="content-wrapper">

					<!-- Row start -->
					<div class="row gutters">
			
						<div class="col-xl-12 col-lg-6 col-md-12 col-sm-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">Update Vaccine Information</div>
								</div>
								<div class="card-body">
									<div class="row gutters">
                                    	
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">Enter Vaccine Name</label>
												<%--<input type="text" class="form-control" id="fullName" placeholder="Enter Doctor Name">--%>
                                                <asp:TextBox ID="txtvname" runat="server" class="form-control" placeholder="Enter Vaccine Name"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ErrorMessage="Plzz Enter Vaccine Name*" ControlToValidate="txtvname" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
										<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">Enter Age</label>
												<%--<input type="text" class="form-control" id="fullName" placeholder="Enter Doctor Name">--%>
                                               <asp:TextBox ID="txtage" runat="server" class="form-control" 
                                                    placeholder="Enter Vaccine Name" ReadOnly="True"></asp:TextBox>
											</div>
										</div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputEmail">Enter Vaccine Type</label>
												<%--<input type="email" class="form-control" id="inputEmail" placeholder="doctor@bm.com">--%>
                                                <asp:TextBox ID="txtvtype" runat="server" class="form-control" placeholder="Enter Vaccine Type"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                    ErrorMessage="Plzz Enter vaccine Type*" ControlToValidate="txtvtype" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
										<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputEmail">Enter Vaccine Manufecture</label>
												<%--<input type="email" class="form-control" id="inputEmail" placeholder="doctor@bm.com">--%>
                                                 <asp:TextBox ID="txtmfg" runat="server" class="form-control" placeholder="Enter Vaccine Manufecture"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ErrorMessage="Plzz Enter vaccine Manufecture*" ControlToValidate="txtmfg" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
										
										<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputSpeciality">Enter Vaccine Price</label>
												<%--<input type="text" class="form-control" id="inputSpeciality" placeholder="Speciality">--%>
                                                <asp:TextBox ID="txtprc" runat="server" class="form-control" placeholder="Price"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                    ErrorMessage="Plzz Enter Vaccine Prize*" ControlToValidate="txtprc" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputSpeciality">Total No of Vaccine</label>
												<%--<input type="text" class="form-control" id="Text2" placeholder="Contact number">--%>
                                                <asp:TextBox ID="txttotvac" runat="server" class="form-control" 
                                                    placeholder="Enter total vaccine stock" ReadOnly="True"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                    ErrorMessage="Plzz Enter Total Number of vaccine*" ControlToValidate="txttotvac" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>

                                           <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputSpeciality">Total No of Used Vaccine</label>
												<%--<input type="text" class="form-control" id="Text2" placeholder="Contact number">--%>
                                                <asp:TextBox ID="txtuvac" runat="server" class="form-control" placeholder="Enter total used vaccine stock"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                    ErrorMessage="Plzz Enter Total Number of used vaccine*" ControlToValidate="txtuvac" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>


                                           <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputSpeciality">Total No of remain Vaccine</label>
												<%--<input type="text" class="form-control" id="Text2" placeholder="Contact number">--%>
                                                <asp:TextBox ID="txtremain" runat="server" class="form-control" placeholder="Enter total remain vaccine stock"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                    ErrorMessage="Plzz Enter Total Number of remain vaccine*" ControlToValidate="txtremain" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
											</div>
										</div>
                                     
										
										<div class="col-xl-7 col-lg-7 col-md-7 col-sm-7 col-7">
											<div class="text-right">
												<%--<button class="btn btn-primary">Add Doctor</button>--%>
                                                <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" 
                                                    Text="Update Data" onclick="btn_submit_Click" />
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

