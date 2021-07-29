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
    public partial class AgregarLectura : System.Web.UI.Page
    {
        private ILecturaDAL lecturasDAL = new LecturaDALDB();
        private IMedidorDAL medidoresDAL = new MedidorDALDB();
        private List<Medidor> medidor = new List<Medidor>();
        Lectura lectura = new Lectura();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.medidorDDL.DataSource = this.medidoresDAL.ObtenerMedidores();
                this.medidorDDL.DataTextField = "Nombre";
                this.medidorDDL.DataValueField = "Id";
                this.medidorDDL.DataBind();
            }
        }

        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                    lectura.IdMedidor = Convert.ToInt32(this.medidorDDL.SelectedItem.Value);
                    lectura.Fecha = Convert.ToDateTime(this.fechaTxt.Text);
                    lectura.Valor = Convert.ToInt32(this.valorTxt.Text);
                    this.lecturasDAL.AgregarLectura(lectura);
                    Response.Redirect("MostrarLectura.aspx");
            }
        }

    }
}