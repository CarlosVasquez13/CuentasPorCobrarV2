using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CuentasPorCobrar
{
    public partial class CrearPermisos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarPermisos();
            }
        }

        protected void CargarPermisos()
        {
            try
            {
                string query = @"SELECT Id_Permiso as ID, Descripcion as Permiso from permisos WHERE Activo = 1;";
                DataTable data = Funciones.GetTable(query);

                GridPermisos.DataSource = data;
                GridPermisos.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
        protected void btnRegistrarPermiso_ServerClick(object sender, EventArgs e)
        {
            var resultado = Funciones.InsertData("permisos", "Descripcion", "'"+descripcionText.Value+"'");
            if (resultado)
            {
                CargarPermisos();
            }
        }
    }
}