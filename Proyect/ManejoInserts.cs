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
                String instruccion = "INSERT INTO cat_Carreras values ('" + carrera + "')";
                conect.Open();

                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();

                conect.Close();

        }

        public void updateCarrera(string carrera, int id)
        {
                String instruccion = "UPDATE cat_Carreras SET carrera = '" + carrera + "' WHERE id = " + id ;
                conect.Open();
                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();

                conect.Close();


        }

        public void guardarAdmin(string nombre, string correo, string pass, string contacto, string area)
        {
                String instruccion = "INSERT INTO Administrativo (Nombre, Correo, Contrasena, Contacto, Area, Tipo) VALUES ('" + nombre +"','"+ correo +"','"+pass+ "','" + contacto +"','" + area + "','Asesor')";
                conect.Open();

                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();

                conect.Close();

        }

        public void updateAdmin(string nombre,string correo, string pass, string conta, string area, string tipo, int id)
        {
                String instruccion = "UPDATE Administrativo SET Nombre=('" + nombre + "'), Correo =('" + correo + "'), Contrasena = ('" + pass + "'), Contacto = ('" + conta + "'), Area = ('" + area + "'), Tipo = ('" + tipo + "') WHERE id = ('" + id + "')";
                conect.Open();

                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();

                conect.Close();

        }

        public void guardarClasif(string clasif)
        {
                String instruccion = "INSERT INTO cat_Clasificaciones (Nombre) VALUES ('" + clasif + "')";
                conect.Open();

                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();

                conect.Close();
        }

        public void updateClasif(string clasif, int id)
        {
                String instruccion = "UPDATE cat_Clasificaciones SET Nombre = ('" + clasif + "') WHERE id = ('" + id + "')";
                conect.Open();

                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();

                conect.Close();

        }

        public void guardarImpacto(string impacto)
        {
            String instruccion = "INSERT INTO cat_Impacto values ('" + impacto + "')";
                conect.Open();

                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();

                conect.Close();

        }

        public void updateImpacto(string impacto, int id)
        {
                String instruccion = "UPDATE cat_Impacto SET Nombre = ('" + impacto + "') WHERE id = ('" + id + "')";
                conect.Open();

                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();

                conect.Close();

        }

        public void guardarProgramas(string programas)
        {
                String instruccion = "INSERT INTO cat_Programas values ('" + programas + "')";
                conect.Open();

                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();

                conect.Close();

        }

        public void updateProgramas(string programas, int id)
        {
                String instruccion = "UPDATE cat_Programas SET Nombre = ('" + programas + "') WHERE id = ('" + id + "')";
                conect.Open();

                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();

                conect.Close();

        }

        public void guardarTiposProy(string tiposProy)
        {
                String instruccion = "INSERT INTO cat_TiposProyecto values ('" + tiposProy + "')";
                conect.Open();

                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();

                conect.Close();

        }

        public void updateTiposProy(string tiposProy, int id)
        {
                String instruccion = "UPDATE cat_TiposProyecto SET Nombre = ('" + tiposProy + "') WHERE id = ('" + id + "')";
                conect.Open();

                SqlCommand comando = new SqlCommand(instruccion, conect);
                comando.ExecuteNonQuery();

                conect.Close();

        }
    } 
}