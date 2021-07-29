using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MedidoresModel;
using MedidoresModel.DAL;

namespace MedidoresWeb
{
    public partial class AgregarMedidor : System.Web.UI.Page
    {
        private IMedidorDAL medidorDAL = new MedidorDALDB();
        private List<Medidor> medidores = new List<Medidor>();
        private Medidor medidor = new Medidor();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var nro = int.Parse(nromedidorTxt.Text);
                medidores = medidorDAL.ObtenerNroMedidor(nro);
                if (medidores.Count == 0)//no existe lo crea
                {
                    medidor.NroMedidor = int.Parse(this.nromedidorTxt.Text);
                    medidor.Nombre = this.nombreTxt.Text.Trim();
                    medidor.FechaCreacion = DateTime.Today;
                    medidor.Valor = 0;

                    this.medidorDAL.AgregarMedidor(medidor);
                    Response.Redirect("MostrarMedidor.aspx");
                }
                else
                {
                    
                }
            }
        }
    }
}