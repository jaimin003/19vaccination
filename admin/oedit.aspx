<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Amaster.master" AutoEventWireup="true" CodeFile="oedit.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid">
                    <div class="layout-specing">
                        <div class="d-md-flex justify-content-between">
                            <h5 class="mb-0">Add New Record</h5>

                            <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                    <li class="breadcrumb-item"><a href="index.html">Doctris</a></li>
                                    <li class="breadcrumb-item"><a href="doctors.html">Doctors</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Add Doctor</li>
                                </ul>
                            </nav>
                        </div>
                        
                        <div class="row">
                            <div class="col-lg-12 mt-4">
                                <div class="card border-0 p-4 rounded shadow">
                                    <div class="row align-items-center">
                                        <%--<div class="col-lg-2 col-md-4">
                                            <img src="images/doctors/01.jpg" class="avatar avatar-md-md rounded-pill shadow mx-auto d-block" alt="">
                                        </div><!--end col-->
            
                                        <div class="col-lg-5 col-md-8 text-center text-md-start mt-4 mt-sm-0">
                                            <h5 class="">Upload your picture</h5>
                                            <p class="text-muted mb-0">For best results, use an image at least 600px by 600px in either .jpg or .png format</p>
                                        </div><!--end col-->
            
                                        <div class="col-lg-5 col-md-12 text-lg-end text-center mt-4 mt-lg-0">
                                            <a href="#" class="btn btn-primary">Upload</a>
                                            <a href="#" class="btn btn-soft-primary ms-2">Remove</a>
                                        </div><!--end col-->
                                    </div><!--end row-->--%>
            
                                    <form id="Form1" class="mt-4" runat="server">
                                        <div class="row">
                                         <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>        
                                            <div class="col-md-10">
                                                <div class="mb-3">
                                         
                          
                                                    <label class="form-label">State Name</label>                                                     
                              <asp:TextBox ID="txtsname" class="form-control" placeholder="Total case :" runat="server" ReadOnly="True"></asp:TextBox>                          
                                                    <%--<input name="name" id="name" type="text" class="form-control" placeholder="First Name :">--%>
                                                </div>
                                            </div><!--end col-->
            
    

                                            <div class="col-md-10">
                                                <div class="mb-3">
                                                    <label class="form-label">City Name</label>
                                                                                                      
                        <asp:TextBox ID="txtcname" class="form-control" placeholder="Total case :" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div><!--end col-->
                          </ContentTemplate>
                            </asp:UpdatePanel>
                                            
                                                                    <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Total Case</label>
                                                    <asp:TextBox ID="txttotcase" class="form-control" placeholder="Total case :" runat="server" ReadOnly="True"></asp:TextBox>
                                                    <%--<input name="email" id="email" type="email" class="form-control" placeholder="Your email :">--%>
                                                </div> 
                                            </div><!--end col-->        
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Total Recover</label>
                                                    <asp:TextBox ID="txtrecover" class="form-control" placeholder="Total recover :" runat="server"></asp:TextBox>
                                                </div>                                                                               
                                            </div><!--end col-->
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Total Death</label>
                                                    <asp:TextBox ID="txtdeath" class="form-control" placeholder="Total Death :" runat="server"></asp:TextBox>
                                                </div>                                                                               
                                            </div><!--end col-->
            
                                                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Total Active</label>
                                                    <asp:TextBox ID="txtactive" class="form-control" placeholder="Total Active :" runat="server"></asp:TextBox>
                                                </div>                                                                               
                                            </div><!--end col-->
            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Total Negative</label>
                                                    <asp:TextBox ID="txtneg" class="form-control" placeholder="Total Negative :" runat="server"></asp:TextBox>
                                                </div>                                                                               
                                            </div><!--end col-->
                                            <div class="col-md-6">
                                                <div class="mb-3">                                                    
                                                <label class="form-label">Click To Update</label><br />
                                                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="UPDATE" onclick="Button1_Click" 
                                                       />
                                            <%-- <button type="submit" class="btn btn-primary">Add Doctor</button>       --%>
                                                </div>                                                                               
                                            </div><!--end col-->

                                             
            
           <%--                                 <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Instagram</label>
                                                    <div class="input-group flex-nowrap">
                                                        <span class="input-group-text bg-white border border-end-0" id="insta-id"><i data-feather="instagram" class="fea icon-sm"></i></span>
                                                        <input type="text" class="form-control border" placeholder="Username" aria-label="Username" aria-describedby="insta-id">
                                                    </div>
                                                </div>
                                            </div><!--end col-->
            
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Facebook</label>
                                                    <div class="input-group flex-nowrap">
                                                        <span class="input-group-text bg-white border border-end-0" id="fb-id"><i data-feather="facebook" class="fea icon-sm"></i></span>
                                                        <input type="text" class="form-control border" placeholder="Username" aria-label="Username" aria-describedby="fb-id">
                                                    </div>
                                                </div>
                                            </div><!--end col-->
            
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Linkedin</label>
                                                    <div class="input-group flex-nowrap">
                                                        <span class="input-group-text bg-white border border-end-0" id="linke-pro"><i data-feather="linkedin" class="fea icon-sm"></i></span>
                                                        <input type="text" class="form-control border" placeholder="Username" aria-label="Username" aria-describedby="linke-pro">
                                                    </div>
                                                </div>
                                            </div><!--end col-->
            
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Twitter</label>
                                                    <div class="input-group flex-nowrap">
                                                        <span class="input-group-text bg-white border border-end-0" id="twitter-id"><i data-feather="twitter" class="fea icon-sm"></i></span>
                                                        <input type="text" class="form-control border" placeholder="Username" aria-label="Username" aria-describedby="twitter-id">
                                                    </div>
                                                </div>
                                            </div><!--end col-->
            
                                            <div class="col-md-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Your Bio Here</label>
                                                    <textarea name="comments" id="comments" rows="3" class="form-control" placeholder="Bio :"></textarea>
                                                </div>
                                            </div>
                                        </div><!--end row-->
            
           --%>                            
                                    </form>
                                </div>
                            </div><!--end col-->
    </div>
    </div>
    </div>
</asp:Content>

