﻿using MedidoresModel;
using MedidoresModel.DAL;
using ServidorSocketUtils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Medidores.Comunicacion
{
    class HebraCliente
    {
        private ClienteCom clienteCom;
        private ILecturaDAL lecturaDAL = LecturaDALDBSingleton.GetInstancia();
        private IMedidorDAL medidorDAL = MedidorDALDBSingleton.GetInstancia();

        public HebraCliente(ClienteCom clienteCom)
        {
            this.clienteCom = clienteCom;
        }

        public void Ejecutar()
        {
            clienteCom.Escribir("Ingrese Lectura Medidor");
            string texto = clienteCom.Leer();
            string[] textoArr = texto.Trim().Split('|');//separo por pipe la lectura 1111|2021-06-03 03:03:00|65,5
            int nromedidor = Convert.ToInt32(textoArr[0]);//medidor
            //validar que medidor exista
            bool esValido;
            bool existe;
            Lectura lst = lecturaDAL.Obtener(nromedidor);
            do
            {
                esValido = int.TryParse(textoArr[0], out nromedidor);
                if (lst.Id != 0) //encontro el medidor
                {
                    esValido = true;
                    existe = true;
                }
                else //no encontro el medidor
                {
                    clienteCom.Escribir("Medidor no Registrado en Sistema");
                    clienteCom.Desconectar();
                    existe = false;
                }
            } while (!esValido);

            if (existe)//si existe graba el registro en el medidor
            {
                DateTime fecha = Convert.ToDateTime(textoArr[1]);//fecha formato yyyy-MM-dd HH:mmm:ss
                decimal valor = Convert.ToDecimal(textoArr[2]);//valor

                //instancio clase lectura para heredad atributos
                Lectura lectura = new Lectura()
                {//asigno las variables
                    IdMedidor = nromedidor,                   
                    Fecha = fecha,
                    Valor = valor
                };

                lock (lecturaDAL)
                {
                    lecturaDAL.AgregarLectura(lectura);
                }

                clienteCom.Desconectar();
            }
        }
    }
}
