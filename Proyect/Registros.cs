using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Windows;
using System.Drawing;

namespace GEIP_UPT 
{
    public class Registros : BD
    {
        public SqlConnection conect = new SqlConnection();

        public Registros()
        {
            conect.ConnectionString = cadena;
        }

        protected void RegistroAlumnoL(String nombre)
        {
            try
            {
                String instruccion = "INSERT INTO  UsuarioLectura (nombre) " +
                    "VALUES ('" + nombre+ "')";

                conect.Open();
                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();
                conect.Close();
            }
            catch (Exception e)
            {
                MessageBox.Show("Error RegistroAlumoL: " + e);
            }
        }

        public void RegistroAlumnosInexis(int matricula, String nombre, int edad)
        {
            try
            {
                String instruccion = "Insert into Alumnos (Matricula, Nombres, Edad ) values ('" + matricula 
                    + "', '" + nombre + "', "+ edad + ")";

                conect.Open();
                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();
                conect.Close();

            }
            catch (Exception e)
            {
                MessageBox.Show("Error RegistroAlumoInexis: " + e);
            }
        }

        public void RegistroAlumoP(String nombre, int edad, String apellidoP, String apellidoM, String correo, 
            String contrasena, int matricula, int carrera, String contacto)
        {
            try
            {
                String instruccion = "Insert into Alumnos values ('" + matricula + "', '" + nombre + "', " +
                    "'" + apellidoP +"', '" + apellidoM + "', "+edad+", '"+correo+"', '"+ contacto+"'," +
                    " '"+contrasena+"', "+carrera+");";

                conect.Open();
                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();
                conect.Close();

            }
            catch (Exception e)
            {
                MessageBox.Show("Error RegistroAlumoP: " + e);
            }

        }


        public bool existeAlumno(int matricula, String contrasena)
        {
            conect.Open();

                String instruccion = "Select * from Alumnos where Contrasena='" + contrasena +"' and Matricula='"+matricula+"'" ;
                SqlCommand comando = new SqlCommand(instruccion, conect);
                SqlDataReader dr = comando.ExecuteReader();

                while (dr.Read())
                {
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

    }
}