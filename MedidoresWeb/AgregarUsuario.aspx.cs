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
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        private IUsuarioDAL usuariosDAL = new UsuarioDALDB();

        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Usuario usuario = new Usuario();
                usuario.Rut = this.rutTxt.Text.Trim();
                usuario.Nombre = this.nombreTxt.Text.Trim();
                usuario.Apellido = this.apellidoTxt.Text.Trim();
                usuario.Email = this.emailTxt.Text.Trim();
                usuario.Password = this.passwordTxt.Text.Trim();

                this.usuariosDAL.AgregarUsuario(usuario);
                Response.Redirect("MostrarUsuario.aspx");
            }

        }
    }
}