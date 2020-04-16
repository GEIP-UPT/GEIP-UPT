using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Drawing;

namespace GEIP_UPT
{
    public partial class Registrar_Proyecto_parte2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            llenarDls();
        }

        protected void llenarDls()
        {
            for (int i = 18; i <= 70; i++)
            {
                Dl_1.Items.Add(new ListItem(i.ToString(), i.ToString()));
                Dl_2.Items.Add(new ListItem(i.ToString(), i.ToString()));
                Dl_3.Items.Add(new ListItem(i.ToString(), i.ToString()));
                Dl_4.Items.Add(new ListItem(i.ToString(), i.ToString()));
                Dl_5.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }


        protected void Btn_Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registrar_Proyecto_Parte_1.aspx");
            
        }


        protected bool validar()
        {
            bool valido = true;

            if (Tb1.Text.Equals("") && Tb2.Text.Equals("") && Tb3.Text.Equals("") && Tb4.Text.Equals("")){
                MsgError.Text = "Debe ingresar almenos 1 integrante";
                MsgError.Visible = true;
                valido = false;
            }

            //Grupo1
            valido = !Tb1.Text.Equals("") && Dl_1.SelectedValue.Equals("Defecto") ? false : valido;
            valido = Tb1.Text.Equals("") && !Dl_1.SelectedValue.Equals("Defecto") ? false : valido;
            Tb1.BackColor = Tb1.Text.Equals("") && !Dl_1.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;
            Dl_1.BackColor = !Tb1.Text.Equals("") && Dl_1.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;
            //Grupo2
            valido = !Tb2.Text.Equals("") && Dl_2.SelectedValue.Equals("Defecto") ? false : valido;
            valido = Tb2.Text.Equals("") && !Dl_2.SelectedValue.Equals("Defecto") ? false : valido;
            Tb2.BackColor = Tb2.Text.Equals("") && !Dl_2.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;
            Dl_2.BackColor = !Tb2.Text.Equals("") && Dl_2.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;
            //Grupo3
            valido = !Tb3.Text.Equals("") && Dl_3.SelectedValue.Equals("Defecto") ? false : valido;
            valido = Tb3.Text.Equals("") && !Dl_3.SelectedValue.Equals("Defecto") ? false : valido;
            Tb3.BackColor = Tb3.Text.Equals("") && !Dl_3.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;
            Dl_3.BackColor = !Tb3.Text.Equals("") && Dl_3.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;
            //Grupo4
            valido = !Tb4.Text.Equals("") && Dl_4.SelectedValue.Equals("Defecto") ? false : valido;
            valido = Tb4.Text.Equals("") && !Dl_4.SelectedValue.Equals("Defecto") ? false : valido;
            Tb4.BackColor = Tb4.Text.Equals("") && !Dl_4.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;
            Dl_4.BackColor = !Tb4.Text.Equals("") && Dl_4.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;
            //Grupo5
            valido = !Tb5.Text.Equals("") && Dl_5.SelectedValue.Equals("Defecto") ? false : valido;
            valido = Tb5.Text.Equals("") && !Dl_5.SelectedValue.Equals("Defecto") ? false : valido;
            Tb5.BackColor = Tb5.Text.Equals("") && !Dl_5.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;
            Dl_5.BackColor = !Tb5.Text.Equals("") && Dl_5.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;

            return valido;
        }

        protected void Btn_Sig_Click(object sender, EventArgs e)
        {
            if (validar())
            {
                MsgError.Visible = false;
                Response.Redirect("Registrar_Proyecto_Parte3.aspx");
            }
            else
            {
                MsgError.Text = "Faltan datos por llenar";
                MsgError.Visible = true;
            }

        }
    }
}