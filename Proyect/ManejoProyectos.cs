using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Windows;

namespace GEIP_UPT
{
    public class ManejoProyectos: BD
    {
        public SqlConnection conect = new SqlConnection();

        public ManejoProyectos()
        {
            conect.ConnectionString = cadena;
        }

        public int getUltiP(String nombreP)
        {
            int ultimo =0;
            SqlDataReader id_proy = null;
            try
            {
                String instruccion = "Select id_proyecto from Proyectos where Nombre = '"+nombreP+"' ORDER BY id_proyecto DESC";

                conect.Open();
                SqlCommand comando = new SqlCommand(instruccion, conect);
                id_proy = comando.ExecuteReader();

                if (id_proy.Read())
                {
                    ultimo = id_proy.GetInt32(0);
                }

                conect.Close();

            }
            catch (Exception e)
            {
                MessageBox.Show("Error UltiP: " + e);
            }

            return ultimo;

        }

        public void guardarImpactos(int id_proyecto, int id_materia)
        {
            try
            {
                String instruccion = "insert into relProyectoCat_Impacto values(" + id_proyecto + ", " +
                    id_materia + ")";
                conect.Open();

                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();

                conect.Close();

            }
            catch (Exception e)
            {
                MessageBox.Show("Error guardarREF: " + e);
            }

        }

        public void guardarRef(int id_proyecto, int matricula)
        {
            try
            {
                String instruccion = "insert into rel_AlumnoProyecto values(" + id_proyecto+", "+
                    matricula+")";
                conect.Open();

                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();

                conect.Close();

            }
            catch (Exception e)
            {
                MessageBox.Show("Error guardarREF: " + e);
            }

        }

        public void Registrar_Proyecto(String nombre, String descripcion, String tipo, String clasificacion, int avance,
            int programa, String cuatrimestre, String fechaFin, String convocatoria, String recursos, int asesor)
        {
            try
            {
                String instruccion = "Insert into Proyectos values ('" + nombre+"', '"+descripcion+"', '"+tipo+"', '"+clasificacion+"'," +
                   avance+", "+programa+", "+cuatrimestre+", '"+fechaFin+"', '"+convocatoria+"', '"+recursos
                   +"', 'REVISION ASESOR', 1 , 'En espera de aceptacion' ,"+asesor+");";

                conect.Open();
                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();
                conect.Close();

            }
            catch (Exception e)
            {
                MessageBox.Show("Error: RegistrarProyecto " + e);
            }
        }
   public void Actualizar_Proyecto(int Id, String nombre, String descripcion, String tipo, String clasificacion, int avance,
            int programa, String cuatrimestre, String fechaFin, String convocatoria, String recursos, int asesor)
        {
            try
            {
                String instruccion = "Update Proyectos set Nombre='" + nombre + "', Descripcion='" + descripcion + "', Tipo='" + tipo + "', " +
                    "Clasificacion='" + clasificacion + "', Avance='" + avance + "', Programa='" + programa + "', Cuatrimestre='" + cuatrimestre +
                    "', Fecha='" + fechaFin + "', Convocatoria='" + convocatoria + "', Recursos='" + recursos + "', Asesor='" + asesor+"' " +
                    "where id_proyecto = "+Id+";";

                conect.Open();
                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();
                conect.Close();

            }
            catch (Exception e)
            {
                MessageBox.Show("Error: UpdateProyecto " + e);
            }
        }    

        public bool updateEstadoAd(int id_proyecto, String estado)
        {
            bool exit = true;
            try
            {
                String instruccion = "Update Proyectos set EstadoAdmin='" + estado + "'  WHERE id_proyecto= " + id_proyecto;
                conect.Open();
                SqlCommand comando = new SqlCommand(instruccion, conect);   
                int execute = comando.ExecuteNonQuery();
                if (execute == 0)
                {
                    exit = false;
                }
                conect.Close();

            }
            catch (Exception e)
            {
                MessageBox.Show("Error UpdateAlumno: " + e);
            }
            return exit;
        }
        public bool updateEstado(int id_proyecto, int estado,string justificacion)
        {
            bool exit = true;
            try
            {
                String instruccion = "Update Proyectos set Estado=" +estado+", Justificioninactividad='"+justificacion+"'  WHERE id_proyecto="+id_proyecto;
                conect.Open();
                SqlCommand comando = new SqlCommand(instruccion, conect);
                int execute=comando.ExecuteNonQuery();
                if (execute==0)
                {
                    exit = false;
                }
                conect.Close();

            }
            catch (Exception e)
            {
                MessageBox.Show("Error UpdateAlumno: " + e);
            }
            return exit;
        }

    }
}