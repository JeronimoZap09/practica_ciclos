<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Condicional 6.aspx.cs" Inherits="proyectouno.Condicional_6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 34px;
            width: 101px;
        }
        .auto-style2 {
            height: 34px;
        }
        .auto-style5 {
            height: 23px;
            width: 101px;
        }
        .auto-style3 {
            height: 23px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                        <asp:Label ID="titulo" runat="server" Text="Ejercicio 6"></asp:Label>
                    </td>
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
                        <asp:Label ID="lblingresos" runat="server" Text="Monto de fianza"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtingresos" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        Cuotas a pagar</td>
                    <td class="auto-style2">
                        <asp:Label ID="resultadocuota" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
            </table>
                </td>
            </tr>
            <tr>
                <td>
                        <asp:Button ID="btnresultado" runat="server" OnClick="btnresultado_Click" Text="Resultado" Width="129px" />
                    </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
