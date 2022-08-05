<%@ Page Title="" Language="C#" MasterPageFile="~/hospital/Hmaster.master" AutoEventWireup="true" CodeFile="View_Doc.aspx.cs" Inherits="hospital_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="form1" runat="server">

<div class="main-container">


				<!-- Page header start -->
				<div class="page-header">
					<ol class="breadcrumb">
						<li class="breadcrumb-item active">Doctors</li>
					</ol>
					
				</div>
				<!-- Page header end -->


				<!-- Content wrapper start -->
				<div class="content-wrapper">

					<!-- Row start -->
					<div class="row gutters">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
						<div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
							
                                
                                <figure class="user-card">
								<figcaption>
                                     <img src="../DocImg/<%#Eval("img")%>" alt="doctor image" class="profile">
									<h5><%#Eval("dname") %></h5>
									<h6 class="designation"><%#Eval("bio") %></h6>
									<p><%#Eval("fees") %></p>
									
								</figcaption>
							</figure>	
						</div>
						</ItemTemplate>
                                </asp:Repeater>
									
					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:Constr %>" 
                            SelectCommand="SELECT * FROM [doctor_mstr] WHERE ([hospital] = @hospital)">
                            <SelectParameters>
                                <asp:SessionParameter Name="hospital" SessionField="hname" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
									
					</div>
					<!-- Row end -->

				</div>
				<!-- Content wrapper end -->

			</div>
    </form>
</asp:Content>

