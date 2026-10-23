
using System;

namespace Proyecto1
{
    public partial class punto4 : System.Web.UI.Page
    {
        /*
        protected void btncontar_Click(object sender, EventArgs e)
        {
            int cantidad;

            
            if (!int.TryParse(txtcantidad.Text, out cantidad) || cantidad <= 0)
            {
                lblrespuesta.Text = "Ingrese una cantidad válida.";
                return;
            }

            string[] digitos = txtdigitos.Text.Split(',');

            
            if (digitos.Length != cantidad)
            {
                lblrespuesta.Text = "Ingrese exactamente " + cantidad +
                    " dígitos separados por comas.";
                return;
            }

            int amarilla = 0, rosa = 0, roja = 0, verde = 0, azul = 0;

            
            for (int i = 0; i < cantidad; i++)
            {
                int digito;

                if (!int.TryParse(digitos[i].Trim(), out digito) || digito < 0 || digito > 9)
                {
                    lblrespuesta.Text = "Todos los dígitos deben estar entre 0 y 9.";
                    return;
                }

                if (digito == 1 || digito == 2)
                    amarilla++;
                else if (digito == 3 || digito == 4)
                    rosa++;
                else if (digito == 5 || digito == 6)
                    roja++;
                else if (digito == 7 || digito == 8)
                    verde++;
                else
                    azul++;
            }

            lblrespuesta.Text =
                "Resultados:\n" +
                "Amarilla: " + amarilla + "\n" +
                "Rosa: " + rosa + "\n" +
                "Roja: " + roja + "\n" +
                "Verde: " + verde + "\n" +
                "Azul: " + azul;
        }
        */
        
        protected void btncontar_Click(object sender, EventArgs e)
        {
            int cantidad;

            
            if (!int.TryParse(txtcantidad.Text, out cantidad) || cantidad <= 0)
            {
                lblrespuesta.Text = "Ingrese una cantidad válida.";
                return;
            }

            string[] digitos = txtdigitos.Text.Split(',');

            
            if (digitos.Length != cantidad)
            {
                lblrespuesta.Text = "Ingrese exactamente " + cantidad +
                    " dígitos separados por comas.";
                return;
            }

            int amarilla = 0, rosa = 0, roja = 0, verde = 0, azul = 0;
            int i = 0;

            
            while (i < cantidad)
            {
                int digito;

                if (!int.TryParse(digitos[i].Trim(), out digito) || digito < 0 || digito > 9)
                {
                    lblrespuesta.Text = "Todos los dígitos deben estar entre 0 y 9.";
                    return;
                }

                if (digito == 1 || digito == 2)
                    amarilla++;
                else if (digito == 3 || digito == 4)
                    rosa++;
                else if (digito == 5 || digito == 6)
                    roja++;
                else if (digito == 7 || digito == 8)
                    verde++;
                else
                    azul++;

                i++;
            }

            lblrespuesta.Text =
                "Resultados:\n" +
                "Amarilla: " + amarilla + "\n" +
                "Rosa: " + rosa + "\n" +
                "Roja: " + roja + "\n" +
                "Verde: " + verde + "\n" +
                "Azul: " + azul;
        }
        
    }
}
