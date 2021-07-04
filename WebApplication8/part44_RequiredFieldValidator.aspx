<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="part44_RequiredFieldValidator.aspx.cs" Inherits="WebApplication8.part44_RequiredFieldValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>

                <tr>

                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your name" ForeColor="Red" ControlToValidate="txtname" Display="Dynamic"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td rowspan="3">
                        <asp:Button ID="btnsubmit" runat="server" Text="Button" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
