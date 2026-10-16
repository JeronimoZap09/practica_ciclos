<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioUno.aspx.cs" Inherits="Proyecto1.FormularioUno" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Ejercicios Guía</title>
    <style type="text/css">
        #form1 {
            width: 618px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- EJERCICIO 2 -->
        <h2>2. Expendio de Naranjas</h2>
        <p>Precio Kilo: <asp:TextBox ID="txtPrecioKilo" runat="server" Text="1000"></asp:TextBox></p>
        <p>Kilos de los 15 clientes (separados por coma):</p>
        <asp:TextBox ID="txtKilosClientes" runat="server" Width="400px" Text="12, 8, 15, 20, 5, 10, 11, 14, 9, 18, 22, 7, 13, 16, 4"></asp:TextBox><br /><br />
        <asp:Button ID="btnEjercicio2" runat="server" Text="Calcular Naranjas" OnClick="btnEjercicio2_Click" /><br /><br />
        <asp:Label ID="lblResultado2" runat="server"></asp:Label>

        <hr />

        <!-- EJERCICIO 3 -->
        <h2>3. Centro de Verificación</h2>
        <p>Puntos de contaminación de los 25 carros (separados por coma):</p>
        <asp:TextBox ID="txtPuntosCarros" runat="server" Width="400px" Text="45, 30, 88, 12, 60, 25, 90, 15, 33, 40, 52, 61, 70, 82, 19, 28, 44, 39, 50, 77, 85, 92, 10, 36, 48"></asp:TextBox><br /><br />
        <asp:Button ID="btnEjercicio3" runat="server" Text="Calcular Vehículos" OnClick="btnEjercicio3_Click" /><br /><br />
        <asp:Label ID="lblResultado3" runat="server"></asp:Label>

        <hr />

        <!-- EJERCICIO 4 -->
        <h2>4. Evaluación de Atleta</h2>
        <p>Tiempos de las 10 pruebas (separados por coma):</p>
        <asp:TextBox ID="txtTiemposAtleta" runat="server" Width="400px" Text="14, 15, 13.5, 14.8, 15.2, 14, 13.9, 15, 14.2, 14.5"></asp:TextBox><br /><br />
        <asp:Button ID="btnEjercicio4" runat="server" Text="Evaluar Atleta" OnClick="btnEjercicio4_Click" /><br /><br />
        <asp:Label ID="lblResultado4" runat="server"></asp:Label>

        <hr />

        <!-- EJERCICIO 5 -->
        <h2>5. Estudio Zoológico</h2>
        <p>Animal: 
            <asp:DropDownList ID="ddlAnimal" runat="server">
                <asp:ListItem Value="elefantes">Elefantes (20)</asp:ListItem>
                <asp:ListItem Value="jirafas">Jirafas (15)</asp:ListItem>
                <asp:ListItem Value="chimpanzes">Chimpancés (40)</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>Edades de los animales (separadas por coma):</p>
        <asp:TextBox ID