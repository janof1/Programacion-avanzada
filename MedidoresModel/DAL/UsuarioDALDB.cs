using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public class UsuarioDALDB : IUsuarioDAL
    {
        private MedidoresDBEntities medidoresDB = new MedidoresDBEntities();

        public void AgregarUsuario(Usuario usuario)
        {
            this.medidoresDB.Usuarios.Add(usuario);
            this.medidoresDB.SaveChanges();
        }

        public void EliminarUsuario(int id)
        {
            //buscar Usuario a eliminar asociado al ID
            Usuario usuario = this.medidoresDB.Usuarios.Find(id);
            //destruir el asistente
            this.medidoresDB.Usuarios.Remove(usuario);
            this.medidoresDB.SaveChanges();
        }

        public Usuario Obtener(int id)
        {
            return this.medidoresDB.Usuarios.Find(id);
        }

        public List<Usuario> ObtenerUsuarios()
        {
            return this.medidoresDB.Usuarios.ToList();
        }
        public void Actualizar(Usuario a)
        {
            Usuario aOriginal = this.medidoresDB.Usuarios.Find(a.Id);
            aOriginal.Rut = a.Rut;
            aOriginal.Nombre = a.Nombre;
            aOriginal.Password = a.Password;
            aOriginal.Email = a.Email;
            // todos los atributos
            this.medidoresDB.SaveChanges();
        }
        public List<Usuario> ObtenerUsuarios(int id)
        {
            //LINQ
            var query = from a in this.medidoresDB.Usuarios
                        where a.Id == id
                        select a;
            return query.ToList();

        }
        public List<Usuario> ValidarUsuario(string email , string password)
        {
            var validar = from a in this.medidoresDB.Usuarios
                        where a.Email == email
                        where a.Password == password
                        select a;

            return validar.ToList();
        }
    }
}
