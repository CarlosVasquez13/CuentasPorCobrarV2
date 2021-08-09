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
            PruebaConsulta();

        }


        private void PruebaConsulta()
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CuentasPorCobrarDB"].ToString();
            string query = "SELECT Id_Usuarios AS ID, CONCAT(P_Nombre, ' ', S_Nombre) AS Nombre, CONCAT(P_Apellido, ' ', S_Apellido) AS Apellido, Nombre_Usuario AS Usuario, Correo, Fecha_Creado AS 'Fecha Creado', Activo  FROM base_cuentas_cobrar.usuarios;";
            //conn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
            //conn.Open();


            //cmd = new MySql.Data.MySqlClient.MySqlCommand(query, conn);

            MySqlConnection con = new MySqlConnection(connectionString);
            MySqlCommand cmd = new MySqlCommand(query);

            MySqlDataAdapter da = new MySqlDataAdapter();
            cmd.Connection = con;
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridUsuarios.DataSource = dt;
            GridUsuarios.DataBind();
        }
    }
}