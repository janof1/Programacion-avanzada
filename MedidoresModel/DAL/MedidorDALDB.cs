using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public class MedidorDALDB : IMedidorDAL
    {
        private MedidoresDBEntities medidoresDB = new MedidoresDBEntities();
        public void AgregarMedidor(Medidor medidor)
        {
            this.medidoresDB.Medidors.Add(medidor);
            this.medidoresDB.SaveChanges();
        }

        public void EliminarMedidor(int id)
        {
            //buscar medidor a eliminar asociado al ID
            Medidor medidor = this.medidoresDB.Medidors.Find(id);
            //destruir el asistente
            this.medidoresDB.Medidors.Remove(medidor);
            this.medidoresDB.SaveChanges();
        }

        public Medidor Obtener(int id)
        {
            return this.medidoresDB.Medidors.Find(id);
        }

        public List<Medidor> ObtenerMedidores()
        {
            return this.medidoresDB.Medidors.ToList();
        }
        public void Actualizar(Medidor a)
        {
            Medidor aOriginal = this.medidoresDB.Medidors.Find(a.Id);
            aOriginal.NroMedidor = a.NroMedidor;
            aOriginal.Nombre = a.Nombre;
            aOriginal.FechaActualizacion = a.FechaActualizacion;
            aOriginal.FechaCreacion = a.FechaCreacion;
            aOriginal.Valor = a.Valor;
            // todos los atributos
            this.medidoresDB.SaveChanges();
        }
        public List<Medidor> ObtenerNroMedidor(int nromedidor)
        {
            //LINQ
            var query = from a in this.medidoresDB.Medidors
                        where a.NroMedidor == nromedidor
                        select a;
            return query.ToList();
        }
    }
}
