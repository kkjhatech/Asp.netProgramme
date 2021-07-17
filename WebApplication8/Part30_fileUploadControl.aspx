<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part30_fileUploadControl.aspx.cs" Inherits="WebApplication8.Part30_fileUploadControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <a href="Default.aspx">Home</a><br />

            <asp:FileUpload ID="flUpload" runat="server" /> <br />

            <asp:Button ID="btnsubmit" runat="server" Text="Upload file" OnClick="btnsubmit_Click" /> <br />

            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
