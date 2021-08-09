using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CuentasPorCobrar
{
    public partial class Login : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void button_Login(object sender, EventArgs e)
        {
            string usuario = Request.Form["usuarioText"];
            string password = Request.Form["passwordText"];

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CuentasPorCobrarDB"].ToString();
            string query = "SELECT Id_Usuarios FROM usuarios WHERE Nombre_Usuario = '"+usuarioText.Value+"' AND Contrasenia = '"+password+"'";
            conn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);

            conn.Open();

            cmd = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
            var value = cmd.ExecuteScalar();
            conn.Close();

            if (value != null)
            {
                Response.Redirect("~/Default.aspx");
            }
            //Acciones
            Console.WriteLine("tests");
        }
    }
}