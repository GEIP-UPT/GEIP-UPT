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
            if (Session["Matricula"] == null)
            {
                Response.Redirect("Login_alumnos.aspx");
            }
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
            Response.Redirect("Administrar_Proyecto_Parte_1.aspx");
            
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
       

            valido = !Tb1.Text.Equals("") && (Dl_1.SelectedValue.Equals("Defecto") || Ma1.Text.Equals("")) ? false : valido;
            valido = !Dl_1.SelectedValue.Equals("Defecto") && (Tb1.Text.Equals("") || Ma1.Text.Equals("")) ? false : valido;
            valido = !Ma1.Text.Equals("") && (Tb1.Text.Equals("") || Dl_1.SelectedValue.Equals("Defecto")) ? false : valido;
            Tb1.BackColor = Tb1.Text.Equals("") && (!Dl_1.SelectedValue.Equals("Defecto") || !Ma1.Text.Equals("")) ? Color.PaleVioletRed : Color.White;
            Dl_1.BackColor = Dl_1.SelectedValue.Equals("Defecto") && (!Tb1.Text.Equals("") || !Ma1.Text.Equals("")) ? Color.PaleVioletRed : Color.White;
            Ma1.BackColor =  Ma1.Text.Equals("") && (!Tb1.Text.Equals("") || !Dl_1.SelectedValue.Equals("Defecto"))? Color.PaleVioletRed : Color.White;
            //Grupo2

            valido = !Tb2.Text.Equals("") && (Dl_2.SelectedValue.Equals("Defecto") || Ma2.Text.Equals("")) ? false : valido;
            valido = !Dl_2.SelectedValue.Equals("Defecto") && (Tb2.Text.Equals("") || Ma2.Text.Equals("")) ? false : valido;
            valido = !Ma2.Text.Equals("") && (Tb2.Text.Equals("") || Dl_2.SelectedValue.Equals("Defecto")) ? false : valido;
            Tb2.BackColor = Tb2.Text.Equals("") && (!Dl_2.SelectedValue.Equals("Defecto") || !Ma2.Text.Equals("")) ? Color.PaleVioletRed : Color.White;
            Dl_2.BackColor = Dl_2.SelectedValue.Equals("Defecto") && (!Tb2.Text.Equals("") || !Ma2.Text.Equals("")) ? Color.PaleVioletRed : Color.White;
            Ma2.BackColor = Ma2.Text.Equals("") && (!Tb2.Text.Equals("") || !Dl_2.SelectedValue.Equals("Defecto")) ? Color.PaleVioletRed : Color.White;
            //Grupo3

            valido = !Tb3.Text.Equals("") && (Dl_3.SelectedValue.Equals("Defecto") || Ma3.Text.Equals("")) ? false : valido;
            valido = !Dl_3.SelectedValue.Equals("Defecto") && (Tb3.Text.Equals("") || Ma3.Text.Equals("")) ? false : valido;
            valido = !Ma3.Text.Equals("") && (Tb3.Text.Equals("") || Dl_3.SelectedValue.Equals("Defecto")) ? false : valido;
            Tb3.BackColor = Tb3.Text.Equals("") && (!Dl_3.SelectedValue.Equals("Defecto") || !Ma3.Text.Equals("")) ? Color.PaleVioletRed : Color.White;
            Dl_3.BackColor = Dl_3.SelectedValue.Equals("Defecto") && (!Tb3.Text.Equals("") || !Ma3.Text.Equals("")) ? Color.PaleVioletRed : Color.White;
            Ma3.BackColor = Ma3.Text.Equals("") && (!Tb3.Text.Equals("") || !Dl_3.SelectedValue.Equals("Defecto")) ? Color.PaleVioletRed : Color.White;
            //Grupo4
            valido = !Tb4.Text.Equals("") && (Dl_4.SelectedValue.Equals("Defecto") || Ma4.Text.Equals("")) ? false : valido;
            valido = !Dl_4.SelectedValue.Equals("Defecto") && (Tb4.Text.Equals("") || Ma4.Text.Equals("")) ? false : valido;
            valido = !Ma4.Text.Equals("") && (Tb4.Text.Equals("") || Dl_4.SelectedValue.Equals("Defecto")) ? false : valido;
            Tb4.BackColor = Tb4.Text.Equals("") && (!Dl_4.SelectedValue.Equals("Defecto") || !Ma4.Text.Equals("")) ? Color.PaleVioletRed : Color.White;
            Dl_4.BackColor = Dl_4.SelectedValue.Equals("Defecto") && (!Tb4.Text.Equals("") || !Ma4.Text.Equals("")) ? Color.PaleVioletRed : Color.White;
            Ma4.BackColor = Ma4.Text.Equals("") && (!Tb4.Text.Equals("") || !Dl_4.SelectedValue.Equals("Defecto")) ? Color.PaleVioletRed : Color.White;
            //Grupo5
            valido = !Tb5.Text.Equals("") && (Dl_5.SelectedValue.Equals("Defecto") || Ma5.Text.Equals("")) ? false : valido;
            valido = !Dl_5.SelectedValue.Equals("Defecto") && (Tb5.Text.Equals("") || Ma5.Text.Equals("")) ? false : valido;
            valido = !Ma5.Text.Equals("") && (Tb5.Text.Equals("") || Dl_5.SelectedValue.Equals("Defecto")) ? false : valido;
            Tb5.BackColor = Tb5.Text.Equals("") && (!Dl_5.SelectedValue.Equals("Defecto") || !Ma5.Text.Equals("")) ? Color.PaleVioletRed : Color.White;
            Dl_5.BackColor = Dl_5.SelectedValue.Equals("Defecto") && (!Tb5.Text.Equals("") || !Ma5.Text.Equals("")) ? Color.PaleVioletRed : Color.White;
            Ma5.BackColor = Ma5.Text.Equals("") && (!Tb5.Text.Equals("") || !Dl_5.SelectedValue.Equals("Defecto")) ? Color.PaleVioletRed : Color.White;


            return valido;
        }

        protected void Btn_Sig_Click(object sender, EventArgs e)
        {
            if (validar())
            {
                MsgError.Visible = false;
                Response.Redirect("Administrar_Proyecto_Parte3.aspx");
            }
            else
            {
                MsgError.Text = "Faltan datos por llenar";
                MsgError.Visible = true;
            }

        }
    }
}