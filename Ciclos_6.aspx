<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Verificacion.aspx.cs" Inherits="proyectouno.Verificacion" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Centro de Verificación</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial; margin: 20px;">
            <h2>Centro de Verificación (25 automóviles)</h2>
            
            <p>
                Puntos contaminantes: <asp:TextBox ID="txtPuntos" runat="server" Width="100px"></asp:TextBox>
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar Auto" OnClick="btnRegistrar_Click" />
            </p>

            <hr />
            <h3>Resultados:</h3>
            <p><asp:Label ID="lblInfo" runat="server" Text="Autos registrados: 0 / 25"></asp:Label></p>
            <p><asp:Label ID="lblPromedio" runat="server" Text="Promedio de puntos: 0"></asp:Label></p>
            <p><asp:Label ID="lblMenor" runat="server" Text="Menor contaminación: 0"></asp:Label></p>
            <p><asp:Label ID="lblMayor" runat="server" Text="Mayor contaminación: 0"></asp:Label></p>
            <p><asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label></p>
        </div>
    </form>
</body>
</html>