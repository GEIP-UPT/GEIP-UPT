using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;
using System.Windows;

namespace GEIP_UPT
{
    public partial class Registrar_NuevaCuenta_alumnos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Dl_Carrera.Items.Count==1) {
                LlenarCarreas();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String nombre = Tb_Nombre.Text;
            String apellidoP = Tb_apellidoP.Text;
            String apellidoM = Tb_apellidoM.Text;
            String correo = Tb_correo.Text;
            String contrasena = Tb_contraseña.Text;
            int carrera = int.Parse(Dl_Carrera.SelectedValue);
            String contacto = Tb_contacto.Text;

            if (validar())
            {
                MsgError.Visible = false;
                int matricula = int.Parse(Tb_matricula.Text);
                int edad = int.Parse(Dl_Edad.SelectedValue);

                Registros rA = new Registros();

                    rA.RegistroAlumoP(nombre, edad, apellidoP, apellidoM, correo, contrasena, matricula, carrera, contacto);
                    Response.Redirect("Login_alumnos.aspx");
                
                
            }
            else
            {
                MsgError.Visible = true;
            }
           
        }

        protected void LlenarCarreas()
        {
            ConsultasBD cB = new ConsultasBD();
            SqlDataReader carreras = cB.getCarreras();
            while (carreras.Read())
            {
                Dl_Carrera.Items.Add(new ListItem(carreras["carrera"].ToString(), carreras["id"].ToString()));
            }
            cB.conect.Close();

        }


        protected bool validar()
        {
            bool registro = true;


            //ApellidoM
            Tb_apellidoM.BackColor = Tb_apellidoM.Text.Equals("") ? Color.PaleVioletRed : Color.White;
            registro = Tb_apellidoM.Text.Equals("") ? false : registro;

            //ApellidoP
            Tb_apellidoP.BackColor = Tb_apellidoP.Text.Equals("") ? Color.PaleVioletRed : Color.White;
            registro = Tb_apellidoP.Text.Equals("") ? false : registro;

            //Contraseña
            Tb_contraseña.BackColor = Tb_contraseña.Text.Equals("") ? Color.PaleVioletRed : Color.White;
            registro = Tb_contraseña.Text.Equals("") ? false : registro;

            //Correo
            Tb_correo.BackColor = Tb_correo.Text.Equals("") ? Color.PaleVioletRed : Color.White;
            registro = Tb_correo.Text.Equals("") ? false : registro;

            //Matricula
            Tb_matricula.BackColor = Tb_matricula.Text.Equals("") ? Color.PaleVioletRed : Color.White;
            registro = Tb_matricula.Text.Equals("") ? false : registro;

            //Nombre
            Tb_Nombre.BackColor = Tb_Nombre.Text.Equals("") ? Color.PaleVioletRed : Color.White;
            registro = Tb_Nombre.Text.Equals("") ? false : registro;

            //Carrera
            Dl_Carrera.BackColor = Dl_Carrera.SelectedValue.Equals("Carrera") ? Color.PaleVioletRed : Color.White;
            registro = Dl_Carrera.SelectedValue.Equals("Carrera") ? false : registro;

            //Edad
            Dl_Edad.BackColor = Dl_Edad.SelectedValue.Equals("Edad") ? Color.PaleVioletRed : Color.White;
            registro = Dl_Edad.SelectedValue.Equals("Edad") ? false : registro;

            //Contacto
            Tb_contacto.BackColor = Tb_contacto.Text.Equals("") ? Color.PaleVioletRed : Color.White;
            registro = Tb_contacto.Text.Equals("") ? false : registro;

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

        protected void Tb_matricula_TextChanged(object sender, EventArgs e)
        {
            Registros reg = new Registros();

            if (reg.ExistematriculaVacia(int.Parse(Tb_matricula.Text)))
                hf_TipoGuardado.Value = "Modificar";
            else
                hf_TipoGuardado.Value = "Guardar";

        }
    }
}