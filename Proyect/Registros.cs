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

        public bool ExistematriculaVacia(int matricula)
        {
            conect.Open();

            String instruccion = "Select * from Alumnos where Contrasena IS NULL and Matricula='" + matricula + "'";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            SqlDataReader dr = comando.ExecuteReader();

            while (dr.Read())
            {
                return true;
            }

            conect.Close();

            return false;

        }

        public bool RegistroAlumnoL(String nombre)
        {
            bool registrado = false;
            try
            {
                String instruccion = "INSERT INTO  UsuarioLectura (nombre) " +
                    "VALUES ('" + nombre + "')";

                conect.Open();

                SqlCommand comando = new SqlCommand(instruccion, conect);
                int ejecutado = comando.ExecuteNonQuery();

                if (ejecutado <= 0)
                {
                    registrado = true;
                }
                conect.Close();
            }
            catch (Exception e)
            {
                MessageBox.Show("Error RegistroAlumoL: " + e);
            }
            return registrado;
        }

        public void RegistroAlumnosInexis(int matricula, String nombre, int edad)
        {
            try
            {
                String instruccion = "Insert into Alumnos (Matricula, Nombres, Edad ) values ('" + matricula
                    + "', '" + nombre + "', " + edad + ")";

                conect.Open();
                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();
                conect.Close();

            }
            catch (Exception e)
            {
                MessageBox.Show("Error RAI " + e);
            }
        }

        public void RegistroAlumoP(String nombre, int edad, String apellidoP, String apellidoM, String correo,
            String contrasena, int matricula, int carrera, String contacto)
        {
                String instruccion = "Insert into Alumnos values ('" + matricula + "', '" + nombre + "', " +
                    "'" + apellidoP + "', '" + apellidoM + "', " + edad + ", '" + correo + "', '" + contacto + "'," +
                    " '" + contrasena + "', " + carrera + ");";

                conect.Open();
                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();
                conect.Close();

        }

        public void UpdateAlumno(String nombre, int edad, String apellidoP, String apellidoM, String correo,
            String contrasena, int matricula, int carrera, String contacto)
        {
            try
            {
                String instruccion = "Update Alumnos set Nombres='" + nombre + "', ApellidoPaterno='" + apellidoP + "', ApellidoMaterno='" + apellidoM +
                    "', Edad=" + edad + ", Correo='" + correo + "', Contacto='" + contacto + "', Contrasena='" + contrasena + "', Carrera='" + carrera + "'" +
                    " where Matricula=" + matricula;
                conect.Open();
                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();
                conect.Close();

            }
            catch (Exception e)
            {
                MessageBox.Show("Error UpdateAlumno: " + e);
            }
        }

        public int existeAlumno(int matricula, String contrasena)
        {
            try
            {
            conect.Open();

            String instruccion = "Select * from Alumnos where Contrasena='" + contrasena + "' and Matricula='" + matricula + "'";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            SqlDataReader dr = comando.ExecuteReader();

            while (dr.Read())
            {
                return 1;
            }

                conect.Close();
                return 0;

            }
            catch (Exception e)
            {
                return 2;
            }

        }

        public int existeAdministrador(ref int id,String correo, String contrasena, String tipo)
        { //0 no existe, 1 existe, 2 error.
            conect.Open();
            try
            {
            String instruccion = "Select * from Administrativo where Contrasena = '" + contrasena + "' and Correo='" + correo + "' and Tipo='" + tipo + "';";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            SqlDataReader dr = comando.ExecuteReader();

            if (dr.Read())
            {
                id = Int32.Parse(dr["id"].ToString());
                conect.Close();
                return 1;
            }
                conect.Close();
                return 0;

            }
            catch(Exception e){
                return 2;
            }

        }

    }
}