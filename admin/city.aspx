<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Amaster.master" AutoEventWireup="true" CodeFile="city.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid">
                    <div class="layout-specing">
                        <div class="d-md-flex justify-content-between">
                            <h5 class="mb-0">Add City</h5>

                            <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                    <li class="breadcrumb-item"><a href="Ahome.aspx">Doctris</a></li>
                                    <li class="breadcrumb-item"><a href="State.aspx">Location</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">State</li>
                                </ul>
                            </nav>
                        </div>
                        
                        <div class="row">
                            <div class="col-lg-12 mt-4">
                                <div class="card border-0 p-4 rounded shadow">
                                    <div class="row align-items-center">
                                        
                                        <div class="col-lg-5 col-md-8 text-center text-md-start mt-4 mt-sm-0">
                                            <h4 class="text-primary">Add City Here!!</h4>
                                            
                                        </div><!--end col-->
            
                                        
                                    </div><!--end row-->
            
                                    <form class="mt-4" runat="server">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                <label class="form-label ">State Name</label>
                                                   <%-- <input name="name" id="name" type="text" class="form-control" placeholder="First Name :">--%>
                                                    <asp:DropDownList ID="ddlstate" class="form-select form-control" runat="server" 
                                                        DataSourceID="SqlDataSource1" DataTextField="sname" DataValueField="sid">
                                                    </asp:DropDownList>          
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:Constr %>" 
                                                        SelectCommand="SELECT * FROM [state_mstr]"></asp:SqlDataSource>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                        ErrorMessage="Please Select A State*" ControlToValidate="ddlstate" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    
                                                    <br />
                                                    <label class="form-label ">City Name</label>
                                                   <%-- <input name="name" id="name" type="text" class="form-control" placeholder="First Name :">--%>
                                                    <asp:TextBox ID="txtcname" runat="server" class="form-control" placeholder="City Name :"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                        ErrorMessage="Please Enter A City*" ControlToValidate="txtcname" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                            </div><!--end col-->
            
                                        </div><!--end row-->
            
                                        <%--<button type="submit" class="btn btn-primary">Add S</button>--%>
                                    <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" Text="Add City" onclick="btn_submit_Click" 
                                           />
                                    
                                </div>
                            </div><!--end col-->
                            
    
       <div class="container-fluid">
                    <div class="layout-specing">
                        <div class="d-md-flex justify-content-between">
                            <h5 class="mb-0">City List</h5>

                          <%--  <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                    <li class="breadcrumb-item"><a href="Ahome.aspx">Doctris</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Hospitals</li>
                                </ul>
                            </nav>--%>
                        </div>
                        
                          <div class="row">
                            <div class="col-12 mt-4">
                                <div class="table-responsive shadow rounded">
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                                        <HeaderTemplate>
                                    <table class="table table-center bg-white mb-0">
                                        <thead>                                            
                                            <tr>                                                
                                                <th class="border-bottom py-3" style="min-width: 180px;">City Name</th>
                                                <th class="border-bottom py-3">Action</th>                                                                                                                                                 
                                                <th class="border-bottom py-3" style="min-width: 100px;"></th>
                                            </tr>
                                        </thead>                                        
                                        <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>                                               
                                            <td class="border-bottom py-3"><%#Eval("cname") %></td>
                                                <td>
                                                 
                                                    &nbsp&nbsp&nbsp&nbsp
                                                    <a href="cedit.aspx?cid=<%#Eval("cid") %>" class="btn btn-icon btn-pills btn-soft-success" data-bs-toggle="modal" ><i class="uil uil-pen"></i></a>
                                                    &nbsp&nbsp&nbsp&nbsp
                                                    <a href="cdel.aspx?cid=<%#Eval("cid") %>" class="btn btn-icon btn-pills btn-soft-danger"><i class="uil uil-trash"></i></a>
                                                </td>
                                            </tr>
                                            
                                    </ItemTemplate>                                                                                
                                        <FooterTemplate>
                                        </tbody>
                                    </table>
                                    </FooterTemplate>
                                        </asp:Repeater>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:Constr %>" 
                                        SelectCommand="SELECT * FROM [city_mstr] ORDER BY [cname]">
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div><!--end row-->


                       <%-- <div class="row text-center">
                            <div class="col-12 mt-4">
                                <ul class="pagination justify-content-end mb-0 list-unstyled">
                                    <li><a href="#" class="pe-3 ps-3 pt-2 pb-2 border"> Prev</a></li>
                                    <li class="active"><a href="#" class="pe-3 ps-3 pt-2 pb-2 border">1</a></li>
                                    <li><a href="#" class="pe-3 ps-3 pt-2 pb-2 border">2</a></li>
                                    <li><a href="#" class="pe-3 ps-3 pt-2 pb-2 border">Next </a></li>
                                </ul><!--end pagination-->
                            </div><!--end col-->
                        </div><!--end row-->--%>
                    </div>
                </div><!--end container-->
       </form>
               
</div>
</div>
</div>

</asp:Content>

