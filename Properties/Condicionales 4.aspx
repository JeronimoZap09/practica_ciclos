<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Condicionales 4.aspx.cs" Inherits="proyectouno.Properties.Condicionales_4" %>

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
                <td>
                        <asp:Label ID="titulo" runat="server" Text="Ejercicio 4"></asp:Label>
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblmonto" runat="server" Text="Monto a ingresar: "></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtmonto" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblcuota" runat="server" Text="Cuota a pagar"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="resultado" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btncuota" runat="server" OnClick="btncuota_Click" Text="Ver Cuota" />
                    </td>
                    <td class="auto-style3"></td>
                </tr>
            </table>
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
