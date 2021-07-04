<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication8.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name <asp:TextBox ID="txtname" runat="server" MaxLength="5" ReadOnly="false" Height="50px" ToolTip="Please enter your name"></asp:TextBox> <br />
            Age <asp:TextBox ID="txtage" runat="server"></asp:TextBox> <br />
              Address <asp:TextBox ID="txtAddress" TextMode="MultiLine"
                  runat="server"></asp:TextBox> <br />
             password <asp:TextBox ID="txtPassword" TextMode="Password"
                  runat="server"></asp:TextBox> <br />
            DOB <asp:TextBox ID="txtdob" TextMode="DateTime"
                  runat="server"></asp:TextBox> <br />
            Email <asp:TextBox ID="txtEmail" TextMode="Email"
                  runat="server"></asp:TextBox> <br />

            <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click" />
            <asp:Button ID="btnRestore" runat="server" Text="resotre" OnClick="btnRestore_Click"  />
        </div>
    </form>
</body>
</html>
