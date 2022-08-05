<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Amaster.master" AutoEventWireup="true" CodeFile="Ahome.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <form id="form1" runat="server">

                <div class="container-fluid">
                    <div class="layout-specing">
                        <h5 class="mb-0">Dashboard</h5>

                        <div class="row">
                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <div class="card features feature-primary rounded border-0 shadow p-4">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">
                                            <i class="uil uil-bed h3 mb-0"></i>
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0">
                                                <asp:Label ID="lblhosp" runat="server" Text="Label"></asp:Label></h5>
                                            <p class="text-muted mb-0">Total Hospital</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!--end col-->
                            
                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <div class="card features feature-primary rounded border-0 shadow p-4">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">
                                            <i class="uil uil-file-medical-alt h3 mb-0"></i>
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0">   <asp:Label ID="lbls" runat="server" Text="Label"></asp:Label></h5>
                                            <p class="text-muted mb-0">Total Serivces</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!--end col-->
                            
                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <div class="card features feature-primary rounded border-0 shadow p-4">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">
                                            <i class="uil uil-social-distancing h3 mb-0"></i>
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0">   <asp:Label ID="lbld" runat="server" Text="Label"></asp:Label></h5>
                                            <p class="text-muted mb-0">Total Doctor</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!--end col-->
                            
                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <div class="card features feature-primary rounded border-0 shadow p-4">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">
                                            <i class="uil uil-ambulance h3 mb-0"></i>
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0"> <asp:Label ID="lblc" runat="server" Text="Label"></asp:Label></h5>
                                            <p class="text-muted mb-0">Total Center</p>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div><!--end col-->
                            
                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <div class="card features feature-primary rounded border-0 shadow p-4">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">
                                            <i class="uil uil-medkit h3 mb-0"></i>
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0"> <asp:Label ID="lble" runat="server" Text="Label"></asp:Label></h5>
                                            <p class="text-muted mb-0">Total Events</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!--end col-->
                            
                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <div class="card features feature-primary rounded border-0 shadow p-4">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">
                                            <i class="uil uil-social-distancing h3 mb-0"></i>
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0"> <asp:Label ID="lblu" runat="server" Text="Label"></asp:Label></h5>
                                            <p class="text-muted mb-0">Total Users</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!--end col-->
                        </div><!--end row-->

                        
                        <div class="row">
                            <div class="col-xl-4 col-lg-6 mt-4">
                                <div class="card border-0 shadow rounded">
                                    <div class="d-flex justify-content-between align-items-center p-4 border-bottom">
                                        <h6 class="mb-0"><i class="uil uil-calender text-primary me-1 h5"></i> Latest Events</h6>
                                        <h6 class="text-muted mb-0"></h6>
                                    </div>
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1"  >
                                    <ItemTemplate>
                                    
                                    <ul class="list-unstyled mb-0 p-4">
                                    
                                        <li>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="d-inline-flex">
                                                    <img src="../event_img/<%#Eval("img")%>" class="avatar avatar-md-sm rounded-circle border shadow" alt=""/>
                                                    <div class="ms-3">
                                                        <h6 class="text-dark mb-0 d-block"><%#Eval("ename")%></h6>
                                                        <small class="text-muted">Going on <%#Eval("date")%></small><small class="text-muted"> For <%#Eval("hospital")%></small>
                                                    </div>
                                                </div>
                                             
                                            </div>
                                        </li>
                                        </ul>
                                        </ItemTemplate>
                                        </asp:Repeater>
                                        
                                    
                                
                                        
                                    
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [event_mstr]"></asp:SqlDataSource>
                                        
                                    
                                
                                        
                                    
                                </div>
                            </div><!--end col-->


                            <div class="col-xl-4 col-lg-6 mt-4">
                                <div class="card chat chat-person border-0 shadow rounded">
                                    <div class="d-flex justify-content-between border-bottom p-4">
                                        <div class="d-flex">
                                              <h6 class="mb-0"><i class="uil uil-calender text-primary me-1 h5"></i> Services</h6>
                                        <h6 class="text-muted mb-0"></h6>
                                            
                                        </div>

                                    </div>
                                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2"  >
                                    <ItemTemplate>
                                    
                                    <ul class="list-unstyled mb-0 p-4">
                                    
                                        <li>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="d-inline-flex">
                                                    <img src="../Hos_service_img/<%#Eval("img")%>" class="avatar avatar-md-sm rounded-circle border shadow" alt=""/>
                                                    <div class="ms-3">
                                                        <h6 class="text-dark mb-0 d-block"><%#Eval("servicename")%></h6>
                                                        <small class="text-muted"><%#Eval("dis")%></small>
                                                        <small class="text-muted"> Hospital : <%#Eval("hospital")%></small>
                                                    </div>
                                                </div>
                                             
                                            </div>
                                        </li>
                                        </ul>
                                        </ItemTemplate>
                                        </asp:Repeater>
                                        
                                    
                                  
                                  
                                        
                                    
                                  
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:Constr %>" 
                                        SelectCommand="SELECT * FROM [service_mstr]"></asp:SqlDataSource>
                                        
                                    
                                  
                                  
                                        
                                    
                                  
