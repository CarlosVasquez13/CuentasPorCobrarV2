using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace CuentasPorCobrar
{
    public static class Funciones
    {
        private readonly static string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CuentasPorCobrarDB"].ToString();
        

        public static string GetConenntionString()
        {
            return connectionString;
        }

        public static DataTable GetTable(string query, int agente)
        {
            MySqlConnection con = new MySqlConnection(connectionString);

            con.Open();
            MySqlCommand cmd = new MySqlCommand(query);

            MySqlDataAdapter da = new MySqlDataAdapter();
            cmd.Connection = con;
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }

        public static Boolean InsertData(string tabla, string parametros, string values)
        {
            try
            {
                string query = @"INSERT INTO " + tabla + "(" + parametros + ") VALUES(" + values + ")";
                MySql.Data.MySqlClient.MySqlCommand cmd;
                MySqlConnection conn = new MySqlConnection(connectionString);
                conn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
                conn.Open();

                cmd = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                var result = cmd.ExecuteNonQuery();
                if (result != 1)
                {
                    return false;
                }

            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.Message);
                return false;
            }
            return true;
        }
        public static Boolean UpdateData(string tabla, string camposValues, string where)
        {
            try
            {
                string query = @"UPDATE " + tabla + " SET "+ camposValues+" WHERE "+where+"";
                MySql.Data.MySqlClient.MySqlCommand cmd;
                MySqlConnection conn = new MySqlConnection(connectionString);
                conn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
                conn.Open();

                cmd = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                var result = cmd.ExecuteNonQuery();
                if (result != 1)
                {
                    return false;
                }

            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.Message);
                return false;
            }
            return true;
        }
    }
}