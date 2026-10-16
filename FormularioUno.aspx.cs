using System;
using System.Linq;
using System.Web.UI;

namespace Proyecto1
{
    public partial class FormularioUno : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // ==========================================
        // EJERCICIO 2: EXPENDIO DE NARANJAS
        // ==========================================
        protected void btnEjercicio2_Click(object sender, EventArgs e)
        {
            try
            {
                double precioPorKilo = Convert.ToDouble(txtPrecioKilo.Text);
                string[] entradas = txtKilosClientes.Text.Split(',');

                double totalTienda = 0;
                string reporte = "<b>Resumen de compras por cliente:</b><ol>";

                for (int i = 0; i < entradas.Length && i < 15; i++)
                {
                    double kilos = Convert.ToDouble(entradas[i].Trim());
                    double subtotal = kilos * precioPorKilo;
                    double descuento = (kilos > 10) ? subtotal * 0.15 : 0;
                    double totalCliente = subtotal - descuento;

                    totalTienda += totalCliente;

                    reporte += $"<li>Cliente {i + 1}: {kilos} kg | " +
                               $"Subtotal: ${subtotal:N2} | " +
                               $"Descuento: ${descuento:N2} | " +
                               $"<b>Total a pagar: ${totalCliente:N2}</b></li>";
                }

                reporte += "</ol>";
                reporte += $"<strong>Total percibido por la tienda: ${totalTienda:N2}</strong>";

                lblResultado2.Text = reporte;
            }
            catch
            {
                lblResultado2.Text = "<span style='color:red;'>Error: Ingrese números válidos separados por coma.</span>";
            }
        }

        // ==========================================
        // EJERCICIO 3: CENTRO DE VERIFICACIÓN
        // ==========================================
        protected void btnEjercicio3_Click(object sender, EventArgs e)
        {
            try
            {
                string[] entradas = txtPuntosCarros.Text.Split(',');

                double suma = 0;
                double menor = double.MaxValue;
                double mayor = double.MinValue;
                int cantidad = 0;

                for (int i = 0; i < entradas.Length && i < 25; i++)
                {
                    double puntos = Convert.ToDouble(entradas[i].Trim());
                    suma += puntos;
                    cantidad++;

                    if (puntos < menor) menor = puntos;
                    if (puntos > mayor) mayor = puntos;
                }

                if (cantidad > 0)
                {
                    double promedio = suma / cantidad;

                    lblResultado3.Text = $"<b>Automóviles procesados:</b> {cantidad}<br/>" +
                                         $"<b>Promedio de puntos contaminantes:</b> {promedio:F2}<br/>" +
                                         $"<b>Menor contaminación registrada:</b> {menor} puntos<br/>" +
                                         $"<b>Mayor contaminación registrada:</b> {mayor} puntos";
                }
            }
            catch
            {
                lblResultado3.Text = "<span style='color:red;'>Error: Ingrese hasta 25 valores numéricos válidos.</span>";
            }
        }

        // ==========================================
        // EJERCICIO 4: EVALUACIÓN DE ATLETA
        // ==========================================
        protected void btnEjercicio4_Click(object sender, EventArgs e)
        {
            try
            {
                string[] entradas = txtTiemposAtleta.Text.Split(',');
                double[] tiempos = new double[10];

                for (int i = 0; i < 10 && i < entradas.Length; i++)
                {
                    tiempos[i] = Convert.ToDouble(entradas[i].Trim());
                }

                double promedio = tiempos.Average();

                // Evaluación de condiciones
                bool cond1 = tiempos.All(t => t <= 16);  // Ninguna prueba mayor a 16 min
                bool cond2 = tiempos.Any(t => t > 16);   // Al menos una prueba mayor a 16 min
                bool cond3 = promedio <= 15;             // Promedio menor o igual a 15 min

                bool esApto = cond1 || cond2 || cond3;

                string mensaje = $"<b>Promedio general:</b> {promedio:F2} min<br/><br/>";

                if (esApto)
                {
                    mensaje += "<span style='color:green; font-weight:bold;'>✔ EL ATLETA ES APTO para la prueba de 5 KM.</span><br/>";
                    mensaje += "<b>Condiciones cumplidas:</b><ul>";
                    if (cond1) mensaje += "<li>Ninguna prueba superó los 16 minutos.</li>";
                    if (cond2) mensaje += "<li>Al menos en una prueba hizo más de 16 minutos.</li>";
                    if (cond3) mensaje += "<li>Su promedio fue menor o igual a 15 minutos.</li>";
                    mensaje += "</ul>";
                }
                else
                {
                    mensaje += "<span style='color:red; font-weight:bold;'>✖ EL ATLETA NO ES APTO. Debe buscar otra especialidad.</span>";
                }

                lblResultado4.Text = mensaje;
            }
            catch
            {
                lblResultado4.Text = "<span style='color:red;'>Error: Ingrese los 10 tiempos numéricos del atleta.</span>";
            }
        }

        // ==========================================
        // EJERCICIO 5: ESTUDIO ZOOLÓGICO
        // ==========================================
        protected void btnEjercicio5_Click(object sender, EventArgs e)
        {
            try
            {
                string animal = ddlAnimal.SelectedValue;
                int limiteMuestra = 0;

                switch (animal)
                {
                    case "elefantes": limiteMuestra = 20; break;
                    case "jirafas": limiteMuestra = 15; break;
                    case "chimpanzes": limiteMuestra = 40; break;
                }

                string[] entradas = txtEdadesAnimales.Text.Split(',');
                int cat1 = 0; // 0 a 1 año
                int cat2 = 0; // Más de 1 y menos de 3 años
                int cat3 = 0; // 3 o más años
                int procesados = 0;

                for (int i = 0; i < entradas.Length && i < limiteMuestra; i++)
                {
                    double edad = Convert.ToDouble(entradas[i].Trim());
                    procesados++;

                    if (edad >= 0 && edad <= 1) cat1++;
                    else if (edad > 1 && edad < 3) cat2++;
                    else if (edad >= 3) cat3++;
                }

                if (procesados > 0)
                {
                    double pct1 = ((double)cat1 / procesados) * 100;
                    double pct2 = ((double)cat2 / procesados) * 100;
                    double pct3 = ((double)cat3 / procesados) * 100;

                    lblResultado5.Text = $"<b>Especie:</b> {ddlAnimal.SelectedItem.Text}<br/>" +
                                         $"<b>Muestra procesada:</b> {procesados} de {limiteMuestra}<br/><br/>" +
                                         $"<ul>" +
                                         $"<li><b>De 0 a 1 año:</b> {cat1} ({pct1:F2}%)</li>" +
                                         $"<li><b>Más de 1 y menos de 3 años:</b> {cat2} ({pct2:F2}%)</li>" +
                                         $"<li><b>De 3 o más años:</b> {cat3} ({pct3:F2}%)</li>" +
                                         $"</ul>";
                }
            }
            catch
            {
                lblResultado5.Text = "<span style='color:red;'>Error: Ingrese edades numéricas válidas.</span>";
            }
        }
    }
}