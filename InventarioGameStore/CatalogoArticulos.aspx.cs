using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventarioGameStore
{
    public partial class CatalogoArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LUsuario.Text = ClsUsuarios.GetNombreUsuario();
        }

        protected void BIngresarA_Click(object sender, EventArgs e)
        {
            string codigoA = TCodigoA.Text;
            string descripcionA = TDescripcionA.Text;
            string tipoA = TTipoA.Text;
            double precioA = Convert.ToDouble(TPrecioA.Text);
            int cantidadA = Convert.ToInt32(TCantidadA.Text);
            double costoA = Convert.ToDouble(TCostoA.Text);
            
            ARTICULOSDB.Insert();
            Response.Redirect("CatalogoArticulos.aspx");
        }

        protected void BEliminarA_Click(object sender, EventArgs e)
        {
            string codigoA = TCodigoA.Text;
            

            ARTICULOSDB.Delete();
            Response.Redirect("CatalogoArticulos.aspx");
        }

        protected void BActualizarA_Click(object sender, EventArgs e)
        {
            string codigoA = TCodigoA.Text;
            string descripcionA = TDescripcionA.Text;
            string tipoA = TTipoA.Text;
            double precioA = Convert.ToDouble(TPrecioA.Text);
            int cantidadA = Convert.ToInt32(TCantidadA.Text);
            double costoA = Convert.ToDouble(TCostoA.Text);

            ARTICULOSDB.Update();
            Response.Redirect("CatalogoArticulos.aspx");
        }

        protected void BRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}