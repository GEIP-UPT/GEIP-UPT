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
    public partial class Registrar_proyecto_parte4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registrar_Proyecto_Parte3.aspx");
        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            ManejoProyectos mP = new ManejoProyectos();

            String nombre = hf_nombrePs.Value;
            String avance = hf_avanceP.Value;
            String tipo = hf_tipoP.Value;
            String programa = hf_programaP.Value;
            String clasif = hf_clasificacion.Value;
            String asesor = hf_asesor.Value;

            //Llenado de alumnos y edades
            String alumnos = "";
            String edades = "";
            if (!hf_edad1.Value.Equals("Defecto"))
            {
                alumnos = hf_alumno1.Value;
                edades =hf_edad1.Value;
            }

            if (!hf_edad2.Value.Equals("Defecto"))
            {
                if (!alumnos.Equals(""))
                {
                    alumnos = alumnos + "," + hf_alumno2.Value;
                    edades = edades + "," + hf_edad2.Value;
                }
                else
                {
                    alumnos = hf_alumno2.Value;
                    edades = hf_edad2.Value;
                }
            }

            if (!hf_edad3.Value.Equals("Defecto"))
            {
                if (!alumnos.Equals(""))
                {
                    alumnos = alumnos + "," + hf_alumno3.Value;
                    edades = edades + "," + hf_edad3.Value;
                }
                else
                {
                    alumnos = hf_alumno3.Value;
                    edades = hf_edad3.Value;
                }
            }

            if (!hf_edad4.Value.Equals("Defecto"))
            {
                if (!alumnos.Equals(""))
                {
                    alumnos = alumnos + "," + hf_alumno4.Value;
                    edades = edades + "," + hf_edad4.Value;
                }
                else
                {
                    alumnos = hf_alumno4.Value;
                    edades = hf_edad4.Value;
                }
            }

            if (!hf_edad5.Value.Equals("Defecto"))
            {
                if (!alumnos.Equals(""))
                {
                    alumnos = alumnos + "," + hf_alumno5.Value;
                    edades = edades + "," + hf_edad5.Value;
                }
                else
                {
                    alumnos = hf_alumno5.Value;
                    edades = hf_edad5.Value;
                }
            }

            String fecha = hf_fecha.Value;
            String cuatrimestre = hf_cuatrimestre.Value;
            String materias = hf_materias.Value;
            String convocatorias = hf_convocatorias.Value;

            String recursos = hf_recursos.Value;
            String descripcion = hf_descripcion.Value;
            String contactoL = hf_contactoL.Value;
           
            mP.Registrar_Proyecto(nombre, tipo, clasif, avance, programa, asesor, cuatrimestre, materias, fecha, 
                convocatorias,recursos, descripcion, alumnos, edades, contactoL);

            Response.Redirect("Administracion_alumnos.aspx");


        }
    }
}