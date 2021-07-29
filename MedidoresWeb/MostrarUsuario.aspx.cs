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
    public partial class MostrarUsuario : System.Web.UI.Page
    {
        private IUsuarioDAL usuariosDAL = new UsuarioDALDB();
        private void cargaGrilla()
        {
            List<Usuario> usuarios;
            usuarios = this.usuariosDAL.ObtenerUsuarios();
           
            this.CargaGrilla(usuarios);

        }
        private void CargaGrilla(List<Usuario> usuarios)
        {
            this.grillaUsuario.DataSource = usuarios;
            this.grillaUsuario.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargaGrilla();
            }
        }

        protected void rolDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.cargaGrilla();
        }

        protected void grillaUsuario_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                this.usuariosDAL.EliminarUsuario(id);
                this.cargaGrilla();
            }
        }
    }
}