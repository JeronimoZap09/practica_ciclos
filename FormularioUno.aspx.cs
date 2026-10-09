using System;
using System.Globalization;
using System.Web.UI.WebControls;

namespace Proyecto1  
{
    public partial class FormularioUno : System.Web.UI.Page
    {
        private const string MsgError = "Ingrese valores numéricos válidos.";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // ---------- Auxiliares ----------
        private static bool TryLeer(TextBox caja, out double valor)
        {
            return double.TryParse(caja.Text.Trim(), NumberStyles.Float,
                                   CultureInfo.CurrentCulture, out valor);
        }

        // Devuelve null si alguna caja no tiene un número válido
        private static double[] Leer(params TextBox[] cajas)
        {
            double[] valores = new double[cajas.Length];
            for (int i = 0; i < cajas.Length; i++)
            {
                if (!TryLeer(cajas[i], out valores[i])) return null;
            }
            return valores;
        }

        private static string Dinero(double valor)
        {
            return valor.ToString("N2");
        }

        // ---------- 1. Masa de aire ----------
        protected void Resultado1_Click(object sender, EventArgs e)
        {
            double[] v = Leer(TxtTemperatura, TxtVolumen, TxtPresion);
            if (v == null) { LblResultado1.Text = MsgError; return; }

            double temperatura = v[0], volumen = v[1], presion = v[2];
            double denominador = 0.37 * (temperatura + 460);
            if (denominador == 0)
            {
                LblResultado1.Text = "La temperatura no puede ser -460.";
                return;
            }

            double masa = (presion * volumen) / denominador;
            LblResultado1.Text = "Masa de aire: " + masa.ToString("N4");
        }

        // ---------- 2. Pulsaciones ----------
        protected void Resultado2_Click(object sender, EventArgs e)
        {
            double[] v = Leer(TxtEdad);
            if (v == null) { LblResultado2.Text = MsgError; return; }

            double pulsaciones = (220 - v[0]) / 10;
            LblResultado2.Text = "Pulsaciones por cada 10 segundos: " + pulsaciones.ToString("N2");
        }

        // ---------- 3. Nuevo salario ----------
        protected void Resultado3_Click(object sender, EventArgs e)
        {
            double[] v = Leer(TxtSalarioAnterior);
            if (v == null) { LblResultado3.Text = MsgError; return; }

            double nuevoSalario = v[0] * 1.25;
            LblResultado3.Text = "Nuevo salario: " + Dinero(nuevoSalario);
        }

        // ---------- 4. Presupuesto del hospital ----------
        protected void Resultado4_Click(object sender, EventArgs e)
        {
            double[] v = Leer(TxtPresupuesto);
            if (v == null) { LblResultado4.Text = MsgError; return; }

            double ginecologia = v[0] * 0.40;
            double traumatologia = v[0] * 0.30;
            double pediatria = v[0] * 0.30;

            LblResultado4.Text = "Ginecología: " + Dinero(ginecologia) + "<br />" +
                                 "Traumatología: " + Dinero(traumatologia) + "<br />" +
                                 "Pediatría: " + Dinero(pediatria);
        }

        // ---------- 5. Precio de venta ----------
        protected void Resultado5_Click(object sender, EventArgs e)
        {
            double[] v = Leer(TxtPrecioCompra);
            if (v == null) { LblResultado5.Text = MsgError; return; }

            double precioVenta = v[0] * 1.30;
            LblResultado5.Text = "Precio de venta: " + Dinero(precioVenta);
        }

        // ---------- 6. Tiempo promedio ----------
        protected void Resultado6_Click(object sender, EventArgs e)
        {
            double[] v = Leer(TxtLunes, TxtMiercoles, TxtViernes);
            if (v == null) { LblResultado6.Text = MsgError; return; }

            double promedio = (v[0] + v[1] + v[2]) / 3;
            LblResultado6.Text = "Tiempo promedio: " + promedio.ToString("N2") + " minutos";
        }

        // ---------- 7. Porcentaje de inversión ----------
        protected void Resultado7_Click(object sender, EventArgs e)
        {
            double[] v = Leer(TxtInversion1, TxtInversion2, TxtInversion3);
            if (v == null) { LblResultado7.Text = MsgError; return; }

            double total = v[0] + v[1] + v[2];
            if (total == 0)
            {
                LblResultado7.Text = "El total invertido debe ser mayor que cero.";
                return;
            }

            LblResultado7.Text = "Persona 1: " + (v[0] * 100 / total).ToString("N2") + "%<br />" +
                                 "Persona 2: " + (v[1] * 100 / total).ToString("N2") + "%<br />" +
                                 "Persona 3: " + (v[2] * 100 / total).ToString("N2") + "%<br />" +
                                 "Total invertido: " + Dinero(total);
        }

