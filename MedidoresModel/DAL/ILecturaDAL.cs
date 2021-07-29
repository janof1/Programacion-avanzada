using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public interface ILecturaDAL
    {
        void AgregarLectura(Lectura lectura);
        Lectura Obtener(int id);
        List<Lectura> ObtenerLecturas();
    }
}
