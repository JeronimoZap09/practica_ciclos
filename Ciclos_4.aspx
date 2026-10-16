<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Muestreo.aspx.cs" Inherits="proyectouno.Muestreo" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Muestreo de Pesos</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial; margin: 20px;">
            <h2>Muestreo de Pesos (50 personas)</h2>
            
            <p>
                Edad: <asp:TextBox ID="txtEdad" runat="server" Width="100px"></asp:TextBox>
            </p>
            <p>
                Peso (kg): <asp:TextBox ID="txtPeso" runat="server" Width="100px"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar Persona" OnClick="btnRegistrar_Click" />
            </p>

            <hr />
            <h3>Resultados:</h3>
            <p><asp:Label ID="lblInfo" runat="server" Text="Total registrados: 0 / 50"></asp:Label></p>
            <p><asp:Label ID="lblNinos" runat="server" Text="Niños (0-12): Promedio = 0 kg"></asp:Label></p>
            <p><asp:Label ID="lblJovenes" runat="server" Text="Jóvenes (13-29): Promedio = 0 kg"></asp:Label></p>
            <p><asp:Label ID="lblAdultos" runat="server" Text="Adultos (30-59): Promedio = 0 kg"></asp:Label></p>
            <p><asp:Label ID="lblViejos" runat="server" Text="Viejos (60+): Promedio = 0 kg"></asp:Label></p>
            <p><asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label></p>
        </div>
    </form>
</body>
</html>