        // ---------- 8. Promedios de las tres materias ----------
        protected void Resultado8_Click(object sender, EventArgs e)
        {
            double[] v = Leer(TxtMatExamen, TxtMatTarea1, TxtMatTarea2, TxtMatTarea3,
                              TxtFisExamen, TxtFisTarea1, TxtFisTarea2,
                              TxtQuiExamen, TxtQuiTarea1, TxtQuiTarea2, TxtQuiTarea3);
            if (v == null) { LblResultado8.Text = MsgError; return; }

            double promTareasMat = (v[1] + v[2] + v[3]) / 3;
            double matematicas = v[0] * 0.90 + promTareasMat * 0.10;

            double promTareasFis = (v[5] + v[6]) / 2;
            double fisica = v[4] * 0.80 + promTareasFis * 0.20;

            double promTareasQui = (v[8] + v[9] + v[10]) / 3;
            double quimica = v[7] * 0.85 + promTareasQui * 0.15;

            double general = (matematicas + fisica + quimica) / 3;

            LblResultado8.Text = "Matemáticas: " + matematicas.ToString("N2") + "<br />" +
                                 "Física: " + fisica.ToString("N2") + "<br />" +
                                 "Química: " + quimica.ToString("N2") + "<br />" +
                                 "Promedio general: " + general.ToString("N2");
        }

        // ---------- 9. Fianza ----------
        protected void Resultado9_Click(object sender, EventArgs e)
        {
            double[] v = Leer(TxtMontoFianza);
            if (v == null) { LblResultado9.Text = MsgError; return; }

            double monto = v[0];
            double cuota;
            string porcentaje;

            if (monto < 50000)
            {
                cuota = monto * 0.03;
                porcentaje = "3%";
            }
            else
            {
                cuota = monto * 0.02;
                porcentaje = "2%";
            }

            LblResultado9.Text = "Cuota a pagar (" + porcentaje + "): " + Dinero(cuota);
        }

        // ---------- 10. Colegiatura ----------
        protected void Resultado10_Click(object sender, EventArgs e)
        {
            double[] v = Leer(TxtMaterias, TxtCostoMateria, TxtPromedioAlumno);
            if (v == null) { LblResultado10.Text = MsgError; return; }

            double colegiatura = v[0] * v[1];
            double total;

            if (v[2] >= 9)
            {
                // 30% de descuento y sin IVA
                total = colegiatura * 0.70;
                LblResultado10.Text = "Con descuento del 30% y sin IVA, debe pagar: " + Dinero(total);
            }
            else
            {
                // Colegiatura completa con 10% de IVA
                total = colegiatura * 1.10;
                LblResultado10.Text = "Colegiatura completa con IVA (10%), debe pagar: " + Dinero(total);
            }
        }

        // ---------- 11. Casa de interés social ----------
        protected void Resultado11_Click(object sender, EventArgs e)
        {
            double[] v = Leer(TxtCostoCasa, TxtIngresos);
            if (v == null) { LblResultado11.Text = MsgError; return; }

            double costo = v[0];
            double ingresos = v[1];
            double porcentajeEnganche;
            int anios;

            if (ingresos < 8000)
            {
                porcentajeEnganche = 0.15;
                anios = 10;
            }
            else
            {
                porcentajeEnganche = 0.30;
                anios = 7;
            }

            double enganche = costo * porcentajeEnganche;
            double resto = costo - enganche;
            double pagoMensual = resto / (anios * 12);

            LblResultado11.Text = "Enganche: " + Dinero(enganche) + "<br />" +
                                  "Pago mensual (" + anios + " años): " + Dinero(pagoMensual);
        }

        // ---------- 12. SAR ----------
        protected void Resultado12_Click(object sender, EventArgs e)
        {
            double[] v = Leer(TxtSalarioSAR, TxtPorcEmpresa);
            if (v == null) { LblResultado12.Text = MsgError; return; }

            // Los campos del trabajador son opcionales (vacío = 0)
            double porcTrabajador = 0, cuotaFija = 0;
            if (!string.IsNullOrWhiteSpace(TxtPorcTrabajador.Text) && !TryLeer(TxtPorcTrabajador, out porcTrabajador))
            { LblResultado12.Text = MsgError; return; }
            if (!string.IsNullOrWhiteSpace(TxtCuotaFija.Text) && !TryLeer(TxtCuotaFija, out cuotaFija))
            { LblResultado12.Text = MsgError; return; }

            double salario = v[0];
            double aporteEmpresa = salario * v[1] / 100;
            // Si hay cuota fija se usa esa; si no, el porcentaje del salario
            double aporteTrabajador = cuotaFija > 0 ? cuotaFija : salario * porcTrabajador / 100;

            double totalSAR = aporteEmpresa + aporteTrabajador;
            double pagoMensual = salario - aporteTrabajador;

            LblResultado12.Text = "Total depositado al SAR cada mes: " + Dinero(totalSAR) + "<br />" +
                                  "Pago mensual que recibe el trabajador: " + Dinero(pagoMensual);
        }
    }
}