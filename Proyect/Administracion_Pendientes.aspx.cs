using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace GEIP_UPT
{
    public partial class Datos_de_Asesor : System.Web.UI.Page
    {
        ConsultasBD cB = new ConsultasBD();
        ManejoProyectos mp = new ManejoProyectos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id_Admin"] == null)
            {
                Response.Redirect("Login_administrar.aspx");
            }
            else
            {
                consultaProyectos();
            }
        }

        protected void consultaProyectos()
        {

            DataSet datos = cB.ProyectosPendientesAdmin();
            if (datos.Tables[0].Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "$('#alert').hide();", true);

                TablaProyectos.Style.Add("display", "init");
                LlenarTabla(TablaProyectos, datos);
            }
            else
            {
                //TablaProyectos.Style.Add("display", "none");
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "$('#alert').show();", true);

            }

        }

        public void LlenarTabla(Table tabla, DataSet datos)
        {
            for (int i = 0; i < datos.Tables[0].Rows.Count; i++)
            {
                TableRow tempRow = new TableRow();
                for (int j = 0; j < datos.Tables[0].Columns.Count; j++)
                {
                    TableCell tempCell = new TableCell();
                    tempCell.Text = datos.Tables[0].Rows[i][j].ToString();

                    if (datos.Tables[0].Columns[j].ToString() == "Estado")
                    {
                        tempCell.Text = datos.Tables[0].Rows[i][j].ToString().Equals("0") ? "INACTIVO" : "ACTIVO";
                    }


                    if (datos.Tables[0].Columns[j].ToString() == "EstadoAdmin")
                    {
                        //EDITAR ESTADO
                        TableCell tempCellEditStatus = new TableCell();

                        Literal lt1 = new Literal();
                        string option1 = "<option value = '0' selected = 'selected'> Pendiente </option>";
                        string option2 = "<option value = '1' > Aceptado </option>";
                        string option3 = "<option value = '2' > Rechazado </option>";


                        lt1.Text = " <select id='drpEstado" + datos.Tables[0].Rows[i]["id_proyecto"] + "' idProyecto='" + datos.Tables[0].Rows[i]["id_proyecto"] + "' class='brad-5' onchange='drpChange(this)'>" +
                            option1 +
                            option2 +
                            option3 +
                            " </select>";


                        tempCellEditStatus.Controls.Add(lt1);
                        tempRow.Cells.Add(tempCellEditStatus);

                    }
                    else
                    {
                        tempRow.Cells.Add(tempCell);
                    }

                }

                //COLUMNA VER MAS

                string id = datos.Tables[0].Rows[i]["id_proyecto"].ToString();
                TableCell tempCellView = new TableCell();


                Literal ltbr = new Literal();
                ltbr.Text = "<button type = 'button' class='btn' onclick=clickView(" + id + ")><i class='far fa-eye' ></i></button>";
                tempCellView.Controls.Add(ltbr);
                tempCellView.CssClass = "text-center";
                tempCellView.Style.Add("vertical-align", "middle");
                tempRow.Cells.Add(tempCellView);


                tabla.Rows.Add(tempRow);
            }
        }

        protected void btnView_Click(object sender, EventArgs e)
        {

            idProyecto.Attributes.Add("value", idProyecto.Text);
            try
            {

                int id = Int32.Parse(idProyecto.Text);
                //CONSULTAR DETALLE PROYECTO
                DataSet dsProyecto = cB.getProyectosDetallePorId(id);
                Lb_NombrePro.Text = "Nombre del proyecto: " + dsProyecto.Tables[0].Rows[0]["Nombre"].ToString();
                Lb_descripcion.Text = "Descripción:" + dsProyecto.Tables[0].Rows[0]["Descripción"].ToString();
                Lb_TipoPro.Text = "Tipo de proyecto: " + dsProyecto.Tables[0].Rows[0]["Tipo de Proyecto"].ToString();
                Lb_Clasificacion.Text = "Clasificacion: " + dsProyecto.Tables[0].Rows[0]["Clasificación"].ToString();
                Lb_Avance.Text = "Avance: " + dsProyecto.Tables[0].Rows[0]["Avance"].ToString();
                Lb_ProgramaE.Text = "Programa educativo:" + dsProyecto.Tables[0].Rows[0]["Programa"].ToString();
                Lb_Cuatrimestre.Text = "Cuatrimestre: " + dsProyecto.Tables[0].Rows[0]["Cuatrimestre"].ToString();
                Lb_Fecha.Text = "Fecha de finalizacion: " + dsProyecto.Tables[0].Rows[0]["Fecha"].ToString();
                Lb_Convocatorias.Text = "Convocatorias: " + dsProyecto.Tables[0].Rows[0]["Convocatoria"].ToString();
                Lb_recursos.Text = "Recursos:" + dsProyecto.Tables[0].Rows[0]["Recursos"].ToString();
                //string estadoAdmin = dsProyecto.Tables[0].Rows[0]["EstadoAdmin"].ToString();
                //string estado = dsProyecto.Tables[0].Rows[0]["Estado"].ToString();
                //string justificacionInactividad = dsProyecto.Tables[0].Rows[0]["JustificionInactividad"].ToString();
                Lb_Asesor.Text = "Asesor: " + dsProyecto.Tables[0].Rows[0]["Nombre Asesor"].ToString();
                //string asesorCorreo = dsProyecto.Tables[0].Rows[0]["Correo Asesor"].ToString();
                //Lb_contactoLider.Text ="Contacto Líder"+ dsProyecto.Tables[0].Rows[0]["Contacto Asesor"].ToString();

                ///CONSULTA INTEGRANTES
                DataSet dsIntegrantesProyecto = cB.getIntegrantesPoyecto(id);
                Label[] arregloLblMat = new Label[] { Lb_Mat1, Lb_Mat2, Lb_Mat3, Lb_Mat4, Lb_Mat5 };
                Label[] arregloLblAlum = new Label[] { Lb_Alumno1, Lb_Alumno2, Lb_Alumno3, Lb_Alumno4, Lb_Alumno5 };
                Label[] arregloLblEdad = new Label[] { Lb_Edad1, Lb_Edad2, Lb_Edad3, Lb_Edad4, Lb_Edad5 };
                Label[] arregloLblContacto = new Label[] { Lb_Contacto1, Lb_Contacto2, Lb_Contacto3, Lb_Contacto4, Lb_Contacto5 };

                for (int i = 0; i < dsIntegrantesProyecto.Tables[0].Rows.Count; i++)
                {
                    arregloLblAlum[i].Text = dsIntegrantesProyecto.Tables[0].Rows[i]["Nombres"].ToString() + " " +
                        dsIntegrantesProyecto.Tables[0].Rows[i]["ApellidoPaterno"].ToString() + " " +
                        dsIntegrantesProyecto.Tables[0].Rows[i]["ApellidoMaterno"].ToString();
                    arregloLblMat[i].Text = dsIntegrantesProyecto.Tables[0].Rows[i]["Matricula"].ToString();
                    arregloLblEdad[i].Text = dsIntegrantesProyecto.Tables[0].Rows[i]["Edad"].ToString();
                    arregloLblContacto[i].Text = dsIntegrantesProyecto.Tables[0].Rows[i]["Contacto"].ToString();
                }


                ////materias a las que impactai
                DataSet dsImpactoProyecto = cB.getImpactoPoyecto(id);
                string materias = "";
                for (int i = 0; i < dsImpactoProyecto.Tables[0].Rows.Count; i++)
                {
                    materias += dsImpactoProyecto.Tables[0].Rows[i]["Nombre"].ToString();
                    materias += i == (dsImpactoProyecto.Tables[0].Rows.Count - 1) ? "" : " ,";
                }
                Lb_Materias.Text = "Materias a las que impacta: " + materias;

                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "modalProyectoDetalle", "$('#modalProyectoDetalle').modal();", true);
                upModal.Update();
            }
            catch (Exception error)
            {
                MessageBox.Show("Ha ocurido un error, por favor intente de nuevo");
            }

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                int idP = Int32.Parse(idStatus.Text);
                int statusP = Int32.Parse(status.Text);

                String estado="";
                estado = statusP == 0 ? "REVISION ADMIN" : estado;
                estado = statusP == 1 ? "ACEPTADO" : estado;
                estado = statusP == 2 ? "RECHAZADO" : estado;
                

                bool update = mp.updateEstadoAd(idP, estado);
                if (!update) { 
                  MessageBox.Show("Ha ocurrido un error,por favor intentelo más tarde");
                }
            }
           catch (Exception error)
            {
               MessageBox.Show("Ha ocurrido un error,por favor intentelo más tarde");
            }

            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }



    }
}