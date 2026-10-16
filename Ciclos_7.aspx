<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Atleta.aspx.cs" Inherits="proyectouno.Atleta" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Evaluación de Atleta</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial; margin: 20px;">
            <h2>Evaluación de Atleta (10 días)</h2>
            
            <p>
                Tiempo del día (minutos): <asp:TextBox ID="txtTiempo" runat="server" Width="100px"></asp:TextBox>
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar Día" OnClick="btnRegistrar_Click" />
            </p>

            <hr />
            <h3>Resultados:</h3>
            <p><asp:Label ID="lblDias" runat="server" Text="Días registrados: 0 / 10"></asp:Label></p>
            <p><asp:Label ID="lblPromedio" runat="server" Text="Promedio de tiempos: 0 min"></asp:Label></p>
            <p><asp:Label ID="lblResultadoFinal" runat="server" Text="Estado: Pendiente" Font-Bold="true"></asp:Label></p>
            <p><asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label></p>
        </div>
    </form>
</body>
</html>