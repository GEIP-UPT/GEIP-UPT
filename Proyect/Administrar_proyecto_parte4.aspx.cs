﻿using System;
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
        ConsultasBD cBD = new ConsultasBD();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Matricula"] == null)
            {
                Response.Redirect("Login_alumnos.aspx");
            }

        }

        protected void btn_Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrar_Proyecto_Parte3.aspx");
        }

        protected void gdMaterias(int id_proyecto)
        {
            ManejoProyectos mP = new ManejoProyectos();

            String impacto = hf_materias.Value;
            String[] impactos = impacto.Split(',');
            for (int i = 0; i < impactos.Length; i++)
            {
                if(!cBD.existeRelacionMateria(id_proyecto, int.Parse(impactos[i])))
                    mP.guardarImpactos(id_proyecto, int.Parse(impactos[i]));
            }
        }

        protected void gdRelacion()
        {
            ManejoProyectos mP = new ManejoProyectos();
            Registros reg = new Registros();
            ConsultasBD cBD = new ConsultasBD();

            String[] gd = getAlumnos();
            String alumnos = gd[0];
            String edades = gd[1];
            String matriculas = gd[2];
            String[] alumnosSep = alumnos.Split(',');
            String[] edadesSep = edades.Split(',');
            String[] matriculasSep = matriculas.Split(',');

            int id_Proyecto = mP.getUltiP(hf_nombrePs.Value);
            gdMaterias(id_Proyecto);

            for (int i = 0; i < matriculasSep.Length; i++)
            {
                if (!matriculasSep[i].Equals(""))
                {
                    if (!cBD.existeMatricula(int.Parse(matriculasSep[i])))
                    {
                        reg.RegistroAlumnosInexis(int.Parse(matriculasSep[i]), alumnosSep[i], int.Parse(edadesSep[i]));
                    }

                    if(!cBD.existeRelacionProyecto(id_Proyecto, int.Parse(matriculasSep[i])))
                        mP.guardarRef(id_Proyecto, int.Parse(matriculasSep[i]));
                }
            }
        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            ManejoProyectos mP = new ManejoProyectos();

            String nombre = hf_nombrePs.Value;
            int avance = int.Parse(hf_avanceP.Value);
            String tipo = hf_tipoP.Value;
            int programa = int.Parse(hf_programaP.Value);
            String clasif = hf_clasificacion.Value;
            int asesor = int.Parse(hf_asesor.Value);

            String fecha = hf_fecha.Value;
            String cuatrimestre = hf_cuatrimestre.Value;
            String convocatorias = hf_convocatorias.Value;

            String recursos = hf_recursos.Value;
            String descripcion = hf_descripcion.Value;

            if (Session["IdProy"] == null)
            {
                mP.Registrar_Proyecto(nombre, descripcion, tipo, clasif, avance, programa, cuatrimestre, fecha,
                    convocatorias, recursos, asesor);
            }
            else
            {
                String id = Session["IdProy"].ToString();
                mP.Actualizar_Proyecto(int.Parse(id),nombre, descripcion, tipo, clasif, avance, programa, cuatrimestre, fecha,
                    convocatorias, recursos, asesor);
            }

            //(String nombre, String descripcion, String tipo, String clasificacion, int avance,
            //int programa, String cuatrimestre, String impacto, String fechaFin, String convocatoria, String recursos, int asesor)
            gdRelacion();
            Response.Redirect("Administracion_alumnos.aspx");


        }

        protected String[] getAlumnos()
        {
            //Llenado de alumnos y edades
            String alumnos = "";
            String edades = "";
            String matriculas = "";
            if (!hf_edad1.Value.Equals("Defecto"))
            {
                alumnos = hf_alumno1.Value;
                edades = hf_edad1.Value;
                matriculas = hf_mat1.Value;
            }

            if (!hf_edad2.Value.Equals("Defecto"))
            {
                if (!alumnos.Equals(""))
                {
                    alumnos = alumnos + "," + hf_alumno2.Value;
                    edades = edades + "," + hf_edad2.Value;
                    matriculas = matriculas + "," + hf_mat2.Value;
                }
                else
                {
                    alumnos = hf_alumno2.Value;
                    edades = hf_edad2.Value;
                    matriculas = hf_mat2.Value;
                }
            }

            if (!hf_edad3.Value.Equals("Defecto"))
            {
                if (!alumnos.Equals(""))
                {
                    alumnos = alumnos + "," + hf_alumno3.Value;
                    edades = edades + "," + hf_edad3.Value;
                    matriculas = matriculas + "," + hf_mat3.Value;
                }
                else
                {
                    alumnos = hf_alumno3.Value;
                    edades = hf_edad3.Value;
                    matriculas = hf_mat3.Value;
                }
            }

            if (!hf_edad4.Value.Equals("Defecto"))
            {
                if (!alumnos.Equals(""))
                {
                    alumnos = alumnos + "," + hf_alumno4.Value;
                    edades = edades + "," + hf_edad4.Value;
                    matriculas = matriculas + "," + hf_mat4.Value;
                }
                else
                {
                    alumnos = hf_alumno4.Value;
                    edades = hf_edad4.Value;
                    matriculas = hf_mat4.Value;
                }
            }

            if (!hf_edad5.Value.Equals("Defecto"))
            {
                if (!alumnos.Equals(""))
                {
                    alumnos = alumnos + "," + hf_alumno5.Value;
                    edades = edades + "," + hf_edad5.Value;
                    matriculas = matriculas + "," + hf_mat5.Value;
                }
                else
                {
                    alumnos = hf_alumno5.Value;
                    edades = hf_edad5.Value;
                    matriculas = hf_mat5.Value;
                }
            }

            String[] datosAlumnos = { alumnos, edades, matriculas };
            return datosAlumnos;
        }
    }
}