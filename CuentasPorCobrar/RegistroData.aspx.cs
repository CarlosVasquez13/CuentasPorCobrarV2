using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace CuentasPorCobrar
{
    public partial class RegistroData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DropListPais();
            }

        }

        private void DropListPais()
        {

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CuentasPorCobrarDB"].ToString();
            string query = @"SELECT Nombre AS ID FROM pais;";


            MySqlConnection cn = new MySqlConnection(connectionString);
            MySqlCommand cmd = new MySqlCommand(query);

            MySqlDataAdapter adp = new MySqlDataAdapter();
            cmd.Connection = cn;
            adp.SelectCommand = cmd;
            DataTable dt = new DataTable();
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ListaPais.DataSource = dt;
                    //ListaPais.DataTextField = "Pais";
                    ListaPais.DataValueField = "ID";
                    ListaPais.DataBind();

                }
            

        }

       


    }
}