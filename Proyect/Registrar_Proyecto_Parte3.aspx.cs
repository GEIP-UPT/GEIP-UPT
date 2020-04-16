using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Drawing;

namespace GEIP_UPT
{
    public partial class Registrar_Proyecto_Parte3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cb_materias.Items.Count == 0) 
                llenarCheck();
        }

        protected void llenarCheck()
        {
            ConsultasBD cB = new ConsultasBD();
            SqlDataReader materias = cB.getMateriasImp();
            int i = 0;
            while (materias.Read())
            {
                ListItem materia = new ListItem(materias.GetString(0), materias.GetString(0));
                Cb_materias.Items.Add(materia);
                i++;
            }
            cB.conect.Close();
        }
        protected void Sig_Click(object sender, EventArgs e)
        {
            if (validar())
            {
                MsgError.Visible = false;
                Response.Redirect("Registrar_Proyecto_Parte4.aspx");
            }
            else
            {
                MsgError.Text = "Debe ingresar todos los datos";
                MsgError.Visible = true;
            }
        }

        protected bool validar()
        {
            bool valido = true;

            Calendario.BackColor = Calendario.SelectedDate.ToString("dd/MM/yyyy").Equals("01/01/0001") ? Color.PaleVioletRed : Color.White;
            valido = Calendario.SelectedDate.ToString("dd/MM/yyyy").Equals("01/01/0001") ? false : valido;

            Dl_cuatrimestre.BackColor = Dl_cuatrimestre.SelectedValue.Equals("Defecto") ? Color.PaleVioletRed : Color.White;
            valido = Dl_cuatrimestre.SelectedValue.Equals("Defecto") ? false : valido;

            bool seleccionado = false;
            for (int i = 0; i < Cb_materias.Items.Count; i++)
            {
                if (Cb_materias.Items[i].Selected == true)
                {
                    seleccionado = true;
                }

            }

            Cb_materias.BackColor = seleccionado ? Color.White : Color.PaleVioletRed;
            valido = seleccionado ? valido : false;

            Rb_N.BackColor = !Rb_N.Checked && !Rb_Y.Checked ? Color.PaleVioletRed : Color.White;
            Rb_Y.BackColor = !Rb_N.Checked && !Rb_Y.Checked ? Color.PaleVioletRed : Color.White;
            valido = !Rb_N.Checked && !Rb_Y.Checked ? false : valido;


            valido = Rb_Y.Checked && Tb_lugar.Text.Equals("") ? false : true;
            Tb_lugar.BackColor = Rb_Y.Checked && Tb_lugar.Text.Equals("") ? Color.PaleVioletRed : Color.White;

            return valido;
        }

        protected void Rb_Y_CheckedChanged(object sender, EventArgs e)
        {
            Tb_lugar.Visible = true;
        }

        protected void Rb_N_CheckedChanged(object sender, EventArgs e)
        {
            Tb_lugar.Visible = false;
        }

        protected void Btn_Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registrar_Proyecto_Parte2");
        }
    }

}