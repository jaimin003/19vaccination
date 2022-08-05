<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Amaster.master" AutoEventWireup="true" CodeFile="O_list.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<div class="container-fluid">
                    <div class="layout-specing">
                        <div class="d-md-flex justify-content-between">
                            <h5 class="mb-0">Outbreak Details</h5>

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
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <HeaderTemplate>
                                    <table class="table table-center bg-white mb-0">
                                        <thead>
                                            <tr>
                                                
                                                <th class="border-bottom py-3" style="min-width: 180px;">STATE NAME</th>                                                
                                                <th class="border-bottom py-3">CITY NAME</th>
                                                <th class="border-bottom py-3">TOTAL CASE</th>
                                                <th class="border-bottom py-3">TOTAL RECOVER</th>
                                                <th class="border-bottom py-3">TOTAL DEATH</th>
                                                <th class="border-bottom py-3">TOTAL ACTIVE</th>
                                                <th class="border-bottom py-3">TOTAL NEGATIVE</th>
                                                <th class="border-bottom py-3">ACTION</th>
                                                <th class="border-bottom py-3" style="min-width: 100px;"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                          <tr>
                                                
                                                  
                                               
                                                <td><%#Eval("sname") %></td>
                                                <td><%#Eval("cname") %></td>
                                                <td><%#Eval("tot_case") %></td>
                                                <td><%#Eval("tot_recover") %></td>
                                                <td><%#Eval("tot_death") %></td>
                                                <td><%#Eval("tot_active") %></td>
                                                <td><%#Eval("tot_neg") %></td>
                                                <td>                                                                                                                                                          
                                                    <a href="oedit.aspx?oid=<%#Eval("oid") %>" class="btn btn-icon btn-pills btn-soft-success" ><i class="uil uil-pen"></i></a>                                                    
                                                    <a href="odel.aspx?oid=<%#Eval("oid") %>" class="btn btn-icon btn-pills btn-soft-danger"><i class="uil uil-trash"></i></a>
                                                </td>
                                                
                                            </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                        </tbody>
                                    </table>
                                    </FooterTemplate>
                                    </asp:Repeater>
                              
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:Constr %>" 
                                        SelectCommand="SELECT * FROM [outbreak]"></asp:SqlDataSource>
                              
                                </div>
                            </div>
                        </div><!--end row-->

    </form>
</asp:Content>

