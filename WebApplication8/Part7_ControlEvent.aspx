<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part7_ControlEvent.aspx.cs" Inherits="WebApplication8.Part7_ControlEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

         <a href="Default.aspx">Home</a><br />
        <div>
           Text Box Event <asp:TextBox ID="txtEvent" runat="server" OnTextChanged="txtEvent_TextChanged"></asp:TextBox>


        </div>
         <div>
          Buton Event  <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"></asp:Button>
        </div>
        <div>
            Dropdown event -<asp:DropDownList ID="ddlQualification" runat="server" OnSelectedIndexChanged="ddlQualification_SelectedIndexChanged" AutoPostBack="true">

                 <asp:ListItem Text="10th" Value="1"></asp:ListItem>
                <asp:ListItem Text="12th" Value="2"></asp:ListItem>
                <asp:ListItem Text="Graduate" Value="3"></asp:ListItem>
                            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
