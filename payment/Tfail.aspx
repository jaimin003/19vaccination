<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tfail.aspx.cs" Inherits="payment_Tfail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<head>
    <style type="text/css">

        .style2
        {
            font-size: xx-large;
            text-align: center;
        }
        .style3
        {
            color: #FF0000;
        }
    </style>
</head>


<form id="form1" runat="server">
<h1 class="style2"><span class="style3">Your Transaction Is  Fail.. Please Request 
    Again...</span> 
    <asp:Button ID="btn_refresh" class="btn btn-primary" runat="server" 
        Text="Try Again" onclick="btn_refresh_Click" />
    </h1>
    </form>


