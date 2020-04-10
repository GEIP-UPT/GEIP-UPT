using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Windows;

namespace GEIP_UPT
{
    public partial class Login_administrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Ingresar_Click(object sender, EventArgs e)
        {
            if (validado())
            {
                MsgError.Visible = false;
                int matricula = 0;
                try
                {
                    matricula = int.Parse(tb_matricula.Text);
                }
                catch (Exception exe) { }
                String contrasena = tb_contrasena.Text;

                RegistroAlumno rA = new RegistroAlumno();
                bool existe = rA.existeAdministrador(matricula, contrasena);
                if (existe)
                {
                    Response.Redirect("Administracion.aspx");
                    rA.conect.Close();
                }
                else
                {
                    MsgError.Text = "Administrador no encontrado, revise sus datos";
                    MsgError.Visible = true;
                    rA.conect.Close();
                }


            }
            else
            {
                MsgError.Text = "Debe ingresar todos los datos";
                MsgError.Visible = true;
            }
        }

        protected bool validado()
        {
            bool registro = true;

            //Matricula
            tb_matricula.BackColor = tb_matricula.Text.Equals("") ? Color.PaleVioletRed : Color.White;
            registro = tb_matricula.Text.Equals("") ? false : registro;

            //Contraseña
            tb_contrasena.BackColor = tb_contrasena.Text.Equals("") ? Color.PaleVioletRed : Color.White;
            registro = tb_contrasena.Text.Equals("") ? false : registro;

            return registro;
        }
    }
}