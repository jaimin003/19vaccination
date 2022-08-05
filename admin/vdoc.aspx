<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Amaster.master" AutoEventWireup="true" CodeFile="vdoc.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">


 <div class="container-fluid">
                    <div class="layout-specing">
                        <div class="row">
                            <div class="col-xl-9 col-md-6">
                                <h5 class="mb-0">Doctors</h5>

                                <nav aria-label="breadcrumb" class="d-inline-block mt-2">
                                    <ul class="breadcrumb breadcrumb-muted bg-transparent rounded mb-0 p-0">
                                        <li class="breadcrumb-item"><a href="Ahome.aspx">Doctris</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Doctors</li>
                                    </ul>
                                </nav>
                            </div><!--end col-->

                            
                        
                        <div class="row row-cols-xl-5">
                                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                                            <ItemTemplate>
                                                <div class="col-xl col-lg-4 col-md-6 mt-4">
                                                    <div class="card team border-0 rounded shadow overflow-hidden">
                                    
                                    
                                                                <div class="team-img position-relative">
                                                                    <img src="../DocImg/<%#Eval("img")%>" class="img-fluid" width="300px;" alt="">
                                                                    <ul class="list-unstyled team-social mb-0">
                                                                        <li><a href="#" class="btn btn-icon btn-pills btn-soft-primary"><i data-feather="facebook" class="icons"></i></a></li>
                                                                        <li class="mt-2"><a href="#" class="btn btn-icon btn-pills btn-soft-primary"><i data-feather="linkedin" class="icons"></i></a></li>
                                                                        <li class="mt-2"><a href="#" class="btn btn-icon btn-pills btn-soft-primary"><i data-feather="instagram" class="icons"></i></a></li>
                                                                        <li class="mt-2"><a href="#" class="btn btn-icon btn-pills btn-soft-primary"><i data-feather="twitter" class="icons"></i></a></li>
                                                                    </ul>
                                                                </div>
                                                        <div class="card-body content text-center">
                                        
                                                           <a href="vdprofile.aspx?name=<%#Eval("dname")%>&img=<%#Eval("img") %>&email=<%#Eval("demail") %>&phno=<%#Eval("phno") %>&bio=<%#Eval("bio") %>&hos=<%#Eval("hospital") %>&fees=<%#Eval("fees") %>" class="title text-dark h5 d-block mb-0"><%#Eval("dname") %></a>
                                                            <small class="text-muted speciality"><%#Eval("hospital") %></small><br />
                                                            <a href="vdprofile.aspx?name=<%#Eval("dname")%>&img=<%#Eval("img") %>&email=<%#Eval("demail") %>&phno=<%#Eval("phno") %>&bio=<%#Eval("bio") %>&hos=<%#Eval("hospital") %>&fees=<%#Eval("fees") %>" class="title text-dark h5 d-block mb-0">View</a>                                                                                                                         
                                                        </div>

                                                    </div>
                                
                            </div><!--end col-->
                            </ItemTemplate>
                                        </asp:ListView>
                                       
                          
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:Constr %>" 
                                        SelectCommand="SELECT * FROM [doctor_mstr]"></asp:SqlDataSource>
                                       
                          
                        </div><!--end row-->
                    </div>
                </div><!--end container-->
    </form>
</asp:Content>

