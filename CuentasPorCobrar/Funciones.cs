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

    }
}