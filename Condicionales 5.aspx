<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Condicionales 5.aspx.cs" Inherits="proyectouno.Condicionales_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 34px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 34px;
            width: 685px;
        }
        .auto-style5 {
            height: 23px;
            width: 685px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                        <asp:Label ID="titulo" runat="server" Text="Ejercicio 5"></asp:Label>
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblcolegiatura" runat="server" Text="Valo Colegiatura:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtcolegiatura" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblpromedio" runat="server" Text="Promedio del estudiante: "></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtpromedio" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lbldescuento" runat="server" Text="Descuento: "></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="resultado" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style3"></td>
                </tr>
            </table>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                        <asp:Button ID="btntotal" runat="server" OnClick="btntotal_Click" Text="Total" />
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
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
        <div>
        </div>
    </form>
</body>
</html>
