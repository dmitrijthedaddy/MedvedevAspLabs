<%@ Page Theme="Тема2" Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="PageDecoration.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="Имя"></asp:Label></td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="E-mail"></asp:Label></td>
            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Год рождения"></asp:Label></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td><asp:Button Text="Отправить" runat="server" /></td>
        </tr>
    </table>
</asp:Content>
