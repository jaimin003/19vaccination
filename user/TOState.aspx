<%@ Page Title="" Language="C#" MasterPageFile="~/user/Umaster.master" AutoEventWireup="true" CodeFile="TOState.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<section class="section-padding bg-light-white statics-table">
<div class="container">
<div class="row">
<div class="col-12">
<div class="stat-heading mb-xl-40">
<div class="left-side mb-xl-20">
<h4 class="text-custom-black no-margin">State Wise COVID-19 Tracker <span class="text-light-white fs-14">A Crowdsourced Inotiative</span></h4>
</div>
<div class="right-side mb-xl-20">

</div>
</div>
<div class="stat-graph mb-xl-40">
<div class="row">
<div class="col-md-3 col-sm-6">
<div class="stat-graph-box text-center bx-wrapper mb-sm-30">
<div class="center-box">
<h5 class="text-custom-black">Confirmed Cases</h5>

<h3 class="text-theme no-margin"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>
</div>
</div>
</div>
<div class="col-md-3 col-sm-6">
<div class="stat-graph-box text-center bx-wrapper mb-sm-30">
<div class="center-box">
<h5 class="text-custom-black">Active</h5>

<h3 class="text-theme no-margin"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h3>
</div>
</div>
</div>
<div class="col-md-3 col-sm-6">
<div class="stat-graph-box text-center bx-wrapper mb-xs-30">
<div class="center-box">
<h5 class="text-custom-black">Recovered</h5>

<h3 class="text-theme no-margin"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h3>
</div>
</div>
</div>
<div class="col-md-3 col-sm-6">
<div class="stat-graph-box text-center bx-wrapper">
<div class="center-box">
<h5 class="text-custom-black">Deaths</h5>
<%--<p class="text-light-white">[+1,450]</p>--%>
<h3 class="text-theme no-margin"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h3>
</div>
</div>
</div>
</div>
</div>
<div class="stat-table table-responsive">
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
<HeaderTemplate>
<table class="table table-striped table-hover table-bordered">
<thead>
<tr>
<th>State Name</th>
<th>Total Cases</th>
<th>Total Recovered</th>
<th>Total Deaths</th>
<th>Active Cases</th>
<th>Total Negative</th>
</tr>
</thead>
<tbody>
</HeaderTemplate>
<ItemTemplate>
<tr>

<td><%#Eval("sname") %></td>
<td><%#Eval("tot_case") %></td>
<td><%#Eval("tot_recover") %></td>
<td><%#Eval("tot_death") %></td>
<td><%#Eval("tot_active") %></td>
<td><%#Eval("tot_neg") %></td>
</tr>
</ItemTemplate>
<FooterTemplate>
</tbody>
</table>
</FooterTemplate>
</asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Constr %>" 
        SelectCommand="SELECT * FROM [Soutbreak] ORDER BY [sname]">
    </asp:SqlDataSource>
</div>
</div>
</div>
</div>
</section>



    </form>



</asp:Content>

