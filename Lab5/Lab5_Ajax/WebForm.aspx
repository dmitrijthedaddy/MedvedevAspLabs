<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="Lab5_Ajax.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
        <div>
            <asp:Button ID="UpdateDefaultButton" runat="server" Text="Update (Default)" OnClick="Button_Click" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Button ID="UpdateAjaxButton" runat="server" Text="Update (AJAX)" OnClick="Button_Click" />
                    <br /><br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
