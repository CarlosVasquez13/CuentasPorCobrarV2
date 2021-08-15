using System;

namespace CuentasPorCobrar
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        string query = "";
        MySql.Data.MySqlClient.MySqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_registroUsuario(object sender, EventArgs e)
        {
            string primerNombre = primerNombreText.Value;
            string segundoNombre = segundoApellidoText.Value;
            string primerApellido = primerApellidoText.Value;
            string segundoApellido = segundoApellidoText.Value;
            string nombreUsuario = nombreUsuarioText.Value;
            string correo = correoText.Value;
            string telefono = telefonoText.Value;
            string password = passwordText.Value;
            //Aqui se formara la query y se registrara el usuario
            try
            {
                //string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CuentasPorCobrarDB"].ToString();
                //conn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
                //conn.Open();

                query = @"INSERT INTO agente
                (P_Nombre, S_Nombre, P_Apellido, S_Apellido, Nombre_Usuario, Correo, Contrasenia, Telefono, Sucursales_Id)
                VALUES("+primerNombreText+", "+segundoNombreText+", "+primerApellidoText+", "+segundoApellidoText+", "+nombreUsuarioText+", "+correoText+", "+passwordText+", "+telefonoText+ ", 2);";
                //cmd = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                //var result = cmd.ExecuteNonQuery();
                //si result == 1 se resgitro el usuario, falla cuando es 0
                //conn.Close();
                string parametros = "P_Nombre, S_Nombre, P_Apellido, S_Apellido, Nombre_Usuario, Correo, Contrasenia, Telefono, Sucursales_Id";
                string values = "'" + primerNombre + "', '" + segundoNombre + "', '" + primerApellido + "', '" + segundoApellido + "', '" + nombreUsuario + "', '" + correo + "', '" + password + "', '" + telefono + "', 2";
                var resultado = Funciones.InsertData("Agente",parametros, values);
            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.ToString());
            }
           ;
        }
    }
}