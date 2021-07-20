<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part32_JqueryDatePicker.aspx.cs" Inherits="WebApplication8.Part32_JqueryDatePicker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
<link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />

    <script type="text/javascript">
    $(function () {
        $("[id*=txtDate]").datepicker({
            showOn: 'button',
           changeMonth: true,
            changeYear: true,
            buttonImageOnly: true,
            buttonImage: 'imageupload/calendar.png'
        });
    });
</script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:TextBox ID="txtDate" runat="server" ReadOnly = "true"></asp:TextBox>
<hr />
<asp:Button ID="btnSubmit" runat="server" Text="Submit"
    onclick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
