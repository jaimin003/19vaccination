<%@ Page Title="" Language="C#" MasterPageFile="~/user/Umaster.master" AutoEventWireup="true" CodeFile="Vac_info.aspx.cs" Inherits="user_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server">
<div class="subheader normal-bg section-padding">
<div class="overlay overlay-bg-theme"></div>
<div class="container">
<div class="row">
<div class="col-12">
<div class="breadcrumb-text">
<h1 class="text-custom-white">Vaccine Centers</h1>
<ul class="custom-flex">
<li>
<a href="index.html" class="text-custom-white">Home</a>
</li>
<li class="active">Vaccine Centers</li>
</ul>
</div>
</div>
</div>
</div>
</div>

<section class="section-padding help bg-light-white">
<div class="container">
<div class="section-header">
<div class="section-heading text-center">
<h3 class="text-theme fs-16 fw-600">VACCINE CENTERS</h3>
<div class="section-description">
</div>
</div>
</div>

  <asp:ScriptManager ID="ScriptManager1" runat="server">
                                    </asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
<div class="section-header">
<div class="text-theme">
<p class="text-theme fs-16 fw-900" style="font-size: xx-large" > Select State</p>
</div>
</div>

<asp:DropDownList ID="ddlstate" 
        class="table table-striped table-hover table-bordered" runat="server" 
        Height="40px" AutoPostBack="True" DataSourceID="SqlDataSource1" 
        DataTextField="sname" DataValueField="sid" Font-Bold="True" Font-Size="Large"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Constr %>" 
        SelectCommand="SELECT * FROM [state_mstr]"></asp:SqlDataSource>
        <br />
        <br />
        <div class="section-header">
<div class="text-theme">
<p class="text-theme fs-16 fw-900" style="font-size: xx-large" > Select City</p>
</div>
</div>
<asp:DropDownList ID="ddlcity" 
        class="table table-striped table-hover table-bordered" runat="server" 
        Height="40px" AutoPostBack="True" 
        DataTextField="cname" DataValueField="cname" Font-Bold="True" 
        Font-Size="Large" DataSourceID="SqlDataSource2"></asp:DropDownList> 
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Constr %>" 
        SelectCommand="SELECT * FROM [city_mstr] WHERE ([sid] = @sid)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlstate" Name="sid" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <br />
    <br />
<div class="row">
<div class="col-12">
<div class="help-table table-responsive">
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource3">
<HeaderTemplate>
<table class="table table-striped table-hover table-bordered">
<thead>
<tr>
<th>Hospital Name</th>
<th>Center Name</th>
<th>Vaccine Name</th>
<th>Age</th>
<th>Address</th>
<th>Price</th>

<th>Book Now</th>
</tr>
</thead>
<tbody>
</HeaderTemplate>
<ItemTemplate>
<tr>
<td><%#Eval("hname") %></td>
<td><%#Eval("cname") %></td>
<td><%#Eval("vname") %></td>
<td>Applicable <%#Eval("age") %></td>
<td><%#Eval("address") %></td>
<td><%#Eval("price") %></td>
<td><a href="VBook.aspx?hname=<%#Eval("hname") %>&cname=<%#Eval("cname") %>&vname=<%#Eval("vname") %>&aage=<%#Eval("age") %>&add=<%#Eval("address") %>&price=<%#Eval("price") %>" class="btn-success btn_text_effect" style="font-size: medium">BOOK</a></td>


</tr>

</ItemTemplate>
<FooterTemplate>
</tbody>
</table>
</FooterTemplate>



</asp:Repeater>
  <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Constr %>" 
        SelectCommand="SELECT * FROM [vcenter_mstr] WHERE ([city] = @city)">
        <SelectParameters>
        <asp:ControlParameter ControlID="ddlstate" Name="state" 
                                    PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="ddlcity" Name="city" 
                PropertyName="SelectedValue" Type="String" />        
        </SelectParameters>
    </asp:SqlDataSource>
  
  
    </ContentTemplate>
</asp:UpdatePanel>





  </div>
</div>
</div>
</div>
</section>
</form>
</asp:Content>

