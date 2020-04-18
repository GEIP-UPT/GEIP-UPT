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

        public void guardarRef(int id_proyecto, String nombreAl)
        {
            try
            {
                String instruccion = "insert into rel_AlumnoProyecto values(" + id_proyecto+", '"+
                    nombreAl+"')";
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
                   +"', 'REVISION ASESOR', 0 , 'En espera de aceptacion' ,"+asesor+");";

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
    }
}