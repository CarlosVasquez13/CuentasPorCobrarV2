using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CuentasPorCobrar
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidarSesion();
        }
        protected void ValidarSesion()
        {
            try
            {
                var name = Session["name"].ToString();
                var userId = Session["ID"].ToString();
                if (userId == null)
                {
                    Response.Redirect("~/Login.aspx");
                }

            }
            catch (Exception ex)
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}