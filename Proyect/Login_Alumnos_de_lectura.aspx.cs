using System;
using System.Collections.Generic;
using System.Drawing;
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
            Session.Remove("alumnLectura");
        }

        protected void btn_Ingresar_Click(object sender, EventArgs e)
        {
            if (validar())
            {
                try
                {
                    MsgError.Visible = false;
                    Registros rA = new Registros();
                    String nombre = Tb_nombreC.Text;

                    if (nombre != "")
                    {
                        rA.RegistroAlumnoL(nombre);
                        Session["alumnLectura"] = nombre;
                        Response.Redirect("Lectura_datos_alumnos_soloLectura.aspx");
                    }
                }
                catch (Exception ex)
                {
                    modalText.Text = "Ha ocurrido un error, intentelo más tarde.";
                    errorModal();
                }
            }
            else
            {
                MsgError.Text = "Debe llenar el campo";
                MsgError.Visible = true;
            }
        }

        protected bool validar()
        {
            bool valido = true;
            //Nombre del proyecto
            valido = Tb_nombreC.Text.Equals("") ? false : valido;
            Tb_nombreC.BackColor = Tb_nombreC.Text.Equals("") ? Color.PaleVioletRed : Color.White;

            return valido;
        }

        protected void errorModal()
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "modalError", "$('#modalError').modal(); " +
                "$('#modalError').on('hidden.bs.modal', function(){" +
                "  location.href= 'Administracion_alumnos.aspx' ; " +
                " }); ", true);
            upModal.Update();
        }
    }
}