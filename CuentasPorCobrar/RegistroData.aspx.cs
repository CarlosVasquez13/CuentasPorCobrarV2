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

            string mysqlConnString = "Data Source=Localhost;Database=example;User Id=root; password='Graduacion12'";

            using (MySqlConnection cn= new MySqlConnection(mysqlConnString))
            {
                MySqlDataAdapter adp = new MySqlDataAdapter("SELECT pais.Nombre  " +
                    "FROM departamento, pais WHERE departamento.Id_Pais = pais.Id_Pais;", cn);
                DataTable dt = new DataTable();
                int v = adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ListaPais.DataSource = dt;
                    ListaPais.DataTextField = "Pais";
                    ListaPais.DataValueField = "ID";
                    ListaPais.DataBind();

                }
            }

        }

       


    }
}