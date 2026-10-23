
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="punto5.aspx.cs" Inherits="Proyecto1.punto5" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Inversión Bancaria</title>

    <style>
        body {
            font-family: Arial;
            background: #edf2f7;
            margin: 0;
            padding: 30px;
        }

        .contenedor {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 20px #ccd3dc;
        }

        h1 {
            text-align: center;
            color: #12345a;
        }

        .descripcion {
            text-align: center;
            color: #666;
            line-height: 1.5;
        }

        label {
            display: block;
            margin-top: 20px;
            font-weight: bold;
            color: #12345a;
        }

        .campo {
            width: 100%;
            padding: 12px;
            margin-top: 8px;
            box-sizing: border-box;
            border: 1px solid #bbc7d5;
            border-radius: 8px;
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
            background: #12345a;
        }

        .while {
            background: #16845b;
        }

        .resultado {
            display: block;
            margin-top: 20px;
            padding: 18px;
            background: #e7f8ef;
            color: #12633e;
            border-radius: 8px;
            line-height: 1.8;
        }

        .nota {
            margin-top: 20px;
            padding: 12px;
            background: #f3f6fa;
            border-radius: 8px;
            color: #555;
            font-size: 14px;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="contenedor">

        <h1>Mi Inversión</h1>

        <p class="descripcion">
            Calcula el crecimiento de tu dinero con una tasa
            de interés mensual del 2%, reinvirtiendo las ganancias.
        </p>

        <label>Dinero inicial a invertir:</label>

        <asp:TextBox ID="txtinversion" runat="server"
            CssClass="campo"
            TextMode="Number"
            step="any"
            placeholder="Ejemplo: 100000" />

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
            <b>Información:</b> El cálculo comprende 12 meses
            con una tasa mensual del 2% compuesto.
        </div>

    </div>
</form>
</body>
</html>