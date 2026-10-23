
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="punto1.aspx.cs" Inherits="Proyecto1.punto1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Conteo de personas</title>

    <style type="text/css">

        /* MEJORA: Diseño general y fondo de la página. */
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 30px 15px;
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(135deg, #eaf2ff, #f5f7fb);
            color: #243247;
            min-height: 100vh;
        }

        /* MEJORA: Tarjeta principal centrada. */
        .contenedor {
            max-width: 650px;
            margin: 35px auto;
            background-color: white;
            padding: 35px;
            border-radius: 16px;
            box-shadow: 0 8px 30px rgba(0, 50, 120, 0.12);
        }

        /* MEJORA: Título y descripción más claros. */
        .titulo {
            text-align: center;
            color: #155eef;
            font-size: 28px;
            margin: 0 0 10px 0;
        }

        .descripcion {
            text-align: center;
            color: #68778d;
            font-size: 14px;
            line-height: 1.6;
            margin-bottom: 30px;
        }

        /* MEJORA: Los campos quedan organizados verticalmente. */
        .campo {
            margin-bottom: 22px;
        }

        .etiqueta {
            display: block;
            font-weight: bold;
            font-size: 14px;
            margin-bottom: 9px;
            color: #34445c;
        }

        /* MEJORA: Campos con bordes suaves y efecto al seleccionarlos. */
        .entrada {
            width: 100%;
            padding: 13px 14px;
            border: 1px solid #cbd5e1;
            border-radius: 8px;
            font-size: 15px;
            background-color: #ffffff;
            color: #243247;
            outline: none;
            transition: border-color 0.2s, box-shadow 0.2s;
        }

        .entrada:focus {
            border-color: #155eef;
            box-shadow: 0 0 0 3px rgba(21, 94, 239, 0.12);
        }

        /* MEJORA: Instrucciones visibles debajo del campo. */
        .ayuda {
            display: block;
            margin-top: 8px;
            font-size: 12px;
            color: #68778d;
            line-height: 1.5;
        }

        /* MEJORA: Botones modernos con efectos al pasar el cursor. */
        .botones {
            display: flex;
            gap: 12px;
            margin-top: 25px;
        }

        .boton {
            flex: 1;
            padding: 13px 16px;
            border: none;
            border-radius: 8px;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.2s, transform 0.2s;
        }

        .boton:hover {
            transform: translateY(-2px);
        }

        .primario {
            background-color: #155eef;
            color: white;
        }

        .primario:hover {
            background-color: #104bc4;
        }

        .secundario {
            background-color: #e9eff8;
            color: #34445c;
        }

        .secundario:hover {
            background-color: #d8e2f1;
        }

        .boton:focus-visible {
            outline: 3px solid #8bb4ff;
            outline-offset: 3px;
        }

        /* MEJORA: Zona del resultado separada visualmente. */
        .zona-resultado {
            margin-top: 28px;
            padding: 20px;
            background-color: #f5f8ff;
            border: 1px solid #dbe7ff;
            border-radius: 10px;
            min-height: 75px;
        }

        .titulo-resultado {
            display: block;
            color: #155eef;
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 12px;
        }

        .resultado {
            display: block;
            color: #34445c;
            font-size: 14px;
            line-height: 1.7;
            overflow-wrap: anywhere;
        }

        /* MEJORA: Diseño adaptable para celulares. */
        @media screen and (max-width: 480px) {
            body {
                padding: 12px;
            }

            .contenedor {
                margin: 15px auto;
                padding: 22px 18px;
            }

            .titulo {
                font-size: 23px;
            }

            .botones {
                flex-direction: column;
            }

            .boton {
                width: 100%;
            }
        }

    </style>
</head>

<body>
    <form id="form1" runat="server">

        <!-- MEJORA: Contenedor principal del formulario. -->
        <div class="contenedor">

            <h1 class="titulo">Conteo de personas</h1>

            <p class="descripcion">
                Ingresa la cantidad de personas y sus géneros
                para conocer los resultados del grupo.
            </p>

            <div class="campo">
                <asp:Label ID="lblpersonas" runat="server"
                    Text="Cantidad total de personas:"
                    AssociatedControlID="txtpersonas"
                    CssClass="etiqueta">
                </asp:Label>

                <!-- MEJORA: El campo solicita números enteros positivos. -->
                <asp:TextBox ID="txtpersonas" runat="server"
                    TextMode="Number"
                    min="1"
                    step="1"
                    CssClass="entrada">
                </asp:TextBox>

                <asp:Label ID="lblayudapersonas" runat="server"
                    Text="Escribe cuántas personas forman el grupo."
                    CssClass="ayuda">
                </asp:Label>
            </div>

            <div class="campo">
                <asp:Label ID="lblgenero" runat="server"
                    Text="Géneros de las personas:"
                    AssociatedControlID="txtgenero"
                    CssClass="etiqueta">
                </asp:Label>

                <asp:TextBox ID="txtgenero" runat="server"
                    CssClass="entrada">
                </asp:TextBox>

                <!-- MEJORA: Se explica el formato esperado con un ejemplo. -->
                <asp:Label ID="lblayuda" runat="server"
                    Text="Usa M para hombre y F para mujer. Ejemplo: M, F, F, M."
                    CssClass="ayuda">
                </asp:Label>
            </div>

            <!-- MEJORA: Botones alineados y con estilos propios. -->
            <div class="botones">
                <asp:Button ID="btncontar" runat="server"
                    OnClick="btncontar_Click"
                    Text="Contar personas"
                    CssClass="boton primario" />

                <asp:Button ID="btnlimpiar" runat="server"
                    OnClick="btnlimpiar_Click"
                    Text="Limpiar campos"
                    CausesValidation="false"
                    CssClass="boton secundario" />
            </div>

            <div class="zona-resultado">
                <asp:Label ID="lblconteo" runat="server"
                    Text="Resultado del conteo"
                    CssClass="titulo-resultado">
                </asp:Label>

                <asp:Label ID="lblconteor" runat="server"
                    CssClass="resultado">
                </asp:Label>
            </div>

        </div>

    </form>
</body>
</html>
