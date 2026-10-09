<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioUno.aspx.cs" Inherits="Proyecto1.FormularioUno" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Problemas propuestos</title>
    <style>
        body { font-family: "Times New Roman", serif; font-size: 16px; }
        .contenedor { display: flex; flex-wrap: wrap; gap: 20px; }
        .problema { width: 48%; min-width: 420px; border: 1px dotted #999; padding: 10px; box-sizing: border-box; }
        .problema h3 { margin: 0 0 8px 0; font-size: 17px; }
        .problema table td { padding: 3px 8px 3px 0; }
        .problema input[type=text] { width: 150px; border: 2px solid #4b0a6b; }
        .problema input[type=submit] { background-color: #8e3fd6; border: 2px solid #4b0a6b; padding: 4px 14px; margin: 8px 0; cursor: pointer; }
        .resultado { display: block; margin-top: 4px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor">

            <!-- 1. Masa de aire -->
            <div class="problema">
                <h3>1. Masa de aire</h3>
                <table>
                    <tr><td>Ingrese la temperatura</td><td><asp:TextBox ID="TxtTemperatura" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Ingrese el volumen</td><td><asp:TextBox ID="TxtVolumen" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Ingrese la presión</td><td><asp:TextBox ID="TxtPresion" runat="server"></asp:TextBox></td></tr>
                </table>
                <asp:Button ID="Resultado1" runat="server" Text="Resultado" OnClick="Resultado1_Click" />
                <asp:Label ID="LblResultado1" runat="server" CssClass="resultado"></asp:Label>
            </div>

            <!-- 2. Pulsaciones -->
            <div class="problema">
                <h3>2. Pulsaciones por cada 10 segundos</h3>
                <table>
                    <tr><td>Ingrese la edad</td><td><asp:TextBox ID="TxtEdad" runat="server"></asp:TextBox></td></tr>
                </table>
                <asp:Button ID="Resultado2" runat="server" Text="Resultado" OnClick="Resultado2_Click" />
                <asp:Label ID="LblResultado2" runat="server" CssClass="resultado"></asp:Label>
            </div>

            <!-- 3. Nuevo salario -->
            <div class="problema">
                <h3>3. Nuevo salario (incremento 25%)</h3>
                <table>
                    <tr><td>Ingrese el salario anterior</td><td><asp:TextBox ID="TxtSalarioAnterior" runat="server"></asp:TextBox></td></tr>
                </table>
                <asp:Button ID="Resultado3" runat="server" Text="Resultado" OnClick="Resultado3_Click" />
                <asp:Label ID="LblResultado3" runat="server" CssClass="resultado"></asp:Label>
            </div>

            <!-- 4. Hospital -->
            <div class="problema">
                <h3>4. Presupuesto del hospital</h3>
                <table>
                    <tr><td>Ingrese el presupuesto anual</td><td><asp:TextBox ID="TxtPresupuesto" runat="server"></asp:TextBox></td></tr>
                </table>
                <asp:Button ID="Resultado4" runat="server" Text="Resultado" OnClick="Resultado4_Click" />
                <asp:Label ID="LblResultado4" runat="server" CssClass="resultado"></asp:Label>
            </div>

            <!-- 5. Tienda -->
            <div class="problema">
                <h3>5. Precio de venta (ganancia 30%)</h3>
                <table>
                    <tr><td>Ingrese el precio de compra</td><td><asp:TextBox ID="TxtPrecioCompra" runat="server"></asp:TextBox></td></tr>
                </table>
                <asp:Button ID="Resultado5" runat="server" Text="Resultado" OnClick="Resultado5_Click" />
                <asp:Label ID="LblResultado5" runat="server" CssClass="resultado"></asp:Label>
            </div>

            <!-- 6. Corredor -->
            <div class="problema">
                <h3>6. Tiempo promedio de la ruta (minutos)</h3>
                <table>
                    <tr><td>Tiempo del lunes</td><td><asp:TextBox ID="TxtLunes" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Tiempo del miércoles</td><td><asp:TextBox ID="TxtMiercoles" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Tiempo del viernes</td><td><asp:TextBox ID="TxtViernes" runat="server"></asp:TextBox></td></tr>
                </table>
                <asp:Button ID="Resultado6" runat="server" Text="Resultado" OnClick="Resultado6_Click" />
                <asp:Label ID="LblResultado6" runat="server" CssClass="resultado"></asp:Label>
            </div>

            <!-- 7. Inversión -->
            <div class="problema">
                <h3>7. Porcentaje de inversión</h3>
                <table>
                    <tr><td>Inversión persona 1</td><td><asp:TextBox ID="TxtInversion1" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Inversión persona 2</td><td><asp:TextBox ID="TxtInversion2" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Inversión persona 3</td><td><asp:TextBox ID="TxtInversion3" runat="server"></asp:TextBox></td></tr>
                </table>
                <asp:Button ID="Resultado7" runat="server" Text="Resultado" OnClick="Resultado7_Click" />
                <asp:Label ID="LblResultado7" runat="server" CssClass="resultado"></asp:Label>
            </div>

            <!-- 8. Promedios -->
            <div class="problema">
                <h3>8. Promedio en Matemáticas, Física y Química</h3>
                <table>
                    <tr><td>Matemáticas: examen</td><td><asp:TextBox ID="TxtMatExamen" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Matemáticas: tarea 1</td><td><asp:TextBox ID="TxtMatTarea1" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Matemáticas: tarea 2</td><td><asp:TextBox ID="TxtMatTarea2" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Matemáticas: tarea 3</td><td><asp:TextBox ID="TxtMatTarea3" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Física: examen</td><td><asp:TextBox ID="TxtFisExamen" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Física: tarea 1</td><td><asp:TextBox ID="TxtFisTarea1" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Física: tarea 2</td><td><asp:TextBox ID="TxtFisTarea2" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Química: examen</td><td><asp:TextBox ID="TxtQuiExamen" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Química: tarea 1</td><td><asp:TextBox ID="TxtQuiTarea1" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Química: tarea 2</td><td><asp:TextBox ID="TxtQuiTarea2" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Química: tarea 3</td><td><asp:TextBox ID="TxtQuiTarea3" runat="server"></asp:TextBox></td></tr>
                </table>
                <asp:Button ID="Resultado8" runat="server" Text="Resultado" OnClick="Resultado8_Click" />
                <asp:Label ID="LblResultado8" runat="server" CssClass="resultado"></asp:Label>
            </div>

            <!-- 9. Fianza -->
            <div class="problema">
                <h3>9. Cuota de la fianza</h3>
                <table>
                    <tr><td>Ingrese el monto de la fianza</td><td><asp:TextBox ID="TxtMontoFianza" runat="server"></asp:TextBox></td></tr>
                </table>
                <asp:Button ID="Resultado9" runat="server" Text="Resultado" OnClick="Resultado9_Click" />
                <asp:Label ID="LblResultado9" runat="server" CssClass="resultado"></asp:Label>
            </div>

            <!-- 10. Colegiatura -->
            <div class="problema">
                <h3>10. Colegiatura del alumno</h3>
                <table>
                    <tr><td>Número de materias</td><td><asp:TextBox ID="TxtMaterias" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Costo por materia</td><td><asp:TextBox ID="TxtCostoMateria" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Promedio del último periodo</td><td><asp:TextBox ID="TxtPromedioAlumno" runat="server"></asp:TextBox></td></tr>
                </table>
                <asp:Button ID="Resultado10" runat="server" Text="Resultado" OnClick="Resultado10_Click" />
                <asp:Label ID="LblResultado10" runat="server" CssClass="resultado"></asp:Label>
            </div>

<!-- 11. Casa -->
            <div class="problema">
                <h3>11. Compra de casa de interés social</h3>
                <table>
                    <tr><td>Costo de la casa</td><td><asp:TextBox ID="TxtCostoCasa" runat="server"></asp:TextBox></td></tr>
                    <tr><td>Ingresos del comprador</td><td><asp:TextBox ID="TxtIngresos" runat="server"></asp:TextBox></td></tr>
                </table>
                <asp:Button ID="Resultado11" runat="server" Text="Resultado" OnClick="Resultado11_Click" />
                <asp:Label ID="LblResultado11" runat="server" CssClass="resultado"></asp:Label>
            </div>

            <!-- 12. SAR -->
            <div class="problema">
                <h3>12. Ahorro para el retiro (SAR)</h3>
                <table>
                    <tr><td>Salario mensual</td><td><asp:TextBox ID="TxtSalarioSAR" runat="server"></asp:TextBox></td></tr>
                    <tr><td>% obligatorio de la empresa</td><td><asp:TextBox ID="TxtPorcEmpresa" runat="server"></asp:TextBox></td></tr>
                    <tr><td>% aporte del trabajador</td><td><asp:TextBox ID="TxtPorcTrabajador" runat="server"></asp:TextBox></td></tr>
                    <tr><td>o cuota fija del trabajador</td><td><asp:TextBox ID="TxtCuotaFija" runat="server"></asp:TextBox></td></tr>
                </table>
                <asp:Button ID="Resultado12" runat="server" Text="Resultado" OnClick="Resultado12_Click" />
                <asp:Label ID="LblResultado12" runat="server" CssClass="resultado"></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>