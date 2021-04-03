<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="Lab4_Validators.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="NameLabel" runat="server" Text="Ваше имя"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Provide your name" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="PhoneLabel" runat="server" Text="Телефон"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="PhoneTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PhoneRequiredFieldValidator" runat="server" ControlToValidate="PhoneTextBox" ErrorMessage="Provide your phone" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text="E-mail"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Provide e-mail" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ErrorMessage="E-mail is incorrect" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="EmailTextBox"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="SubmitButton" runat="server" Text="Отправить" OnClick="SubmitButton_Click" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="SummaryLabel" runat="server" Text=""></asp:Label>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
