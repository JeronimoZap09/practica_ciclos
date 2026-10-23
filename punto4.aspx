
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="punto6.aspx.cs" Inherits="Proyecto1.punto6" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Control de Pesaje</title>

    <style>
        body {
            font-family: Arial;
            background: #edf2f7;
            margin: 0;
            padding: 25px;
        }

        .contenedor {
            max-width: 750px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 20px #ccd3dc;
        }

        h1 {
            text-align: center;
            color: #183153;
        }

        .descripcion {
            text-align: center;
            color: #666;
            line-height: 1.6;
        }

        label {
            display: block;
            margin-top: 20px;
            font-weight: bold;
            color: #183153;
        }

        .campo {
            width: 100%;
            padding: 12px;
            margin-top: 8px;
            box-sizing: border-box;
            border: 1px solid #bbc7d5;
            border-radius: 8px;
            font-family: Arial;
        }

        textarea.campo {
            min-height: 90px;
            resize: vertical;
        }

        .boton {
            width: 100%;
            padding: 13px;
            margin-top: 15px;
            border: none;
            border-radius: 8px;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }

        .for {
            background: #183153;
        }

        .while {
            background: #16845b;
        }

        .resultado {
            display: block;
            margin-top: 20px;
            padding: 18px;
            background: #edf8f1;
            color: #185c3a;
            border-radius: 8px;
            line-height: 1.8;
            overflow-wrap: anywhere;
        }

        .nota {
            margin-top: 20px;
            padding: 15px;
            background: #f3f6fa;
            border-radius: 8px;
            color: #555;
            line-height: 1.6;
            font-size: 14px;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="contenedor">

        <h1>Control de Pesaje</h1>

        <p class="descripcion">
            Registra el peso anterior y los diez pesajes actuales
            de cada uno de los cinco miembros.
        </p>

        <label>Pesos de la reunión anterior (5 valores):</label>
        <asp:TextBox ID="txtanteriores" runat="server"
            CssClass="campo"
            placeholder="Ejemplo: 80,70,90,65,100" />

        <label>Pesajes actuales (10 por persona):</label>
        <asp:TextBox ID="txtpesajes" runat="server"
            CssClass="campo"
            TextMode="MultiLine"
            placeholder="Persona 1: 79,80,81,80,79,80,80,81,79,80; Persona 2: ... " />

        <asp:Button ID="btnfor" runat="server"
            Text="Calcular con FOR"
            CssClass="boton for"
            OnClick="btnfor_Click" />

        <asp:Button ID="btnwhile" runat="server"
            Text="Calcular con WHILE"
            CssClass="boton while"
            OnClick="btnwhile_Click" />

        <asp:Label ID="lblresultado" runat="server"
            CssClass="resultado" />

        <div class="nota">
            <b>Instrucciones:</b><br />
            1. Escribe los cinco pesos anteriores separados por comas.<br />
            2. Escribe diez pesajes por persona, separados por comas.<br />
            3. Separa los grupos de las cinco personas con punto y coma.<br />
            4. Los pesos deben ser números positivos, expresados en kilogramos.
        </div>

    </div>
</form>
</body>
</html>
