using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace InventarioGameStore
{
    public class ClsUsuarios
    {
        private static string codigoUsuario { get; set; }
        private static string nombreUsuario { get; set; }
        private static string claveUsuario { get; set; }
        private static string tipoUsuario { get; set; }

        //Constructor

        public ClsUsuarios(string codigoU, string nombreU, string claveU, string tipoU)
        {
            codigoUsuario = codigoU;
            nombreUsuario = nombreU;
            claveUsuario = claveU;
            tipoUsuario = tipoU;

        }

        //Getters

        public static string GetCodigoUsuario() { return codigoUsuario; }
        public static string GetNombreUsuario() { return nombreUsuario; }
        public static string GetClaveUsuario() { return claveUsuario; }
        public static string GetTipoUsuario() { return tipoUsuario; }

        //Setters

        public static void setCodigoUsuario(string codigoU)
        {
            codigoUsuario = codigoU;
        }

        public static void setNombreUsuario(string nombreU)
        {
            nombreUsuario = nombreU;
        }

        public static void setClaveUsuario(string claveU)
        {
            claveUsuario = claveU;
        }

        public static void setTipoUsuario(string tipoU)
        {
            tipoUsuario = tipoU;
        }

        //Registro Usuario

        public static int RegistroUsuario()
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();

            try
            {
                using (Conn = Clases.DBConnection.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("Registro", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@codigoU", codigoUsuario));
                    cmd.Parameters.Add(new SqlParameter("@nombreU", nombreUsuario));
                    cmd.Parameters.Add(new SqlParameter("@claveU", claveUsuario));
                    cmd.Parameters.Add(new SqlParameter("@tipoU", tipoUsuario));

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            retorno = 1;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
            }
            return retorno;
        }
    }
}