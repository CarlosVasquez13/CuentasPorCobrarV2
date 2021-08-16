using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CuentasPorCobrar
{
    public partial class MostrarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ObtenerAgentes();
        }

        private void ObtenerAgentes()
        {
            string query = @"SELECT Id_Agente AS ID, CONCAT(P_Nombre, ' ', S_Nombre) AS Nombre, CONCAT(P_Apellido, ' ', S_Apellido) AS Apellido,
                            Nombre_Usuario AS Usuario, Correo, Fecha_Creado AS 'F.Creado', Activo FROM agente;";
            
            DataTable dt = Funciones.GetTable(query);

            GridUsuarios.DataSource = dt;
            GridUsuarios.DataBind();

            //Prueba de como acutalizar uno o varios campos de una entidad
            //Funciones.UpdateData("Agente", "P_Nombre = 'Prueba UPdate' ", " Id_Agente = 5");
        }

        private void PruebaConsulta()
        {
            string query = @"SELECT Id_Agente AS ID, CONCAT(P_Nombre, ' ', S_Nombre) AS Nombre, CONCAT(P_Apellido, ' ', S_Apellido) AS Apellido,
                            Nombre_Usuario AS Usuario, Correo, Fecha_Creado AS 'F.Creado', Activo FROM agente;";
            //para obtener la cadena de conexion si se ocupa
            //string test = Funciones.GetConenntionString();
            
            //Obtener la data ya en una tabla, parametros query de la data a obtener y el Id del agente
            DataTable dt = Funciones.GetTable(query);

            //asignar la data al gridView
            GridUsuarios.DataSource = dt;
            GridUsuarios.DataBind();
           
            
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
        }
    }
}