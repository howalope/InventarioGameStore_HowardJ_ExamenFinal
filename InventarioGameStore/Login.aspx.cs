using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventarioGameStore
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BIniciar_Click(object sender, EventArgs e)
        {
            ClsUsuarios.setNombreUsuario(TNombre.Text);
            ClsUsuarios.setClaveUsuario(TClave.Text);

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["INVENTARIODBConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);

            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("select Nombre_Usuario, Clave_Usuario from Usuarios " +
                    "where Nombre_Usuario = '" + ClsUsuarios.GetNombreUsuario() + "' and Clave_Usuario = '" + ClsUsuarios.GetClaveUsuario() + "'", conexion);
                SqlDataReader registro = comando.ExecuteReader();
                if (registro.Read())
                {
                    Response.Redirect("Menu.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification: Usuario no encontrado');", true);
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification: Revisar Conexión');", true);
            }

            finally
            {
                conexion.Close();
            }
        }

        protected void TClave_TextChanged(object sender, EventArgs e)
        {

        }
    }
}