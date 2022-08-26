using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace InventarioGameStore
{
    public class ClsArticulos
    {
        private static string codigoArticulo { get; set; }
        public static string descripcionArticulo { get; set; }
        private static string tipoArticulo { get; set; }
        private static float precioArticulo { get; set; }
        private static int cantidadArticulo { get; set; }
        private static float costoArticulo { get; set; }

        //Constructor

        public ClsArticulos(string codigoA, string descripcionA, string tipoA, float precioA, int cantidadA, float costoA)
        {
            codigoArticulo = codigoA;
            descripcionArticulo = descripcionA;
            tipoArticulo = tipoA;
            precioArticulo = precioA;
            cantidadArticulo = cantidadA;
            costoArticulo = costoA;
                        
        }

        //Getters
        public static string GetCodigoA () { return codigoArticulo; }
        public static string GetDescripcionA() { return descripcionArticulo; }
        public static string GetTipoA() { return tipoArticulo; }
        public static float GetPrecioA() { return precioArticulo; }
        public static int GetCantidadA() { return cantidadArticulo; }
        public static float GetCostoA() { return costoArticulo; }

        //setters
        public static void setCodigoA(string codigoA)
        {
            codigoArticulo = codigoA;
        }

        public static void setDescripcionA(string descripcionA)
        {
            descripcionArticulo = descripcionA;
        }

        public static void setTipoA(string tipoA)
        {
            tipoArticulo = tipoA;
        }
        public static void setsetPrecioA(float precioA)
        {
            precioArticulo = precioA;
        }
        public static void setsetCantidadA(int cantidadA)
        {
            cantidadArticulo = cantidadA;
        }
        public static void setsetCostoA(float costoA)
        {
            costoArticulo = costoA;
        }
    }


}