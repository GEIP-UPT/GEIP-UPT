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
        ConsultasBD cB = new ConsultasBD();
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            if (Session["Matricula"] == null)
            {
                Response.Redirect("Login_alumnos.aspx");
            }
            else
            {
                if (Cb_materias.Items.Count == 0)
                    llenarCheck();
            }
        }

        protected void llenarCheck()
        {
            SqlDataReader materias = cB.getMateriasImp();
            if (materias != null)
            {
                while (materias.Read())
                {
                    ListItem materia = new ListItem(materias["Nombre"].ToString(), materias["id"].ToString());
                    Cb_materias.Items.Add(materia);
                }

                cB.conect.Close();
            }
            else
            {
                cB.conect.Close();
                modalText.Text = "Ha ocurrido un error, intentelo más tarde.";
                errorModal();
            }
        }
        protected void Sig_Click(object sender, EventArgs e)
        {
            if (validar())
            {
                MsgError.Visible = false;
                Response.Redirect("Administrar_Proyecto_Parte4.aspx");
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
            Response.Redirect("Administrar_Proyecto_Parte2");
        }

        protected void btnCargarCon_Click(object sender, EventArgs e)
        {
            try
            {
                DateTime fechaSeleccionada;
                //Solucion error formato fecha
                DateTime dt = DateTime.Now;
                int mes = dt.Month;
                String[] dtSp = dt.ToString().Split(' ');
                String[] auxD = dtSp[0].Split('/');
                String[] fecha = (hf_fecha.Value).Split('/');

                if (int.Parse(auxD[0]) == mes)
                    fechaSeleccionada = new DateTime(int.Parse(fecha[2]), int.Parse(fecha[0]), int.Parse(fecha[1]));
                else
                    fechaSeleccionada = new DateTime(int.Parse(fecha[2]), int.Parse(fecha[1]), int.Parse(fecha[0]));

                Calendario.SelectedDate = fechaSeleccionada;
                Calendario.VisibleDate = fechaSeleccionada;

                if (hf_convocatoria.Value.Equals("No"))
                {
                    Tb_lugar.Visible = false;
                    Rb_N.Checked = true;
                }
                else
                {
                    Tb_lugar.Visible = true;
                    Tb_lugar.Text = hf_convocatoria.Value;
                    Rb_Y.Checked = true;
                }
            }
            catch (Exception ex)
            {
                modalText.Text = "Ha ocurrido un error, intentelo más tarde.";
                errorModal();
            }
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