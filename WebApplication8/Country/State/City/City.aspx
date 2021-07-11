<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="City.aspx.cs" Inherits="WebApplication8.Country.State.City.City" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>City</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>City page example</h1>
            <img src="../../../WelcomeScan.jpg" />

             <asp:DropDownList ID="ddlCountry" runat="server"></asp:DropDownList>
          <%--  <asp:Image ID="Image1" runat="server" /> --%>
        </div>
    </form>
</body>
</html>
