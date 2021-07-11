<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownList.aspx.cs" Inherits="WebApplication8.Data.Countries.DropDownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlCountry" runat="server"></asp:DropDownList>
        </div>
        <asp:Button ID="btnDisplay" runat="server" Text="display" OnClick="btnDisplay_Click"  />
    </form>
    
</body>
</html>
