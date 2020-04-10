using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Windows;
using System.Drawing;

namespace GEIP_UPT 
{
    public class RegistroAlumno : BD
    {
        public SqlConnection conect = new SqlConnection();

        public RegistroAlumno()
        {
            conect.ConnectionString = cadena;
        }


        public void Insert(String nombre, int edad, String apellidoP, String apellidoM, String correo, String contrasena, int matricula, String carrera)
        {
            try
            {
                String instruccion = "EXEC insertar_alumno  @Nombre='" + nombre + "', @Edad=" + edad + ", @ApellidoPaterno='" + apellidoP + "', " +
                "@ApellidoMaterno='" + apellidoM + "', @Correo='" + correo + "', @Contrasena='" + contrasena + "', @Matricula=" + matricula + ", " +
                "@Carrera='" + carrera + "', @Tipo=Alumno;";

                conect.Open();
                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();
                conect.Close();

            }
            catch (Exception e)
            {
                MessageBox.Show("Error insert: " + e);
            }

        }


        public bool existeAlumno(int matricula, String contrasena)
        {
            conect.Open();

                String instruccion = "Select Matricula from RegistroAlumno where Contrasena='" + contrasena + "' and Tipo='Alumno';";
                SqlCommand comando = new SqlCommand(instruccion, conect);
                SqlDataReader dr = comando.ExecuteReader();

                while (dr.Read())
                {
                    int mat = int.Parse(dr.GetString(0));
                    if (matricula == mat)
                        return true;
                }

            conect.Close();

            return false;
        }

        public bool existeAdministrador(int matricula, String contrasena)
        {
            conect.Open();

                String instruccion = "Select Matricula from RegistroAlumno where Contrasena = '" + contrasena + "' and Tipo='Administrador';";
                SqlCommand comando = new SqlCommand(instruccion, conect);
                SqlDataReader dr = comando.ExecuteReader();

                while (dr.Read())
                {
                    int mat = int.Parse(dr.GetString(0));
                    if (matricula == mat)
                        return true;
                }
            
                conect.Close();

            return false;
        }

        public SqlDataReader getAsesores()
        {
            conect.Open();
            SqlDataReader asesores = null;
            String instruccion = "Select Asesor from DatosAsesor";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            asesores = comando.ExecuteReader();


            return asesores;
        }
    }
}