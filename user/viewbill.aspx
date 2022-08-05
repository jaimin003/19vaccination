<%@ Page Title="" Language="C#" MasterPageFile="~/user/Umaster.master" AutoEventWireup="true" CodeFile="viewbill.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">


        <!-- Start -->
        <section class="bg-half-170 bg-light">
            <div class="container">
             <br />
            <br />
            <br />
            <br />
               <center> <h1 class="text-theme  font-weight-bolder font">Invoice of Covid vaccination</h1></center>                
                <div class="row mt-5 justify-content-center">
                    <div class="col-lg-10">
                        <div class="card bg-white border-0 rounded shadow px-4 py-5">
                            <div class="row mb-4">
                                <div class="col-lg-8 col-md-6">
                                <h3></h3>
                                   <asp:Image ID="Image1"  runat="server" align="middle"  alt="" Height="110" Width="100"></asp:Image>
                                    <h6 class="mt-4" style="font-weight: bolder">Ministry of Health & Family Welfare Government of India</h6>
                                    <small class="text-muted mb-0"></small>
                                </div><!--end col-->
    
                                <div class="col-lg-4 col-md-6 mt-4 mt-sm-0 pt-2 pt-sm-0">
                                    <ul class="list-unstyled">
                                       <%-- <li class="d-flex">
                                            <small class="mb-0 text-muted">Invoice no. : </small>
                                            <small class="mb-0 text-dark">&nbsp;&nbsp;#54638990jnn</small>
                                        </li>--%>
                                        <li class="d-flex mt-2">
                                            <small class="mb-0 text-muted"  style="font-weight: bolder; font-size: medium;">Email : </small>
                                            <small class="text-black">&nbsp;&nbsp;<a href="mailto:contact@example.com" class="text-black"><asp:Label ID="lblmail" Font-Size="Medium" Font-Bold="True" runat="server" Text="Label"></asp:Label></a></small>
                                        </li>
                                        <li class="d-flex mt-2">
                                            <small class="mb-0 text-muted"  style="font-weight: bolder; font-size: medium;">Phone : </small>
                                           <small class="text-black"><a href="javascript:void(0)" class="text-black"><asp:Label ID="lblphno" runat="server" Font-Size="Medium" Font-Bold="True" Text="Label"></asp:Label></a></small>
                                        </li>
                                        <li class="d-flex mt-2">
                                        <small class="mb-0 text-muted"  style="font-weight: bolder; font-size: medium;">Name : </small>
                                            <small class="text-black"><a href="javascript:void(0)" class="text-black"><asp:Label ID="lblpname" runat="server" Font-Size="Medium" Font-Bold="True" Text="Label"></asp:Label></a></small>
                                            
                                        </li>
                                        <li class="d-flex mt-2">
                                            <small class="mb-0 text-muted"  style="font-weight: bolder; font-size: medium;">Age : </small>
                                            <small class="text-black">&nbsp;&nbsp;<a href="javascript:void(0)" class="text-black"><asp:Label ID="lblage" runat="server" Font-Size="Medium" Font-Bold="True" Text="Label"></asp:Label></a></small>
                                        </li>
                                        <li class="d-flex mt-2">
                                            <small class="mb-0 text-muted"  style="font-weight: bolder; font-size: medium;">Website : </small>
                                            <small class="text-black" style="font-weight: bolder; font-size: medium;">&nbsp;&nbsp;<a href="javascript:void(0)" class="text-black">www.proj.com</a></small>
                                        </li>
                                        
                                        
                                    </ul>
                                </div><!--end col-->
                            </div><!--end row-->
    
                            <div class="pt-4 border-top">
                                <div class="row">
                                    <div class="col-lg-8 col-md-6">
                                    <h5 class="text-black fw-bold"  style="font-weight: bolder; font-size: medium;">PAID<span class="badge badge-pill badge-soft-success fw-normal ms-2"></span></h5>
                                        <h5 class="text-black fw-bold" style="font-weight: bolder">Name of Vaccine <span class="badge badge-pill badge-soft-success fw-normal ms-2"></span></h5>
                                        <h6 class="text-black fw-bold" style="font-weight: bolder"><asp:Label ID="lblvname" runat="server" Text="Label"></asp:Label></h6>
                                    </div><!--end col-->
                                    <div class="col-lg-8 col-md-6">
                                      <h5 class="text-black fw-bold" style="font-weight: bolder">Dose of Vaccine <span class="badge badge-pill badge-soft-success fw-normal ms-2"></span></h5>                                        
                                        <h6 class="text-black fw-bold" style="font-weight: bolder"><asp:Label ID="lbldose" runat="server" Text="Label"></asp:Label></h6>
                                    </div><!--end col-->
    
                                    <div class="col-lg-4 col-md-6 mt-4 mt-sm-0 pt-2 pt-sm-0">
                                        <ul class="list-unstyled">
                                            <li class="d-flex mt-2">
                                                <small class="mb-0 text-muted"  style="font-weight: bolder; font-size: medium;">Vaccination Date. : </small>
                                                <small class="mb-0 text-dark"  style="font-weight: bolder; font-size: medium;">&nbsp;&nbsp;<a href="javascript:void(0)" class="text-black"><asp:Label ID="lblvdate" runat="server" Text="Label"></asp:Label></a></small>
                                            </li>
    
                                            <li class="d-flex mt-2">
                                                <small class="mb-0 text-muted"  style="font-weight: bolder; font-size: medium;">Proof Id no: </small>
                                                <small class="mb-0 text-dark" style="font-weight: bolder; font-size: medium;">&nbsp;&nbsp;<a href="javascript:void(0)" class="text-black"><asp:Label ID="lblid" runat="server" Text="Label"></asp:Label></a></small>
                                            </li>
    
                                            <li class="d-flex mt-2">
                                                <small class="mb-0 text-muted"  style="font-weight: bolder; font-size: medium;">Centre Name : </small>
                                                <small class="mb-0 text-dark" style="font-weight: bolder; font-size: medium;">&nbsp;&nbsp;<a href="javascript:void(0)" class="text-black"><asp:Label ID="lblcname" runat="server" Text="Label"></asp:Label></a></small>
                                            </li>
                                        </ul>
                                    </div><!--end col-->
                                </div><!--end row-->
                                
                                <div class="invoice-table pb-4">
                                    <div class="table-responsive shadow rounded mt-4">
                                   
                                              <table class="table table-center invoice-tb mb-0">
                                            <thead>
                                                <tr>
                                                    <th scope="col" class="border-bottom text-start" style="min-width: 60px;">HOSPITAL NAME</th>
                                                    <th scope="col" class="border-bottom text-start" style="min-width: 220px;">CENTRE NAME</th>
                                                    <th scope="col" class="border-bottom text-center" style="min-width: 60px;">ADDRESS</th>
                                                   
                                                    <th scope="col" class="border-bottom" style="min-width: 130px;">PRICE</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                   
                                                      <tr>
                                                    <th scope="row" class="text-start"><asp:Label ID="lblhname" runat="server" ></asp:Label></th>
                                                    <td class="text-start"><asp:Label ID="lblcname1" runat="server" ></asp:Label></td>
                                                    <td class="text-center"><asp:Label ID="lbladd" runat="server" ></asp:Label></td>
                                                    
                                                    <td><asp:Label ID="lblprc" runat="server" ></asp:Label></td>
                                                </tr>
                                   
                                                   
                                            </tbody>
                                        </table>
                                    
                                    </div>
    
                                    
                                </div>
    
                                <div class="border-top pt-4">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="text-sm-start text-muted text-center">
                                                <small class="mb-0">Customer Services : <a href="tel:+152534-468-854" class="text-warning">(+12) 1546-456-856</a></small>
                                            </div>
                                        </div><!--end col-->
    
                                        <div class="col-sm-6">
                                            <div class="text-sm-end text-muted text-center">
                                                <small class="mb-0"><a href="javascript:void(0)" class="text-primary">Terms & Conditions</a></small>
                                            </div>
                                        </div><!--end col-->
                                    </div><!--end row-->
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="text-end mt-4 pt-2">
                            <a href="javascript:window.print()" class="btn btn-primary"><i class="uil uil-print"></i> PRINT</a>
                        </div>
                        <br /><br />
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- End -->

       
       
    </form>

</asp:Content>

