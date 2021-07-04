<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part47_RegularExpression.aspx.cs" Inherits="WebApplication8.Part47_RegularExpression" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
    function userValid() {    
var Name,txt1 , gender, con, EmailId, emailExp;    
Name = document.getElementById("txtUserId").value;    
        gender = document.getElementById("ddlType").value;
        txt1= document.getElementById("txt1").value;
con = document.getElementById("txt2").value;    
EmailId = document.getElementById("txtmail").value;    
emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id    
if (Name == '' && gender == 0 && txt1 == '' && con == '' && EmailId == '') {    
    alert("Enter All Fields");    
    return false;    
}    
if (Name == '') {    
    alert("Please Enter Login ID");    
    return false;    
}    
if (gender == 0) {    
   alert("Please Select gender");    
   return false;    
}    
if ( txt1== '')    
{    
     alert("Please Enter word");    
     return false;    
}    
if (txt1 != '' && con == '')    
{    
    alert("Please Confirm word");    
    return false;    
}    
if (txt1 != con)    
{    
    alert("word not match");    
    return false;    
}    
if (EmailId == '')    
{    
    alert("Email Id Is Required");    
    return false;    
}    
if (EmailId != '')    
{    
    if (!EmailId.match(emailExp))    
    {    
        alert("Invalid Email Id");    
        return false;    
     }    
  }    
  return true;    
}  
</script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <br />    
    <br />    
    <div>    
        <table>    
            <tr>    
                <td>    
                    Name    
                </td>    
                <td>    
                    <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>    
                </td>    
            </tr>    
            <tr>    
                <td>    
                    Email Id    
                </td>    
                <td>    
                    <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>    
                </td>    
            </tr>    
            <tr>    
                <td>    
                    Gender    
                </td>    
                <td>    
                    <asp:DropDownList ID="ddlType" runat="server">    
                        <asp:ListItem Value="0">-Select-</asp:ListItem>    
                        <asp:ListItem Value="1">Male</asp:ListItem>    
                        <asp:ListItem Value="2">Female</asp:ListItem>    
                    </asp:DropDownList>    
                </td>    
            </tr>    
            <tr>    
                <td>    
                    word    
                </td>    
                <td>    
                    <asp:TextBox ID="txt1" runat="server" ></asp:TextBox>    
                </td>    
            </tr>    
            <tr>    
                <td>    
                    Confirm word    
                </td>    
                <td>    
                    <asp:TextBox ID="txt2" runat="server" ></asp:TextBox>    
                </td>    
            </tr>    
            <tr>    
                <td>    
                </td>    
                <td>    
                    <asp:Button ID="btnSave" runat="server" Text="Create" OnClientClick="return userValid();" />    
                    <asp:Button ID="Button1" runat="server" Text="Reset" />    
                </td>    
            </tr>    
        </table>    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>    
    </div>    
        </div>
    </form>
</body>
</html>
