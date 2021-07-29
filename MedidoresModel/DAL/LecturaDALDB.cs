using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public class LecturaDALDB : ILecturaDAL
    {
        private MedidoresDBEntities medidoresDB = new MedidoresDBEntities();
        public void AgregarLectura(Lectura lectura)
        {
            this.medidoresDB.Lecturas.Add(lectura);
            this.medidoresDB.SaveChanges();
        }

        public void EliminarLectura(int id)
        {
            //buscar Lectura a eliminar asociado al ID
            Lectura lectura = this.medidoresDB.Lecturas.Find(id);
            //destruir la lectura
            this.medidoresDB.Lecturas.Remove(lectura);
            this.medidoresDB.SaveChanges();
        }

        public Lectura Obtener(int id)
        {
            return this.medidoresDB.Lecturas.Find(id);
        }

        public List<Lectura> ObtenerLecturas()
        {
            return this.medidoresDB.Lecturas.ToList();
        }
        public void Actualizar(Lectura lectura)
        {
            Lectura aOriginal = this.medidoresDB.Lecturas.Find(lectura.Id);
            aOriginal.IdMedidor = lectura.IdMedidor;
            aOriginal.Fecha = lectura.Fecha;
            aOriginal.Valor = lectura.Valor;
            // todos los atributos
            this.medidoresDB.SaveChanges();
        }
        public List<Lectura> ObtenerLecturas(int id)
        {
            //LINQ
            var query = from a in this.medidoresDB.Lecturas
                        where a.Id == id
                        select a;
            return query.ToList();
        }
    }
}
