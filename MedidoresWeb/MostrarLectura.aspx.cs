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
    public partial class MostrarLectura : System.Web.UI.Page
    {
        private ILecturaDAL lecturasDAL = new LecturaDALDB();
        private void cargaGrilla()
        {
            List<Lectura> lecturas;
            lecturas = this.lecturasDAL.ObtenerLecturas();
           
            this.CargaGrilla(lecturas);

        }
        private void CargaGrilla(List<Lectura> lecturas)
        {
            this.grillaLectura.DataSource = lecturas;
            this.grillaLectura.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargaGrilla();
            }
        }

        protected void grillaLectura_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}