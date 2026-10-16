<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CIclos_2.aspx.cs" Inherits="proyectouno.CIclos_2" %>

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
            width: 230px;
        }
        .auto-style3 {
            width: 230px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbltitulo" runat="server" Text="Ciclo 2"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbl1" runat="server" Text="Ingrese un número: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbl2" runat="server" Text="Ingrese un número: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbl3" runat="server" Text="Ingrese un número: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblcubo" runat="server" Text="Cubo: "></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblcubor" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Cuarta: "></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblcuartar" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnrespuesta" runat="server" OnClick="btnrespuesta_Click" Text="Resultado" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
