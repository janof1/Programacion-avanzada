using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public interface IMedidorDAL
    {
        void AgregarMedidor(Medidor medidor);
        void EliminarMedidor(int nromedidor);
        Medidor Obtener(int id);
        List<Medidor> ObtenerMedidores();
        List<Medidor> ObtenerNroMedidor(int nromedidor);
    }
}
