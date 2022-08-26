using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventarioGameStore
{
    public partial class CatalogoUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LUsuario.Text = ClsUsuarios.GetNombreUsuario();
        }

        protected void BRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void BAgregarU_Click(object sender, EventArgs e)
        {
            ClsUsuarios.setCodigoUsuario(TCodigoU.Text);
            ClsUsuarios.setNombreUsuario(TNombreU.Text);
            ClsUsuarios.setClaveUsuario(TClaveU.Text);
            ClsUsuarios.setTipoUsuario(DDTipoU.Text);

            int resultado = ClsUsuarios.RegistroUsuario();

            if (resultado > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification: Usuario no ha sido Registrado');", true);
                Response.Redirect("CatalogoUsuarios.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification: Usuario ha sido Registrado');", true);
                Response.Redirect("CatalogoUsuarios.aspx");
            }
            return;
        }

        protected void BEliminarU_Click(object sender, EventArgs e)
        {
            string codigoU = TCodigoU.Text;

            USUARIOSDB.Delete();
            Response.Redirect("CatalogoUsuarios.aspx");
        }

        protected void BActulizarU_Click(object sender, EventArgs e)
        {
            string codigoU = TCodigoU.Text;
            string nombreU = TNombreU.Text;
            string claveU = TClaveU.Text;
            string tipoU = DDTipoU.Text;

            USUARIOSDB.Update();
            Response.Redirect("CatalogoUsuarios.aspx");
        }
    }
}