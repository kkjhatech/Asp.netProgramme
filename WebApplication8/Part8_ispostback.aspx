﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part8_ispostback.aspx.cs" Inherits="WebApplication8.Part8_ispostback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="font-family: Arial">
    <tr>
        <td colspan = "2"><b>Employee Details Form</b></td>
    </tr>
    <tr>
        <td>First Name: </td>
        <td> <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox> </td>
    </tr>
    <tr>
        <td>Last Name: </td>
        <td> <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox> </td>
    </tr>
    <tr>
        <td>City:</td>
        <td>
            <asp:DropDownList ID="ddlCity" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Button ID="btnSubmit" runat="server"  
                Text="Register Employee" OnClick="btnSubmit_Click" />
        </td>
    </tr>
</table>
        </div>
    </form>
</body>
</html>
