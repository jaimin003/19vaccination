<%@ Page Title="" Language="C#" MasterPageFile="~/hospital/Hmaster.master" AutoEventWireup="true" CodeFile="centerlist.aspx.cs" Inherits="hospital_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">

	<div class="main-container">


				<!-- Page header start -->
				<div class="page-header">
					<ol class="breadcrumb">
						<li class="breadcrumb-item">Doctors</li>
						<li class="breadcrumb-item active">Vaccine Centre List</li>
					</ol>
					
				</div>
				<!-- Page header end -->


				<!-- Content wrapper start -->
				<div class="content-wrapper">

					<!-- Row start -->
					<div class="row gutters">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="table-container">
								
								<!--*************************
									*************************
									*************************
									Basic table start
								*************************
								*************************
								*************************-->
								<div class="table-responsive">
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                                    <HeaderTemplate>
                                    <table id="basicExample" class="table">
										<thead>
											<tr>				
                                            <th>VACCINE ID</th>								
											<th>CENTRE NAME</th>                                            
												<th>ADDRESS</th>
												<th>STATE</th>												
                                                <th>CITY</th>																								
												<th>Ph No</th>                                                
												<th>Actions</th>
											</tr>
										</thead>
										<tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                    		<tr>
                                            <td><%#Eval("vid") %></td>
												<td><%#Eval("cname") %></td>
												<td> <%#Eval("address") %></td>
												<td> <%#Eval("state") %></td>
												<td> <%#Eval("city") %></td>
												<td>  <%#Eval("phno") %></td>												
												<td>
													<div class="btn-group btn-group-sm">
                                                          
                                                   <a href="cupdate.aspx?cid=<%#Eval("cid") %>" class="icon-edit1 btn btn-info"></a>
                                                      <a href="cdelete.aspx?cid=<%#Eval("cid") %>" class="btn btn-danger icon-cancel"></a>
														<%-- <button type="button" class="btn btn-info">
															<i class="icon-edit1">
                                                            </i>
														</button>--%>
														<%--<button type="button" class="btn btn-danger">
															<i class="icon-cancel"></i>
														</button>--%>
													</div>
												</td>
											</tr>										
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </tbody>
									</table>
								</div>
                                    </FooterTemplate>
									</asp:Repeater>
									
                                    
								   
									
                                    
								    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:Constr %>" 
                                        SelectCommand="SELECT * FROM [vcenter_mstr] WHERE ([hname] = @hname)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="hname" SessionField="hname" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
									
                                    
								   
									
                                    
								<!--*************************
									*************************
									*************************
									Basic table end
								*************************
								*************************
								*************************-->

							</div>
						</div>
					</div>
					<!-- Row end -->

				</div>
				<!-- Content wrapper end -->

			</div>
    </div>
    </form>

</asp:Content>

