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
            string primerNombre = primerApellidoText.Value;
            string segundoNombre = segundoApellidoText.Value;
            string primerApellido = primerApellidoText.Value;
            string segundoApellido = segundoApellidoText.Value;
            string nombreUsuario = nombreUsuarioText.Value;
            string correo = correoText.Value;
            string password = passwordText.Value;
            string repeatPassword = repeatPasswordText.Value;
            //Aqui se formara la query y se registrara el usuario
            try
            {
                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CuentasPorCobrarDB"].ToString();
                conn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
                conn.Open();

                query = @"INSERT INTO usuarios(P_Nombre, S_Nombre, P_Apellido, S_Apellido, Nombre_Usuario,
                    Correo, Contrasenia)
                    VALUES('" + primerNombre + "','" + segundoNombre + "','" + primerApellido + "','" + segundoApellido + "','" + nombreUsuario + "','" + correo + "','" + password + "');";

                cmd = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                var result = cmd.ExecuteNonQuery();

                //si result == 1 se resgitro el usuario, falla cuando es 0

                conn.Close();
            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.ToString());
            }
           ;
        }
    }
}