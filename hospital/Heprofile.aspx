<%@ Page Title="" Language="C#" MasterPageFile="~/hospital/Hmaster.master" AutoEventWireup="true" CodeFile="Heprofile.aspx.cs" Inherits="hospital_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" runat="server">
				<!-- Content wrapper start -->
				<div class="content-wrapper">

					<!-- Row start -->
					
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">Enter Doctor Details</div>
								</div>
								<div class="card-body">
									<div class="row gutters">
										<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">Hospital Name</label>
                                                <asp:TextBox ID="txthname" runat="server" class="form-control" ></asp:TextBox>
												<%--<input type="text" class="form-control" id="fullName" placeholder="Srinu">--%>
											</div>
										</div>
										<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">												
                                                <label for="fullName">Email</label>
                                                <asp:TextBox ID="txtemail" runat="server" class="form-control"></asp:TextBox>												
											</div>
										</div>
										
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">Ph No</label>
                                                <asp:TextBox ID="txtphno" runat="server" class="form-control"></asp:TextBox>												
											</div>
										</div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="fullName">Address</label>
                                                <asp:TextBox ID="txtadd" runat="server" class="form-control" ></asp:TextBox>												
											</div>
										</div>
										<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
											<div class="text-right">
												<center>
                                                    <asp:Button ID="Button1" runat="server" Text="Save Changes" 
                                                        class="btn btn-primary" onclick="Button1_Click"  /></center>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						</div>
					</div>
					<!-- Row end -->

				</div>
                </form>
</asp:Content>

