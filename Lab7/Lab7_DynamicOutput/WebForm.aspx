<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="Lab7_DynamicOutput.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="table" style="margin: auto; width: 90%; border: 1px solid blue;">
                <tr style="font-weight: bold; text-align: center;">
                    <td style="width: 20%;">Наименование</td>
                    <td style="width: 70%;">Описание</td>
                    <td style="width: 10%;">Цена</td>
                </tr>
                <% foreach (var good in GetGoods())
                    {
                        Response.Write(
                            $@"<tr style='text-align: left;'>
                                    <td style='border: 1px solid blue'>{good.Title}</td>
                                    <td style='border: 1px solid blue'>{good.Description}</td>
                                    <td style='border: 1px solid blue'>{good.Price}</td>
                              ");
                    }
                %>
            </table>
        </div>
    </form>
</body>
</html>
