using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace GEIP_UPT
{
    public partial class Login_Alumnos_de_lectura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Ingresar_Click(object sender, EventArgs e)
        {
            Registros rA = new Registros();
            String nombre = Tb_nombreC.Text;

            rA.RegistroAlumnoL(nombre);
            Response.Redirect("Lectura_datos_alumnos_soloLectura.aspx");
        }
    }
}