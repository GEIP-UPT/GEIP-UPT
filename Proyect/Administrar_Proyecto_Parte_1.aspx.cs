using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Windows;

namespace GEIP_UPT
{
    public partial class Registrar_Proyecto_Parte_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Matricula"] == null)
            {
                Response.Redirect("Login_alumnos.aspx");
            }

            if (dl_Tipo.Items.Count == 1)
                {
                    llenarAsesores();
                    llenarClasif();
                    llenarProgramas();
                    llenarTipos();
                }


        }

        protected void llenarTipos()
        {
            ConsultasBD cB = new ConsultasBD();
            SqlDataReader tipos = cB.getTipos();
            while (tipos.Read())
            {
                dl_Tipo.Items.Add(new ListItem(tipos["Nombre"].ToString(), tipos["id"].ToString()));
            }
            cB.conect.Close();
        }

        protected void llenarProgramas()
        {
            ConsultasBD cB = new ConsultasBD();
            SqlDataReader programas = cB.getProgramas();
            while (programas.Read())
            {
                dl_Programas.Items.Add(new ListItem(programas["Nombre"].ToString(), programas["id"].ToString()));
            }
            cB.conect.Close();
        }


        protected void llenarClasif()
        {
            ConsultasBD cB = new ConsultasBD();
            SqlDataReader clasif = cB.getClasif();
            while (clasif.Read())
            {
                Dl_Clasificacion.Items.Add(new ListItem(clasif["Nombre"].ToString(), clasif["id"].ToString()));
            }
            cB.conect.Close();
        }


        protected void llenarAsesores()
        {
            ConsultasBD cB = new ConsultasBD();
            SqlDataReader asesores = cB.getAsesores();
            while (asesores.Read())
            {
                Dl_Asesores.Items.Add(new ListItem(asesores["Nombre"].ToString(), asesores["id"].ToString()));
            }
            cB.conect.Close();
                
        }

        protected void Btn_Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administracion_alumnos.aspx");
        }

        protected void Btn_Guardar_Click(object sender, EventArgs e)
        {
          //  ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "hola();", true);

            if (validar())
            {
                MsgError.Visible = false;

                Response.Redirect("Administrar_Proyecto_Parte2.aspx");

            }
            else
            {
                MsgError.Visible = true;
            }

        }

        protected bool validar() {
            bool valido = true;
            //Nombre del proyecto
            valido = Tb_nombreProyecto.Text.Equals("") ? false : valido;
            Tb_nombreProyecto.BackColor = Tb_nombreProyecto.Text.Equals("") ? Color.PaleVioletRed : Color.White;
            //asesores
            valido = Dl_Asesores.SelectedValue.Equals("Defecto") ? false : valido;
            Dl_Asesores.BackColor = Dl_Asesores.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;
            //Clasificacion
            valido = Dl_Clasificacion.SelectedValue.Equals("Defecto") ? false : valido;
            Dl_Clasificacion.BackColor = Dl_Clasificacion.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;
            //Programas
            valido = dl_Programas.SelectedValue.Equals("Defecto") ? false : valido;
            dl_Programas.BackColor = dl_Programas.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;
            //Tipos
            valido = dl_Tipo.SelectedValue.Equals("Defecto") ? false : valido;
            dl_Tipo.BackColor = dl_Tipo.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;
            //Avance
            valido = Dl_Avance.SelectedValue.Equals("Defecto") ? false : valido;
            Dl_Avance.BackColor = Dl_Avance.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;
            return valido;
        }

    }
}