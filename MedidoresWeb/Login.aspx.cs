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

    public partial class Login : System.Web.UI.Page
    {
        private IUsuarioDAL usuarioDAL = new UsuarioDALDB();
        private List<Usuario> usuario = new List<Usuario>();
        protected void Page_Load(object sender, EventArgs e)
        {
 
        }
        protected void ingresarBtn_Click(object sender, EventArgs e)
        {
            var validacion = usuarioDAL.ValidarUsuario(emailTxt.Text, passwordTxt.Text);
            usuario = validacion;

            if (usuario != null)
            {
                Response.Redirect("Navega.aspx");
            }
            else
            {
                emailTxt.Text = "";
                passwordTxt.Text = "";                
                Response.Redirect("Login.aspx");
            }
        } 
    }
}