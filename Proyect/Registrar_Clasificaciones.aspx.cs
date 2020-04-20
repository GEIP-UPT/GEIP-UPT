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
    public partial class Registrar_Clasificaciones : System.Web.UI.Page
    {

        ManejoInserts manager = new ManejoInserts();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idAdmin"] == null)
            {
                Response.Redirect("Login_administrar.aspx");
            }

        }

        protected void btnRegClasif_Click(object sender, EventArgs e)
        {
            string clasif = txtClasif.Text;

            manager.guardarClasif(clasif);
            Response.Redirect("Lectura_Clasificaciones.aspx");
        }
    }
}