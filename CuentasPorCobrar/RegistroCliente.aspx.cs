using System;


//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;


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
          ;

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
          ;

        }

        protected void btn_GuardarRegCliente(object sender, EventArgs e)
        {
            string IdClient = IdClientenum.Value;
            string PNombreC = primerNombreClienteText.Value;
            string SNombreC = segundoNombreClienteText.Value;
            string PApellidoC = primerApellidoClienteText.Value;
            string SApellidoC = segundoApellidoClienteText.Value;
            string CorreoC = correoText.Value;
            string DNIC = DNIText.Value;
            string RTNC = RTNText.Value;
            string PasaporteC = PasaporteText.Value;
            string NumCasaC = numCasaNum.Value;
            string DetDirecionC = DetaDireccionText.Value;

            string IdTrabajo = IdTrabajoNum.Value;
            string NEmpresa = NombreEmpresaCText.Value;
            string cargo = cargoText.Value;

            string idReferenciaP = IdReferenciaNum.Value;
            string PnombreR = primerNombreReferenciaText.Value;
            string SnombreR = segundoNombreReferenciaText.Value;
            string PapellidoR = primerApellidoReferenciaText.Value;
            string SapellidoR = segundoApellidoReferenciaText.Value;
            string correoR = correoReferenciaText.Value;
            string DNIR = DNIReferenciaText.Value;
            string numCasaR = NumCasa.Value;





            try
            {
                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CuentasPorCobrarDB"].ToString();
                conn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
                conn.Open();

                query = @"INSERT INTO cliente(Id_Cliente, P_Nombre, S_Nombre, P_Apellido, S_Apellido, 
                    Correo, DNI, RTN, Pasaporte, Barrio/Colonia_Id, Num_Casa, Detalle_Direccion, 
                    Id_Municipio, Departamento_Id)
                    VALUES('" + IdClient + "','" + PNombreC + "','" + SNombreC + "','" + PApellidoC 
                    + "','" + SApellidoC + "','" + CorreoC + "','" + DNIC + "' ,'" + RTNC
                    + "','" + PasaporteC + "','" + null + "','" + NumCasaC + "','" + DetDirecionC 
                    + "' ,'" + null + "' ,'" + null + "');";

                query = @"INSERT INTO trabajo_cliente(Id_Trabajo_Cliente, Nombre_Empresa, cargo, Id_Cliente, Id_Barrio/Colonia, 
                    Id_Municipio, Departamento_Id)
                    VALUES('" + IdTrabajo + "','" + NEmpresa + "','" + cargo + "','" + null
                    + "','" + null + "','" + null  + "');";

                query = @"INSERT INTO cliente(Id_Referencias_Personales, P_Nombre, S_Nombre, P_Apellido, S_Apellido, 
                    Correo, DNI, Barrio/Colonia_Id, Id_Municipio, Departamento_Id,Num_Casa)
                    VALUES('" + idReferenciaP + "','" + PnombreR + "','" + SnombreR + "','" + PapellidoR
                    + "','" + SapellidoR + "','" + correoR + "','" + DNIC + "' ,'" + null
                    + "','" + null + "','" + null + "','" + NumCasa + "');";

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

        protected void PaisDropdown(object sender, EventArgs e)
        {

           
        }


    }
}