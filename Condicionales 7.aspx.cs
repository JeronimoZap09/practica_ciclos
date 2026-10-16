using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectouno
{
    public partial class Condicionales_7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnresultado_Click(object sender, EventArgs e)
        {
            double salario = double.Parse(txt1.Text);
            double porcentajeEmpresa = double.Parse(txt2.Text);
            double aporteTrabajador = double.Parse(txt3.Text);
            string esPorcentaje = txt4.Text.ToLower();

            double aporteEmpresa = salario * porcentajeEmpresa / 100;
            double aporteEmpleado;
            double pagoMensual;
            double totalSAR;

            if (esPorcentaje == "si")
            {
                aporteEmpleado = salario * aporteTrabajador / 100;
            }
            else
            {
                aporteEmpleado = aporteTrabajador;
            }

            totalSAR = aporteEmpresa + aporteEmpleado;
            pagoMensual = salario - aporteEmpleado;

            lblresultados.Text = "Aporte de la empresa: $" + aporteEmpresa.ToString() +
                                 "<br/>Aporte del trabajador: $" + aporteEmpleado.ToString() +
                                 "<br/>Total depositado en SAR: $" + totalSAR.ToString() +
                                 "<br/>Pago mensual del trabajador: $" + pagoMensual.ToString();
        }
    }
}