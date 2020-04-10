using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GEIP_UPT
{
    public partial class Registrar_Proyecto_Parte_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            llenarAsesores();
        }


        protected void llenarAsesores()
        {
            RegistroAlumno rA = new RegistroAlumno();
            SqlDataReader asesores = rA.getAsesores();
            while (asesores.Read())
            {
                Dl_Asesores.Items.Add(new ListItem(asesores.GetString(0), asesores.GetString(0)));
            }
            rA.conect.Close();
                
        }

        protected void Btn_Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administracion_alumnos.aspx");
        }
    }
}