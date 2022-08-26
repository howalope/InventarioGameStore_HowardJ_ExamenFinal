using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventarioGameStore
{
    public partial class SIngup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
        protected void BRegistrarse_Click(object sender, EventArgs e)
        {
            ClsUsuarios.setCodigoUsuario(TCodigoUsuario.Text);
            ClsUsuarios.setNombreUsuario(TNombreUsuario.Text);
            ClsUsuarios.setClaveUsuario(TClaveUsuario.Text);
            ClsUsuarios.setTipoUsuario(DDTipoUsuario.Text);

            int resultado = ClsUsuarios.RegistroUsuario();

            if (resultado > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification: Usuario no ha sido Registrado');", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification: Usuario ha sido Registrado');", true);
            }
            return;
            Response.Redirect("Login.aspx");
        }
    }
}