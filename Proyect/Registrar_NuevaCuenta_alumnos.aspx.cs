using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace GEIP_UPT
{
    public partial class Registrar_NuevaCuenta_alumnos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String nombre = Tb_Nombre.Text;
            String apellidoP = Tb_apellidoP.Text;
            String apellidoM = Tb_apellidoM.Text;
            String correo = Tb_correo.Text;
            String contrasena = Tb_contraseña.Text;
            String carrera = Dl_Carrera.SelectedValue;

            if (validar())
            {
                MsgError.Visible = false;
                int matricula = int.Parse(Tb_matricula.Text);
                int edad = int.Parse(Dl_Edad.SelectedValue);

                RegistroAlumno rA = new RegistroAlumno();
                rA.Insert(nombre, edad, apellidoP, apellidoM, correo, contrasena, matricula, carrera);
                Response.Redirect("Login_alumnos.aspx");
            }
            else
            {
                MsgError.Visible = true;
            }
           
        }

        protected bool validar()
        {
            bool registro = true;

              //ApellidoM
              //ApellidoM
              Tb_apellidoM.BackColor = Tb_apellidoM.Text.Equals("")? Color.PaleVioletRed: Color.White;
              registro = Tb_apellidoM.Text.Equals("")?false:true;
            
            

            if (Tb_apellidoP.Text.Equals(""))
            {
                Tb_apellidoP.BackColor = Color.PaleVioletRed;
                registro = false;
            }
            else
            {
                Tb_apellidoP.BackColor = Color.White;

            }

            if (Tb_contraseña.Text.Equals(""))
            {
                Tb_contraseña.BackColor = Color.PaleVioletRed;
                registro = false;
            }
            else
            {
                Tb_contraseña.BackColor = Color.White;
            }

            if (Tb_correo.Text.Equals(""))
            {
                Tb_correo.BackColor = Color.PaleVioletRed;
                registro = false;
            }
            else
            {

                Tb_correo.BackColor = Color.White;
            }

            if (Tb_matricula.Text.Equals(""))
            {
                Tb_matricula.BackColor = Color.PaleVioletRed;
                registro = false;
            }
            else
            {
                Tb_matricula.BackColor = Color.White;
            }

            if (Tb_Nombre.Text.Equals(""))
            {
                Tb_Nombre.BackColor = Color.PaleVioletRed;
                registro = false;
            }
            else
            {
                Tb_Nombre.BackColor = Color.White;
            }

            if (Dl_Carrera.SelectedValue.Equals("Carrera"))
            {
                Dl_Carrera.BackColor = Color.PaleVioletRed;
                registro = false;
            }
            else
            {
                Dl_Carrera.BackColor = Color.White;
            }

            if (Dl_Edad.SelectedValue.Equals("Edad"))
            {
                Dl_Edad.BackColor = Color.PaleVioletRed;
                registro = false;
            }
            else
            {
                Dl_Edad.BackColor = Color.White;
            }

            try
            {
                int c = int.Parse(Tb_matricula.Text);
                Tb_matricula.BackColor = Color.White;
            }
            catch
            {
                Tb_matricula.BackColor = Color.PaleVioletRed;
                registro = false;
            }

            return registro;
        }
        
    }
}