<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Condicionales 7.aspx.cs" Inherits="proyectouno.Condicionales_7" %>

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
            width: 685px;
        }
        .auto-style2 {
            height: 34px;
        }
        .auto-style5 {
            height: 23px;
            width: 685px;
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
            </tr>
            <tr>
                <td>
                        <asp:Label ID="titulo" runat="server" Text="Ejercicio 7"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lbl1" runat="server" Text="Ingrese el salario del trabajador:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lbl2" runat="server" Text="Porcentaje de la empresa: "></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lbl3" runat="server" Text="Aporte trabajador: "></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lbl4" runat="server" Text="Es porcentaje (si/no): "></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lbl5" runat="server" Text="Resultados"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblresultados" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
                </td>
            </tr>
            <tr>
                <td>
                        &nbsp;</td>
            </tr>
            <tr>
                <td>
                        <asp:Button ID="btnresultado" runat="server" OnClick="btnresultado_Click" Text="Resultado" />
                    </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
