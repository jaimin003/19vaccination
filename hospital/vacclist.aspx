<%@ Page Title="" Language="C#" MasterPageFile="~/hospital/Hmaster.master" AutoEventWireup="true" CodeFile="vacclist.aspx.cs" Inherits="hospital_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">

	<div class="main-container">


				<!-- Page header start -->
				<div class="page-header">
					<ol class="breadcrumb">
						<li class="breadcrumb-item">Doctors</li>
						<li class="breadcrumb-item active">Vaccine Information List</li>
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
                                            <th>VACCINE NAME</th>
                                            <th>AGE</th>
												<th>TYPE</th>
												<th>MANUFECTURE</th>												
												<th>PRICE</th>
												<th>TOTAL VACCINE</th>
                                                <th>TOTAL USED VACCINE</th>
                                                <th>TOTAL REMAIN VACCINE</th>
												<th>ACTIONS</th>
											</tr>
										</thead>
										<tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                    		<tr>
                                            <td> 
                                                   <%#Eval("vid") %></td>
												<td> 
                                                   <%#Eval("vname") %></td>
                                                <td> ABOVE <%#Eval("age") %></td>
												<td> <%#Eval("type") %></td>
												<td> <%#Eval("mfg") %></td>
												<td> <%#Eval("price") %></td>
												<td>  <%#Eval("tot_vac") %></td>
												<td> <%#Eval("used_vac") %></td>
                                                <td> <%#Eval("remain_vac") %></td>
												<td>
													<div class="btn-group btn-group-sm">
                                                          
                                                   <a href="editvacc.aspx?vid=<%#Eval("vid") %>" class="icon-edit1 btn btn-info"></a>
                                                      <a href="delvacc.aspx?vid=<%#Eval("vid") %>" class="btn btn-danger icon-cancel"></a>
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
                                        SelectCommand="SELECT * FROM [vacc_mstr] WHERE ([hname] = @hname)">
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