<%--                                    <ul class="p-4 list-unstyled mb-0 chat" data-simplebar style="background: url('images/bg/bg-chat.png') center center; max-height: 295px;">
                                        <li>
                                            <div class="d-inline-block">
                                                <div class="d-flex chat-type mb-3">
                                                    <div class="position-relative">
                                                        <img src="images/doctors/02.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                        <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                    </div>
                                                        
                                                    <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                        <p class="text-muted small msg px-3 py-2 bg-light rounded mb-1">Hey Christopher</p>
                                                        <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>59 min ago</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="chat-right">
                                            <div class="d-inline-block">
                                                <div class="d-flex chat-type mb-3">
                                                    <div class="position-relative chat-user-image">
                                                        <img src="images/client/09.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                        <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                    </div>
                                                        
                                                    <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                        <p class="text-muted small msg px-3 py-2 bg-light rounded mb-1">Hello Cristino</p>
                                                        <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>45 min ago</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="chat-right">
                                            <div class="d-inline-block">
                                                <div class="d-flex chat-type mb-3">
                                                    <div class="position-relative chat-user-image">
                                                        <img src="images/client/09.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                        <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                    </div>
                                                        
                                                    <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                        <p class="text-muted small msg px-3 py-2 bg-light rounded mb-1">How can i help you?</p>
                                                        <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>44 min ago</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="d-inline-block">
                                                <div class="d-flex chat-type mb-3">
                                                    <div class="position-relative">
                                                        <img src="images/doctors/02.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                        <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                    </div>
                                                        
                                                    <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                        <p class="text-muted small msg px-3 py-2 bg-light rounded mb-1">Nice to meet you</p>
                                                        <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>42 min ago</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="d-inline-block">
                                                <div class="d-flex chat-type mb-3">
                                                    <div class="position-relative">
                                                        <img src="images/doctors/02.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                        <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                    </div>
                                                        
                                                    <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                        <p class="text-muted small msg px-3 py-2 bg-light rounded mb-1">Hope you are doing fine?</p>
                                                        <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>40 min ago</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="chat-right">
                                            <div class="d-inline-block">
                                                <div class="d-flex chat-type mb-3">
                                                    <div class="position-relative chat-user-image">
                                                        <img src="images/client/09.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                        <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                    </div>
                                                        
                                                    <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                        <p class="text-muted small msg px-3 py-2 bg-light rounded mb-1">I'm good thanks for asking</p>
                                                        <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>45 min ago</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="d-inline-block">
                                                <div class="d-flex chat-type mb-3">
                                                    <div class="position-relative">
                                                        <img src="images/doctors/02.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                        <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                    </div>
                                                        
                                                    <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                        <p class="text-muted small msg px-3 py-2 bg-light rounded mb-1">I am intrested to know more about your prices and services you offer</p>
                                                        <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>35 min ago</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="chat-right">
                                            <div class="d-inline-block">
                                                <div class="d-flex chat-type mb-3">
                                                    <div class="position-relative chat-user-image">
                                                        <img src="images/client/09.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                        <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                    </div>
                                                        
                                                    <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                        <p class="text-muted small msg px-3 py-2 bg-light rounded mb-1">Sure please check below link to find more useful information <a href="https://1.envato.market/4n73n" target="_blank" class="text-primary">http://shreethemes.in/landrick/</a></p>
                                                        <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>25 min ago</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="d-inline-block">
                                                <div class="d-flex chat-type mb-3">
                                                    <div class="position-relative">
                                                        <img src="images/doctors/02.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                        <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                    </div>
                                                        
                                                    <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                        <p class="text-muted small msg px-3 py-2 bg-light rounded mb-1">Thank you 😊</p>
                                                        <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>20 min ago</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="chat-right">
                                            <div class="d-inline-block">
                                                <div class="d-flex chat-type mb-3">
                                                    <div class="position-relative chat-user-image">
                                                        <img src="images/client/09.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                        <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                    </div>
                                                        
                                                    <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                        <p class="text-muted small msg px-3 py-2 bg-light rounded mb-1">Welcome</p>
                                                        <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>18 min ago</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>

