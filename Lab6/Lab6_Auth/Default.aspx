<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab6_Auth.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="margin: auto; width: 210px; height: 100px;">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Логин"
                            Font-Bold="true" Font-Size="12"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="LoginBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Пароль"
                            Font-Bold="true" Font-Size="12"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="PasswordBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="LoginButton" runat="server" Text="Войти"
                            Width="100px" Font-Bold="true" Font-Size="12" OnClick="LoginButton_Click" />
                        <asp:Button ID="SendButton" runat="server" Text="Отправить"
                            Width="100px" Font-Bold="true" Font-Size="12" OnClick="SendButton_Click" />
                    </td>
                </tr>
            </table>
            <div style="text-align: center;">
                <asp:Label ID="MessageLabel" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
