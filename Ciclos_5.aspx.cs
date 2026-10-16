using System;
using System.Web.UI;

namespace proyectouno
{
    public partial class Naranjas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["ClienteActual"] = 0;
                ViewState["TotalTienda"] = 0.0;
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";

            if (double.TryParse(txtKilos.Text, out double kilos) && kilos > 0)
            {
                int clienteActual = (int)ViewState["ClienteActual"];

                if (clienteActual >= 15)
                {
                    lblMensaje.Text = "Ya se atendieron los 15 clientes.";
                    return;
                }

                clienteActual++;
                double precioKilo = 5000.0;
                double subtotal = kilos * precioKilo;

                if (kilos > 10)
                {
                    subtotal = subtotal * 0.85;
                }

                double totalTienda = (double)ViewState["TotalTienda"] + subtotal;

                ViewState["ClienteActual"] = clienteActual;
                ViewState["TotalTienda"] = totalTienda;

                lblCliente.Text = $"Cliente actual: {clienteActual} / 15";
                lblPagoCliente.Text = $"Pago de este cliente: ${subtotal:N2}";
                lblTotalTienda.Text = $"Total percibido por la tienda: ${totalTienda:N2}";
                txtKilos.Text = "";

                if (clienteActual == 15)
                {
                    lblMensaje.Text = "¡Se han completado los 15 clientes del día!";
                }
            }
            else
            {
                lblMensaje.Text = "Ingrese una cantidad válida de kilos.";
            }
        }
    }
}