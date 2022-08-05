<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Amaster.master" AutoEventWireup="true" CodeFile="H_verified.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
   <div class="container-fluid">
                    <div class="layout-specing">
                        <div class="d-md-flex justify-content-between">
                            <h5 class="mb-0">Hospital Verified List</h5>

                            <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                    <li class="breadcrumb-item"><a href="index.html">Doctris</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Invoice List</li>
                                </ul>
                            </nav>
                        </div>
                        
                        <div class="row">
                            <div class="col-12 mt-4">
                                <div class="table-responsive shadow rounded">
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                   <HeaderTemplate>
                                    <table class="table table-center bg-white mb-0">
                                        <thead>
                                            <tr>                                                                                                
                                                <th class="text-center border-bottom py-3">Hospital Name</th>
                                                 <th class="text-center border-bottom py-3">Hospital Email</th>                                                
                                                <th class="text-center border-bottom py-3">State</th>
                                                <th class="text-center border-bottom py-3">city</th>
                                                <th class="text-center py-2 border-bottom" style="min-width: 220px;">Address</th>
                                                <th class="text-center py-2 border-bottom" style="min-width: 180px;">Phone</th>                                                                                                
                                                
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <!-- Start -->
                                            <tr>                                               
                                                <td class="text-center"> <%#Eval("hname") %></td>
                                                <td class="text-center"><%#Eval("hemail") %></td>
                                                <td class="text-center"><%#Eval("state") %></td>
                                                <td class="text-center"><%#Eval("city") %></td>
                                                <td class="text-center"><%#Eval("address") %></td>
                                                <td class="text-center"><%#Eval("phno") %></td>
                                                
                                               <%-- <td class="text-end">
                                                    <a href="H_ver.aspx?hid=<%#Eval("id") %>" class="btn btn-sm btn-soft-success">Verify</a>
                                                    <a href="H_can.aspx?hid=<%#Eval("id") %>" class="btn btn-sm btn-outline-danger ms-2">Cancle</a>
                                                </td>--%>
                                            </tr>
                                            <!-- End -->

                                            </ItemTemplate>
                                            <FooterTemplate>
                                        </tbody>
                                    </table>
                                    </FooterTemplate>
                                     </asp:Repeater>
                                 
                                  
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:Constr %>" 
                                        SelectCommand="SELECT * FROM [hosp_reg] WHERE ([status] = @status)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="1" Name="status" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                 
                                  
                                </div>
                            </div>
                        </div><!--end row-->

    </form>
</asp:Content>

