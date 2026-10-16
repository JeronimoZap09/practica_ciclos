<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Naranjas.aspx.cs" Inherits="proyectouno.Naranjas" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Expendio de Naranjas</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial; margin: 20px;">
            <h2>Expendio de Naranjas (15 clientes)</h2>
            <p>Precio por kilo: $5.000 (Descuento del 15% si compra > 10 kg)</p>
            
            <p>
                Kilos comprados: <asp:TextBox ID="txtKilos" runat="server" Width="100px"></asp:TextBox>
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar Venta" OnClick="btnRegistrar_Click" />
            </p>

            <hr />
            <h3>Resultados:</h3>
            <p><asp:Label ID="lblCliente" runat="server" Text="Cliente actual: 0 / 15"></asp:Label></p>
            <p><asp:Label ID="lblPagoCliente" runat="server" Text="Pago de este cliente: $0"></asp:Label></p>
            <p><asp:Label ID="lblTotalTienda" runat="server" Text="Total percibido por la tienda: $0"></asp:Label></p>
            <p><asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label></p>
        </div>
    </form>
</body>
</html>