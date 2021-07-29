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
    public partial class MostrarMedidor : System.Web.UI.Page
    {
        private IMedidorDAL medidoresDAL = new MedidorDALDB();
        private void cargaGrilla()
        {
            List<Medidor> medidores;
            medidores= this.medidoresDAL.ObtenerMedidores();
           
            this.CargaGrilla(medidores);

        }
        private void CargaGrilla(List<Medidor> medidores)
        {
            this.grillaMedidor.DataSource = medidores;
            this.grillaMedidor.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargaGrilla();
            }
        }

        protected void grillaMedidor_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                this.medidoresDAL.EliminarMedidor(id);
                this.cargaGrilla();
            }
        }
    }
}