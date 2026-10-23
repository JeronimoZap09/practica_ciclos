
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="punto4.aspx.cs" Inherits="Proyecto1.punto4" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Calcomanías de vehículos</title>

    <style>
        body {
            font-family: Arial;
            background: #eef3f8;
            margin: 0;
            padding: 30px;
        }

        .contenedor {
            max-width: 550px;
            margin: auto;
            padding: 25px;
            background: white;
            border-radius: 15px;
            box-shadow: 0 4px 15px #cccccc;
        }

        h1 {
            text-align: center;
            color: #0759a5;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-top: 7px;
            box-sizing: border-box;
            border: 1px solid #bbb;
            border-radius: 7px;
        }

        .boton {
            margin-top: 20px;
            padding: 12px;
            width: 100%;
            background: #0759a5;
            color: white;
            border: none;
            border-radius: 7px;
            cursor: pointer;
        }

        .resultado {
            display: block;
            margin-top: 20px;
            padding: 15px;
            background: #eef3f8;
            border-radius: 8px;
            white-space: pre-line;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="contenedor">
        <h1>Calcomanías de vehículos</h1>

        <label>Cantidad de automóviles:</label>
        <asp:TextBox ID="txtcantidad" runat="server"
            TextMode="Number" />

        <label>Últimos dígitos de las placas:</label>
        <asp:TextBox ID="txtdigitos" runat="server"
            placeholder="Ejemplo: 1,3,5,8,0" />

        <asp:Button ID="btncontar" runat="server"
            Text="Contar calcomanías"
            CssClass="boton"
            OnClick="btncontar_Click" />

        <asp:Label ID="lblrespuesta" runat="server"
            CssClass="resultado" />
    </div>
</form>
</body>
</html>
