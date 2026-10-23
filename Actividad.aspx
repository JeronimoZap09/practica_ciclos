<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Actividad.aspx.cs" Inherits="Proyecto1.Actividad" %>

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
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl1" runat="server" Text="Digitar la cantidad de obreros"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl2" runat="server" Text="Digitar las horas trabajadas"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl3" runat="server" Text="El salario de cada trabajador es"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblresultado" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Btnborrar" runat="server" Text="Borrar" />
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Btnejecutar" runat="server" OnClick="Btnejecutar_Click" Text="Ejecutar" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
