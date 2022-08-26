using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventarioGameStore
{
    public partial class ProyeccionGanancias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LUsuario.Text = ClsUsuarios.GetNombreUsuario();
        }

        protected void BRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void BReporte_Click(object sender, EventArgs e)
        {
            ProyeccionDB.Insert();
        }
    }
}