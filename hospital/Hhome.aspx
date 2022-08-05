<%@ Page Title="" Language="C#" MasterPageFile="~/hospital/Hmaster.master" AutoEventWireup="true" CodeFile="Hhome.aspx.cs" Inherits="hospital_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
<!-- Content wrapper start -->
				<div class="content-wrapper">

					<!-- Row start -->
					<div class="row gutters">
						<div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-12">
							<div class="hospital-tiles primary">
								<img src="img/hospital/app.png" alt="Appointments" />
								<p>Total Case</p>
								<h2>
                                <asp:Label ID="lbltcase" runat="server" Text="Label"></asp:Label></h2>
							</div>
						</div>
						<div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-12">
							<div class="hospital-tiles blue">
								<img src="img/hospital/patients.png" alt="Patients" />
								<p>Total Active</p>
								<h2> <asp:Label ID="lblacase" runat="server" Text="Label"></asp:Label></h2>
							</div>
						</div>
						<div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-12">
							<div class="hospital-tiles red">
								<img src="img/hospital/beds.png" alt="Operations" />
								<p>Total Death</p>
								<h2> <asp:Label ID="lbldcase" runat="server" Text="Label"></asp:Label></h2>
							</div>
						</div>
                        <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-12">
							<div class="hospital-tiles green">
								<img src="img/hospital/plasma.png" alt="Earnings" />
								<p>Total Recover</p>
								<h2> <asp:Label ID="lblrcase" runat="server" Text="Label"></asp:Label></h2>
							</div>
						</div>
						<div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-12">
							<div class="hospital-tiles yellow">
								<img src="img/hospital/vc.png" alt="Doctors" />
								<p>Vaccine Center</p>
								<h2> <asp:Label ID="lblvc" runat="server" Text="Label"></asp:Label></h2>
							</div>
						</div>
						<div class="col-xl-2 col-lg-2 col-md-4 col-sm-4 col-12">
							<div class="hospital-tiles secondary">
								<img src="img/hospital/doc.png" alt="Staff" />
								<p>Total Doctor</p>
								<h2> <asp:Label ID="lbld" runat="server" Text="Label"></asp:Label></h2>
							</div>
						</div>
						
					</div>
					<!-- Row end -->

					

					

					<!-- Row start -->
					<div class="row gutters">
                        
						<div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-xs-12">
                          <div class="card">
								<div class="card-header">
									<div class="card-title">Top Doctors</div>
								</div>
								<div class="card-body">
                                 <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                                 <ItemTemplate>
                                    <div class="top-doctors-container">
                                        <div class="top-doctor">
											<img src="../DocImg/<%#Eval("img") %>" class="avatar" alt="Agent">
											<div class="doctor-details">
												<h5><%#Eval("dname") %></h5>
												<h6><%#Eval("bio") %></h6>
											</div>
										</div>
									
									</div>
                                    </ItemTemplate>
                        </asp:ListView>
						  
								    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:Constr %>" 
                                        SelectCommand="SELECT * FROM [doctor_mstr] WHERE ([hospital] = @hospital)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="hospital" SessionField="hname" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
						  
								</div>
							</div>
						</div>
                        
						<div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">Our Events</div>
								</div>
								<div class="card-body">
									<ul class="custom-messages">
                                    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource4">
                                    <ItemTemplate>
										<li class="clearfix">
                                        <img src="../event_img/<%#Eval("img") %>" class="customer" alt="Agent">
											
											<div class="delivery-details">
												<span class="badge"></span>
												<h5><%#Eval("ename") %></h5>
												<p><%#Eval("dis") %></p>
											</div>
										</li>
                                        </ItemTemplate>
										</asp:ListView>
									    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [event_mstr] WHERE ([hospital] = @hospital)">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="hospital" SessionField="hname" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
									  
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">Our Services</div>
								</div>
								<div class="card-body">
									<div class="card-body">
									<ul class="custom-messages">
                                    <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
										<li class="clearfix">
                                        <img src="../Hos_service_img/<%#Eval("img") %>" class="customer" alt="Agent">
											
											<div class="delivery-details">
												<span class="badge"></span>
												<h5><%#Eval("servicename") %></h5>
												<p><%#Eval("dis") %></p>
											</div>
										</li>
                                        </ItemTemplate>
										</asp:ListView>
									    
									   
									    
									    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:Constr %>" 
                                            SelectCommand="SELECT * FROM [service_mstr] WHERE ([hospital] = @hospital)">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="hospital" SessionField="hname" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
									    
									   
									    
									</ul>
								</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Row end -->

				</div>
				<!-- Content wrapper end -->

    </form>

</asp:Content>

