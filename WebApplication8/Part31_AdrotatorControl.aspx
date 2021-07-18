<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part31_AdrotatorControl.aspx.cs" Inherits="WebApplication8.Part31_AdrotatorControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <a href="Default.aspx">Home</a><br />

            <asp:AdRotator ID="adrControl" runat="server" Target="_blank" AdvertisementFile="~/Advertisment.xml"  />

            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
