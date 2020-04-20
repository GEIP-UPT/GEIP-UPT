using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Drawing;

namespace GEIP_UPT
{
    public partial class EditarAlumnos : System.Web.UI.Page
    {
        ConsultasBD cBD = new ConsultasBD();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Matricula"] == null)
            {
                Response.Redirect("Login_alumnos.aspx");
            }

            if (Dl_Carrera.Items.Count == 1)
            {
                LlenarCarreas();
            }

            if (!IsPostBack)
            {
                obtenerDatos();
            }
        }
        protected void LlenarCarreas()
        {
            SqlDataReader carreras = cBD.getCarreras();
            while (carreras.Read())
            {
                Dl_Carrera.Items.Add(new ListItem(carreras["carrera"].ToString(), carreras["id"].ToString()));
            }
            cBD.conect.Close();

        }
        protected void obtenerDatos()
        {
            if (Session["Matricula"] != null) {
                String x = Session["Matricula"].ToString();

                Tb_matricula.Text = x;
                DataSet ds = cBD.datosAlumno(int.Parse(x));

                Tb_Nombre.Text = ds.Tables[0].Rows[0]["Nombres"].ToString();
                Tb_apellidoM.Text = ds.Tables[0].Rows[0]["ApellidoMaterno"].ToString();
                Tb_apellidoP.Text = ds.Tables[0].Rows[0]["ApellidoPaterno"].ToString();
                Dl_Edad.SelectedValue = ds.Tables[0].Rows[0]["Edad"].ToString();
                Tb_correo.Text = ds.Tables[0].Rows[0]["Correo"].ToString();
                Tb_contacto.Text = ds.Tables[0].Rows[0]["Contacto"].ToString();
                Tb_contraseña.Text = ds.Tables[0].Rows[0]["Contrasena"].ToString();
                Dl_Carrera.SelectedValue = ds.Tables[0].Rows[0]["Carrera"].ToString();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tb_Nombre.Attributes.Add("value", Tb_Nombre.Text);
            Tb_apellidoP.Attributes.Add("value", Tb_apellidoP.Text);
            Tb_apellidoM.Attributes.Add("value", Tb_apellidoM.Text);
            Tb_correo.Attributes.Add("value", Tb_correo.Text);
            Tb_contraseña.Attributes.Add("value", Tb_contraseña.Text);
            Dl_Carrera.Attributes.Add("value", Dl_Carrera.Text);
            Tb_contacto.Attributes.Add("value", Tb_contacto.Text);


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

                 rA.UpdateAlumno(nombre, edad, apellidoP, apellidoM, correo, contrasena, matricula, carrera, contacto);
                 Response.Redirect("Administracion_alumnos.aspx");

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

    }
}