<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Amaster.master" AutoEventWireup="true" CodeFile="Aprofile.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <form id="form1" runat="server">


      <div class="container-fluid">
                    <div class="layout-specing">
                        <div class="d-md-flex justify-content-between">
                            <h5 class="mb-0">Admin Profile & Settings</h5>

                            <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                    <li class="breadcrumb-item"><a href="Ahome.aspx">Doctris</a></li>                                    
                                    <li class="breadcrumb-item active" aria-current="page">Profile</li>
                                </ul>
                            </nav>
                        </div>

                        <div class="card bg-white rounded shadow overflow-hidden mt-4 border-0">
                            <div class="p-5 bg-primary bg-gradient"></div>
                            <div class="avatar-profile d-flex margin-nagative mt-n5 position-relative ps-3">
                           
                               <%-- <img src="" class="rounded-circle shadow-md avatar avatar-medium" alt="">--%>

                                

                                
                                
                                <div class="mt-4 ms-3 pt-3">
                                    <h5 class="mt-3 mb-1">
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h5>
                                    <p class="text-muted mb-0">
                                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label></p>
                                    
                                    <%--<asp:Label ID="Label3" runat="server" Text=""></asp:Label>--%>
                                </div>
                                
                            </div>
                            
                            
                                            
                                          <%--  <li class="nav-item">
                                                <a class="nav-link rounded-0" id="settings-tab" data-bs-toggle="pill" href="#pills-settings" role="tab" aria-controls="pills-settings" aria-selected="false">
                                                    <div class="text-center pt-1 pb-1">
                                                        <h4 class="title fw-normal mb-0">Settings</h4>
                                                    </div>
                                                </a><!--end nav link-->
                                            </li><!--end nav item-->--%>
                                        </ul><!--end nav pills-->
            
                                        <div class="tab-content mt-2" id="pills-tabContent">
                                            <div class="tab-pane fade show active" id="pills-overview" role="tabpanel" aria-labelledby="overview-tab">
                                                <p class="text-muted"></p>
                                               <div class="row">
                                                  
                                               <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label"></label>
                                                  
                                                  <%--  <input name="name" id="Text1" type="text" class="form-control" placeholder="First Name :">--%>
                                                </div>
                                            </div>
                                           
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label"></label>
                                                  
                                                  <%--  <input name="name" id="Text1" type="text" class="form-control" placeholder="First Name :">--%>
                                                </div>
                                            </div>
                                              <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label"> Name</label>
                                                    <asp:TextBox ID="txtname" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                                  <%--  <input name="name" id="Text1" type="text" class="form-control" placeholder="First Name :">--%>
                                                </div>
                                            </div>                                             
                                               <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Email</label>
                                                    <asp:TextBox ID="txtemail" class="form-control" textmode="email" runat="server" ReadOnly="True"></asp:TextBox>
                                                  <%--  <input name="name" id="Text1" type="text" class="form-control" placeholder="First Name :">--%>
                                                </div>
                                            </div>
                                           
                                                <div class="col-md-6">
                                                <div class="mb-3">
                                                
                                                </div>
                                            </div>
                                                
                                                  
                                                   
                                                  <%--  <input name="name" id="Text1" type="text" class="form-control" placeholder="First Name :">--%>
                                                
                                            
                                       <%--         <h6 class="mb-0">Specialties: </h6>
            
                                                <ul class="list-unstyled mt-4">
                                                    <li class="mt-1"><i class="uil uil-arrow-right text-primary"></i> Women's health services</li>
                                                    <li class="mt-1"><i class="uil uil-arrow-right text-primary"></i> Pregnancy care</li>
                                                    <li class="mt-1"><i class="uil uil-arrow-right text-primary"></i> Surgical procedures</li>
                                                    <li class="mt-1"><i class="uil uil-arrow-right text-primary"></i> Specialty care</li>
                                                   
                                                </ul>--%>
            
                                             
            
                                             
                                            </div><!--end teb pane-->                
                            
                                    </div>
                                </div><!--end col-->
                            </div><!--end row-->
                        </div>
                    </div>
                </div><!--end container-->
      </form>
</asp:Content>