--%>                                  <%--  <div class="p-2 rounded-bottom shadow">
                                        <div class="row">
                                            <div class="col">
                                                <input type="text" class="form-control border" placeholder="Enter Message...">
                                            </div>
                                            <div class="col-auto">
                                                <a href="#" class="btn btn-icon btn-primary"><i class="uil uil-message icons"></i></a>
                                                <a href="#" class="btn btn-icon btn-primary"><i class="uil uil-smile icons"></i></a>
                                                <a href="#" class="btn btn-icon btn-primary"><i class="uil uil-paperclip icons"></i></a>
                                            </div>
                                        </div>
                                    </div>--%>
                                </div>
                            </div><!--end col-->

                            <div class="col-xl-4 col-lg-12 mt-4">
                                <div class="card border-0 shadow rounded">
                                    <div class="p-4 border-bottom">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <h6 class="mb-0"><i class="uil uil-user text-primary me-1 h5"></i> Patients Reviews</h6>
                                            
                                          
                                        </div>
                                    </div>
                                     <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
                                    <ItemTemplate>
                                    
                                    <ul class="list-unstyled mb-0 p-4">
                                    
                                        <li>
                                            <div class="d-flex align-items-center justify-content-between">
                                                <div class="d-inline-flex">
                                                    <img src="../User_img/<%#Eval("img")%>" class="avatar avatar-md-sm rounded-circle border shadow" alt=""/>
                                                    <div class="ms-3">
                                                        <h6 class="text-dark mb-0 d-block"><%#Eval("name")%></h6>
                                                        <small class="text-muted"> Review : <%#Eval("review")%></small>
                                                    </div>
                                                </div>
                                             
                                            </div>
                                        </li>
                                        </ul>
                                        </ItemTemplate>
                                        </asp:Repeater>
                                        
                                   
                                  
                                        
                                   
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:Constr %>" 
                                        SelectCommand="SELECT * FROM [Feedback_mstr]"></asp:SqlDataSource>
                                        
                                   
                                  
                                        
                                   
                                  <%--  <ul class="list-unstyled mb-0 p-4" data-simplebar style="height: 355px;">
                                        <li class="d-flex align-items-center justify-content-between">
                                            <div class="d-flex align-items-center">
                                                <img src="images/doctors/01.jpg" class="avatar avatar-small rounded-circle border shadow" alt="">
                                                <div class="flex-1 ms-3">
                                                    <span class="d-block h6 mb-0">Dr. Calvin Carlo</span>
                                                    <small class="text-muted">Orthopedic</small>

                                                    <ul class="list-unstyled mb-0">
                                                        <li class="list-inline-item text-muted">(45)</li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <p class="text-muted mb-0">150 Patients</p>
                                        </li>

                                        <li class="d-flex align-items-center justify-content-between mt-4">
                                            <div class="d-flex align-items-center">
                                                <img src="images/doctors/02.jpg" class="avatar avatar-small rounded-circle border shadow" alt="">
                                                <div class="flex-1 ms-3">
                                                    <span class="d-block h6 mb-0">Dr. Cristino Murphy</span>
                                                    <small class="text-muted">Gynecology</small>

                                                    <ul class="list-unstyled mb-0">
                                                        <li class="list-inline-item text-muted">(75)</li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <p class="text-muted mb-0">350 Patients</p>
                                        </li>

                                        <li class="d-flex align-items-center justify-content-between mt-4">
                                            <div class="d-flex align-items-center">
                                                <img src="images/doctors/03.jpg" class="avatar avatar-small rounded-circle border shadow" alt="">
                                                <div class="flex-1 ms-3">
                                                    <span class="d-block h6 mb-0">Dr. Alia Reddy</span>
                                                    <small class="text-muted">Psychotherapy</small>

                                                    <ul class="list-unstyled mb-0">
                                                        <li class="list-inline-item text-muted">(48)</li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <p class="text-muted mb-0">450 Patients</p>
                                        </li>

                                        <li class="d-flex align-items-center justify-content-between mt-4">
                                            <div class="d-flex align-items-center">
                                                <img src="images/doctors/04.jpg" class="avatar avatar-small rounded-circle border shadow" alt="">
                                                <div class="flex-1 ms-3">
                                                    <span class="d-block h6 mb-0">Dr. Toni Kover</span>
                                                    <small class="text-muted">Dentist</small>

                                                    <ul class="list-unstyled mb-0">
                                                        <li class="list-inline-item text-muted">(68)</li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <p class="text-muted mb-0">484 Patients</p>
                                        </li>

                                        <li class="d-flex align-items-center justify-content-between mt-4">
                                            <div class="d-flex align-items-center">
                                                <img src="images/doctors/05.jpg" class="avatar avatar-small rounded-circle border shadow" alt="">
                                                <div class="flex-1 ms-3">
                                                    <span class="d-block h6 mb-0">Dr. Jennifer Ballance</span>
                                                    <small class="text-muted">Cardiology</small>

                                                    <ul class="list-unstyled mb-0">
                                                        <li class="list-inline-item text-muted">(55)</li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                        <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <p class="text-muted mb-0">476 Patients</p>--%>
                                      
                                </div>
                            </div><!--end col-->
                        </div><!--end row-->
                    </div>
                </div><!--end container-->

              
                <!-- End -->
        
        
        
                </form>
</asp:Content>

