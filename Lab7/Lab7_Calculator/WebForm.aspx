<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="Lab7_Calculator.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <h2>Salary calculator</h2>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Label runat="server" Text="Basic Salary"></asp:Label>
                    <asp:TextBox ID="SalaryBox" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label runat="server" Text="Hours Worked"></asp:Label>
                    <asp:TextBox ID="HoursBox" runat="server"></asp:TextBox>
                    <br /><br />
                    <asp:Button ID="CalculateButton" runat="server" Text="Calculate" OnClick="CalculateButton_Click" />
                    <asp:Button ID="ResetButton" runat="server" Text="Reset" OnClick="ResetButton_Click" />
                    <br /><br />
                    <asp:Label ID="YourSalaryIsLabel" runat="server" Text="Your salary is " Visible="False"></asp:Label><asp:Label ID="TotalSalaryLabel" runat="server" Text="0" Visible="False"></asp:Label>
                </ContentTemplate>
                <Triggers>

                </Triggers>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
