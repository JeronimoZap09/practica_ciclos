<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Zoologico.aspx.cs" Inherits="proyectouno.Zoologico" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Muestreo del Zoológico</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial; margin: 20px;">
            <h2>Muestreo de Animales</h2>
            
            <p>
                Seleccione Animal:<br />
                <asp:DropDownList ID="ddlAnimal" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlAnimal_SelectedIndexChanged">
                    <asp:ListItem Text="Elefantes (20 muestras)" Value="20"></asp:ListItem>
                    <asp:ListItem Text="Jirafas (15 muestras)" Value="15"></asp:ListItem>
                    <asp:ListItem Text="Chimpancés (40 muestras)" Value="40"></asp:ListItem>
                </asp:DropDownList>
            </p>

            <p>
                Edad del animal (años): <asp:TextBox ID="txtEdad" runat="server" Width="100px"></asp:TextBox>
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar Muestra" OnClick="btnRegistrar_Click" />
            </p>

            <hr />
            <h3>Porcentajes por Categoría:</h3>
            <p><asp:Label ID="lblProgreso" runat="server" Text="Muestras: 0 / 20"></asp:Label></p>
            <p><asp:Label ID="lblCat1" runat="server" Text="De 0 a 1 año: 0%"></asp:Label></p>
            <p><asp:Label ID="lblCat2" runat="server" Text="Más de 1 y menos de 3 años: 0%"></asp:Label></p>
            <p><asp:Label ID="lblCat3" runat="server" Text="3 años o más: 0%"></asp:Label></p>
            <p><asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label></p>
        </div>
    </form>
</body>
</html>