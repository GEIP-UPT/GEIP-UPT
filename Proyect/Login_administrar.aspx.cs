﻿using System;
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
                String correo = tb_correo.Text;
                String tipo = Dl_TipoUsuario.SelectedValue;
                String contrasena = tb_contrasena.Text;

                Registros rA = new Registros();
                int id = 0;
                bool existe = rA.existeAdministrador(ref id,correo, contrasena, tipo);
                if (existe)
                {
                   
                    if (Dl_TipoUsuario.SelectedValue.Equals("Administrador"))
                    {
                        Session["id_Admin"] = id.ToString();
                        Response.Redirect("Administracion.aspx");
                    }
                        
                    else
                    {
                        Session["idAsesor"] = id.ToString();
                        Response.Redirect("Administracion_asesores.aspx");

                    }

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
            tb_correo.BackColor = tb_correo.Text.Equals("") ? Color.PaleVioletRed : Color.White;
            registro = tb_correo.Text.Equals("") ? false : registro;

            //Contraseña
            tb_contrasena.BackColor = tb_contrasena.Text.Equals("") ? Color.PaleVioletRed : Color.White;
            registro = tb_contrasena.Text.Equals("") ? false : registro;

            return registro;
        }
    }
}