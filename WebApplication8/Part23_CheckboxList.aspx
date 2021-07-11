<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part23_CheckboxList.aspx.cs" Inherits="WebApplication8.Part23_CheckboxList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="CheckBoxList1" RepeatDirection="Vertical" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">

                <asp:ListItem Text="10th" Value="1"></asp:ListItem>
                <asp:ListItem Text="12th" Value="2"></asp:ListItem>
                <asp:ListItem Text="Graduate" Value="3"></asp:ListItem>

            </asp:CheckBoxList>
        </div>
    </form>
</body>
</html>
