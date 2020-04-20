using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GEIP_UPT
{
    public partial class Registrar_TiposProyecto : System.Web.UI.Page
    {

        ManejoInserts manager = new ManejoInserts();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id_Admin"] == null)
            {
                Response.Redirect("Login_administrar.aspx");
            }

        }

        protected void btnRegTiposProy_Click(object sender, EventArgs e)
        {
            string TiposProy = txtTiposProy.Text;

            manager.guardarTiposProy(TiposProy);
            Response.Redirect("Lectura_TiposProyecto.aspx");
        }
    }
}