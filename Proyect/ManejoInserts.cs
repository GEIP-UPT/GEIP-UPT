using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Windows;

namespace GEIP_UPT
{
    public class ManejoInserts : BD
    {
        public SqlConnection conect = new SqlConnection();

        public ManejoInserts()
        {
            conect.ConnectionString = cadena;
        }

        public void guardarCarrera(string carrera)
        {
            try
            {
                String instruccion = "INSERT INTO cat_Carreras values ('" + carrera + "')";
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

        public void updateCarrera(string carrera, int id)
        {
            try
            {
                String instruccion = "UPDATE cat_Carreras SET carrera = '" + carrera + "' WHERE id = " + id ;
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

        public void guardarAdmin(string nombre, string correo, string pass, string contacto, string area)
        {
            try
            {
                String instruccion = "INSERT INTO Administrativo (Nombre, Correo, Contrasena, Contacto, Area, Tipo) VALUES ('" + nombre +"','"+ correo +"','"+pass+ "','" + contacto +"','" + area + "','Asesor')";
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

        public void updateAdmin(string nombre,string correo, string pass, string conta, string area, string tipo, int id)
        {
            try
            {
                String instruccion = "UPDATE Administrativo SET Nombre=('" + nombre + "'), Correo =('" + correo + "'), Contrasena = ('" + pass + "'), Contacto = ('" + conta + "'), Area = ('" + area + "'), Tipo = ('" + tipo + "') WHERE id = ('" + id + "')";
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

        public void guardarClasif(string clasif)
        {
            try
            {
                String instruccion = "INSERT INTO cat_Clasificaciones (Nombre) VALUES ('" + clasif + "')";
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

        public void updateClasif(string clasif, int id)
        {
            try
            {
                String instruccion = "UPDATE cat_Clasificaciones SET Nombre = ('" + clasif + "') WHERE id = ('" + id + "')";
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

        public void guardarImpacto(string impacto)
        {
            try
            {
                String instruccion = "INSERT INTO cat_Impacto values ('" + impacto + "')";
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

        public void updateImpacto(string impacto, int id)
        {
            try
            {
                String instruccion = "UPDATE cat_Impacto SET Nombre = ('" + impacto + "') WHERE id = ('" + id + "')";
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

        public void guardarProgramas(string programas)
        {
            try
            {
                String instruccion = "INSERT INTO cat_Programas values ('" + programas + "')";
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

        public void updateProgramas(string programas, int id)
        {
            try
            {
                String instruccion = "UPDATE cat_Programas SET Nombre = ('" + programas + "') WHERE id = ('" + id + "')";
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

        public void guardarTiposProy(string tiposProy)
        {
            try
            {
                String instruccion = "INSERT INTO cat_TiposProyecto values ('" + tiposProy + "')";
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

        public void updateTiposProy(string tiposProy, int id)
        {
            try
            {
                String instruccion = "UPDATE cat_TiposProyecto SET Nombre = ('" + tiposProy + "') WHERE id = ('" + id + "')";
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
    } 
}