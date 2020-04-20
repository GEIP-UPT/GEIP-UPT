using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace GEIP_UPT
{
    public partial class Lectura_datos_alumnos_soloLectura : System.Web.UI.Page
    {

        ConsultasBD cB = new ConsultasBD();
        static string  seleccionado="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin_ID"] != null)
            {
                if (!IsPostBack)
                {
                ConsultarProyectosAceptados();
                }
         

            }
            else
                Response.Redirect("Login_administrar.aspx");


        }


        public void ConsultarProyectosAceptados()
        {

            DataSet dsProyectos = cB.getProyectosPorEstadoAdmin("ACEPTADO");
            if (dsProyectos.Tables[0].Rows.Count > 0)
            {

                LlenarTabla(tblProyectos,dsProyectos);
            }
            else
            {
                //Mensaje("NO SE ENCONTRARON REGISTROS", "alert alert-danger");
            }

        }

        public void ConsultarDetalleProyecto(int id)
        {
            DataSet dsProyecto = cB.getProyectosDetallePorId(id);
            if (dsProyecto.Tables[0].Rows.Count > 0)
            {
                LlenarTabla(tblProyectos, dsProyecto);
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
                    if (datos.Tables[0].Columns[j].ToString() == "id_proyecto")
                    {
                        tempCell.CssClass = "d-none";

                    }
                    tempRow.Cells.Add(tempCell);
                }


                string id = datos.Tables[0].Rows[i]["id_proyecto"].ToString();

     
                //COLUMNA VER MAS
                TableCell tempCellView = new TableCell();


                Literal ltbr = new Literal();
                ltbr.Text = "<button type = 'button' class='btn' onclick=clickView(" + id + ")><i class='far fa-eye' ></i></button>";
                tempCellView.Controls.Add(ltbr);
                tempCellView.CssClass = "text-center";
                tempCellView.Style.Add( "vertical-align","middle");


                tempRow.Cells.Add(tempCellView);

                tabla.Rows.Add(tempRow);
            }
        }

        

    
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Label1.Attributes.Add("value", Label1.Text);
            try
            {
                int id = Int32.Parse(Label1.Text);
                //CONSULTAR DETALLE PROYECTO
                DataSet dsProyecto = cB.getProyectosDetallePorId(id);
                Lb_NombrePro.Text = "Nombre del proyecto: " + dsProyecto.Tables[0].Rows[0]["Nombre"].ToString();
                Lb_descripcion.Text = "Descripción:" + dsProyecto.Tables[0].Rows[0]["Descripción"].ToString();
                Lb_TipoPro.Text = "Tipo de proyecto: " + dsProyecto.Tables[0].Rows[0]["Tipo de Proyecto"].ToString();
                Lb_Clasificacion.Text= "Clasificacion: " + dsProyecto.Tables[0].Rows[0]["Clasificación"].ToString();
                Lb_Avance.Text = "Avance: " + dsProyecto.Tables[0].Rows[0]["Avance"].ToString();
                Lb_ProgramaE.Text = "Programa educativo:"+ dsProyecto.Tables[0].Rows[0]["Programa"].ToString();
                Lb_Cuatrimestre.Text = "Cuatrimestre: "+ dsProyecto.Tables[0].Rows[0]["Cuatrimestre"].ToString();
                Lb_Fecha.Text = "Fecha de finalizacion: " + dsProyecto.Tables[0].Rows[0]["Fecha"].ToString();
                Lb_Convocatorias.Text = "Convocatorias: " + dsProyecto.Tables[0].Rows[0]["Convocatoria"].ToString();
                //Lb_recursos.Text ="Recursos:"+ dsProyecto.Tables[0].Rows[0]["Recursos"].ToString();
                //string estadoAdmin = dsProyecto.Tables[0].Rows[0]["EstadoAdmin"].ToString();
                //string estado = dsProyecto.Tables[0].Rows[0]["Estado"].ToString();
                //string justificacionInactividad = dsProyecto.Tables[0].Rows[0]["JustificionInactividad"].ToString();
                Lb_Asesor.Text = "Asesor: " + dsProyecto.Tables[0].Rows[0]["Nombre Asesor"].ToString();
                //string asesorCorreo = dsProyecto.Tables[0].Rows[0]["Correo Asesor"].ToString();
                //Lb_contactoLider.Text ="Contacto Líder"+ dsProyecto.Tables[0].Rows[0]["Contacto Asesor"].ToString();

                ///CONSULTA INTEGRANTES
                DataSet dsIntegrantesProyecto = cB.getIntegrantesPoyecto(id);
                Label[] arregloLblMat = new Label[] { Lb_Mat1, Lb_Mat2, Lb_Mat3 , Lb_Mat4 , Lb_Mat5 };
                Label[] arregloLblAlum = new Label[] { Lb_Alumno1, Lb_Alumno2, Lb_Alumno3, Lb_Alumno4, Lb_Alumno5 };
                Label[] arregloLblEdad = new Label[] { Lb_Edad1, Lb_Edad2, Lb_Edad3, Lb_Edad4, Lb_Edad5 };

                for (int i = 0; i < dsIntegrantesProyecto.Tables[0].Rows.Count; i++)
                {
                    arregloLblAlum[i].Text = dsIntegrantesProyecto.Tables[0].Rows[i]["Nombres"].ToString()+" "+
                        dsIntegrantesProyecto.Tables[0].Rows[i]["ApellidoPaterno"].ToString()+" "+
                        dsIntegrantesProyecto.Tables[0].Rows[i]["ApellidoMaterno"].ToString(); 
                    arregloLblMat[i].Text= dsIntegrantesProyecto.Tables[0].Rows[i]["Matricula"].ToString();
                    arregloLblEdad[i].Text = dsIntegrantesProyecto.Tables[0].Rows[i]["Edad"].ToString();

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
    }
}