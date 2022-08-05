<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ppen.aspx.cs" Inherits="payment_Ppen" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<title>Payment</title>
<head>
    <style type="text/css">
        .style2
        {
            font-size: xx-large;
            text-align: center;
        }
    </style>
</head>
<body style="color: #0000CC">
<form runat="server">
<h1 class="style2">Your Transaction Is  Processsing.. Please Refresh After 30 Sec... 
    <asp:Button ID="btn_refresh" class="btn btn-primary" runat="server" 
        Text="Refresh" onclick="btn_refresh_Click" />
    </h1>
    </form>