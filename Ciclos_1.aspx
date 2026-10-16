<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ciclos_1.aspx.cs" Inherits="proyectouno.Ciclos_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Ciclos 1</div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbledad1" runat="server" Text="Edad 1:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtedad1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbledad2" runat="server" Text="Edad 2:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtedad2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbledad3" runat="server" Text="Edad 3:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtedad3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbledad4" runat="server" Text="Edad 4:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtedad4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbledad5" runat="server" Text="Edad 5:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtedad5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnresultado" runat="server" OnClick="btnresultado_Click" Text="Resultado suma:" />
                </td>
                <td>
                    <asp:Label ID="lblresultadosuma" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
