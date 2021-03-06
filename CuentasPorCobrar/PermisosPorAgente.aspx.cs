using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CuentasPorCobrar
{
    public partial class PermisosPorAgente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                permisosAgenteDiv.Visible = false;
                alertaMensaje.Visible = false;
                ObtenerAgentes();
                ObtenerPermisos();
            }

        }

        private void ObtenerAgentes()
        {
            try
            {
                string query = @"SELECT 0 AS ID, '--' as Nombre UNION SELECT Id_Agente as ID, P_Nombre as Nombre from Agente WHERE Activo = 1;";
                DataTable data = Funciones.GetTable(query);
                DropDownListAgentes.DataTextField = "Nombre";
                DropDownListAgentes.DataValueField = "ID";
                DropDownListAgentes.DataSource = data;
                DropDownListAgentes.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            
        }
        private void ObtenerPermisos()
        {
            try
            {
                string query = @"SELECT Id_Permiso as ID, Descripcion as Permiso from permisos WHERE Activo = 1;";
                DataTable data = Funciones.GetTable(query);
                DropDownListPermisos.DataTextField = "Permiso";
                DropDownListPermisos.DataValueField = "ID";
                DropDownListPermisos.DataSource = data;
                DropDownListPermisos.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        private void ObtenerPermisosDeAgente(string AgenteID)
        {
            //GridPermisosAgente
            string query = @"SELECT a.Id_Agente as Id_Agente, CONCAT(a.P_Nombre, ' ', a.P_Apellido) AS Agente, p.Descripcion as Permiso FROM agente a
                            INNER JOIN agente_has_permisos ap ON a.Id_Agente = ap.Agente_Id
                            INNER JOIN permisos p ON ap.Permisos_Id = p.Id_Permiso
                            WHERE a.Id_Agente = " + AgenteID;
            DataTable data = Funciones.GetTable(query);
            GridPermisosAgente.DataSource = data;
            GridPermisosAgente.DataBind();
            permisosAgenteDiv.Visible = true;
            if (data.Rows.Count == 0)
            {
                alertaMensaje.Visible = true;
            }
            
        }

        protected void DropDownListAgentes_SelectedIndexChanged(object sender, EventArgs e)
        {
            ObtenerPermisosDeAgente(DropDownListAgentes.SelectedValue);
        }

        protected void btnAgregarPermiso_ServerClick(object sender, EventArgs e)
        {
            string parametros = "Agente_Id, Permisos_Id, Agente_Agrega_Id";
            string agente = DropDownListAgentes.SelectedValue;
            string permiso = DropDownListPermisos.SelectedValue;
            string agenteAgrega = Funciones.GetAgenteId();
            string values = agente + ", " + permiso + ", "+agenteAgrega;
            var resultado = Funciones.InsertData("agente_has_permisos",parametros, values);
            if (resultado)
            {
                ObtenerPermisosDeAgente(agente);
            }
        }
    }
}