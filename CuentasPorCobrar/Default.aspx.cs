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
    public partial class _Default : Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;

        string query = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            PruebaConsulta();
        }

        private void PruebaConsulta()
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CuentasPorCobrarDB"].ToString();
            query = "SELECT Id_Usuarios, P_Nombre, P_Apellido, Nombre_Usuario, Correo, Fecha_Creado, Activo  FROM base_cuentas_cobrar.usuarios;";
            //conn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
            //conn.Open();


            //cmd = new MySql.Data.MySqlClient.MySqlCommand(query, conn);

            //MySqlConnection con = new MySqlConnection(connectionString);
            //MySqlCommand cmd = new MySqlCommand(query);

            //MySqlDataAdapter da = new MySqlDataAdapter();
            //cmd.Connection = con;
            //da.SelectCommand = cmd;
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //GridUsuarios1.DataSource = dt;
            //GridUsuarios1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PruebaConsulta();
        }
    }
}
