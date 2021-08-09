using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CuentasPorCobrar
{
    public partial class RegistroCliente : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        string query = "";
        MySql.Data.MySqlClient.MySqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btn_AgregarTelCliente(object sender, EventArgs e)
        {
            string IdTelefono = IdTelefononum.Value;
            string NumTelefono = numeroTelText.Value;
            string DescTelefono = DescripcionTelText.Value;

            try
            {
                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CuentasPorCobrarDB"].ToString();
                conn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
                conn.Open();

                query = @"INSERT INTO telefonos(Id_Telefono, Num_Telefono, Id_Referencias_Personales, 
                        Id_Proveedor, Id_Cliente)
                    VALUES('" + IdTelefono + "','" + NumTelefono + "','" + null + "','"
                            + null + "','" + DescTelefono + "');";

                cmd = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                var result = cmd.ExecuteNonQuery();

                //si result == 1 se resgitro el usuario, falla cuando es 0

                conn.Close();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }


        }

        protected void btn_AgregarTelReferencia(object sender, EventArgs e)
        {

            string IdTeleRef = IdTelefonoRef.Value;
            string NumTeleRef = NumeroTelefonoRef.Value;
            string DescTeleRef = DescripcionTelefonoRef.Value;

            try
            {
                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CuentasPorCobrarDB"].ToString();
                conn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
                conn.Open();

                query = @"INSERT INTO telefonos(Id_Telefono, Num_Telefono, Id_Referencias_Personales, 
                        Id_Proveedor, Id_Cliente)
                    VALUES('" + IdTeleRef + "','" + NumTeleRef + "','" + DescTeleRef + "','"
                            + null + "','" + null + "');";

                cmd = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                var result = cmd.ExecuteNonQuery();

                //si result == 1 se resgitro el usuario, falla cuando es 0

                conn.Close();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }


        }

        protected void btn_GuardarRegCliente(object sender, EventArgs e)
        {
            
        }

    }
}