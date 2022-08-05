<%@ Page Language="C#" AutoEventWireup="true" CodeFile="H_reg.aspx.cs" Inherits="hospital_H_reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!doctype html>
<html lang="en">
<!-- Mirrored from bootstrap.gallery/royal-hospital-admin/design-option-2/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 15 Apr 2021 07:37:53 GMT -->
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Meta -->
    <meta name="description" content="Responsive Bootstrap4 Dashboard Template">
    <meta name="author" content="ParkerThemes">
    <link rel="shortcut icon" href="img/fav.png" />
    <!-- Title -->
    <title>Hospitals Admin Side- Signup</title>
    <!-- *************
			************ Common Css Files *************
			************ -->
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Main CSS -->
    <link rel="stylesheet" href="css/main.css" />
</head>
<body class="authentication">
    <!-- Container start -->
    <div class="container">
        <form id="form1" runat="server">
        <div class="row justify-content-md-center">
            <div class="col-xl-5 col-lg-6 col-md-6 col-sm-12">
                <div class="login-screen">
                    <div class="login-box">
                        <a href="#" class="login-logo">Hospitals </a>
                        <h5>
                            Welcome,<br />
                            Create your Admin Account.</h5>
                        <div class="form-group">
                            <label class="form-label">
                                Enter Name <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txthname" runat="server" class="form-control" placeholder="Enter Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                                ErrorMessage="Please Enter Name*" ControlToValidate="txthname"></asp:RequiredFieldValidator>
                            <%--<input type="text" class="form-control" placeholder="Name" />--%>
                            <br />
                            <label class="form-label">
                                Enter Email <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Enter Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                                ErrorMessage="Please Enter Email*" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                            <br />
                            <label class="form-label">
                                Enter password <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Enter password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red"
                                ErrorMessage="Please Enter Password*" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
                            <br />
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <label class="form-label">
                                        Select State<span class="text-danger">*</span></label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" AutoPostBack="True"
                                        DataSourceID="SqlDataSource1" DataTextField="sname" DataValueField="sid">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"
                                        SelectCommand="SELECT * FROM [state_mstr]"></asp:SqlDataSource>
                                    <br />
                                    <label class="form-label">
                                        Select City<span class="text-danger">*</span></label>
                                    <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" AutoPostBack="True"
                                        DataSourceID="SqlDataSource2" DataTextField="cname" DataValueField="cid">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>"
                                        SelectCommand="SELECT * FROM [city_mstr] WHERE ([sid] = @sid) ">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="sid" PropertyName="SelectedValue"
                                                Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <br />
                            <label class="form-label">
                                Enter address <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtadd" runat="server" class="form-control" placeholder="Enter address"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red"
                                ErrorMessage="Please Enter address*" ControlToValidate="txtadd"></asp:RequiredFieldValidator>
                            <br />
                            <label class="form-label">
                                Enter phno<span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtphno" runat="server" class="form-control" placeholder="Enter phno"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red"
                                ErrorMessage="Please Enter Phno*" ControlToValidate="txtphno"></asp:RequiredFieldValidator>
                            <br />
                        </div>
                        <div class="actions">
                          <%--  <button type="submit" class="btn btn-primary">
                                Signup</button>--%>
                            <asp:Button ID="btn_reg" class="btn btn-primary" runat="server" Text="Signup" 
                                onclick="btn_reg_Click" />

                        </div>
                        <hr>
                        <div class="m-0">
                            <span class="additional-link">Already have an account? <a href="H_login.aspx" class="btn btn-secondary">
                                Login</a></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>
    <!-- Container end -->
</body>
<!-- Mirrored from bootstrap.gallery/royal-hospital-admin/design-option-2/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 15 Apr 2021 07:37:53 GMT -->
</html>
