<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="Lab8_LinqToSql.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="margin: auto;">
            <tr>
                <td>
                    <div style="text-align: center;">
                        <h3>Add user</h3>
                        <table style="text-align: center; margin: auto;">
                            <tr>
                                <td style="width: 30%;">
                                    <asp:Label runat="server" Text="Login"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="LoginAddBox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="Password"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="PasswordAddBox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="AddUserButton" runat="server" Text="Add User" OnClick="AddUserButton_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="AddUserStatusLabel" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td>
                    <div style="text-align: center;">
                        <h3>Delete user</h3>
                        <table style="text-align: center; margin: auto;">
                            <tr>
                                <td style="width: 30%;">
                                    <asp:Label runat="server" Text="Login"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="LoginDeleteBox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="Password"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="PasswordDeleteBox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="DeleteUserButton" runat="server" Text="Delete User" OnClick="DeleteUserButton_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="DeleteUserStatusLabel" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="margin: auto;">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
                            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
        
        <br />
        
        <div style="text-align: center; margin: auto;">
            
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
        
    </form>
</body>
</html>
