using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GEIP_UPT
{
    public class ConsultasBD : BD
    {
        public SqlConnection conect = new SqlConnection();

        public ConsultasBD()
        {
            conect.ConnectionString = cadena;
        }

        public SqlDataReader getAsesores()
        {
            conect.Open();
            SqlDataReader asesores = null;
            String instruccion = "Select Nombre, id from Administrativo where Tipo='Asesor'";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            asesores = comando.ExecuteReader();

            return asesores;
        }

        public SqlDataReader getClasif()
        {
            conect.Open();
            SqlDataReader clasif = null;
            String instruccion = "Select * from cat_Clasificaciones";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            clasif = comando.ExecuteReader();

            return clasif;
        }

        public SqlDataReader getCarreras()
        {
            conect.Open();
            SqlDataReader carreras = null;
            String instruccion = "Select * from Carrera";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            carreras = comando.ExecuteReader();

            return carreras;
        }

        public SqlDataReader getProgramas()
        {
            conect.Open();
            SqlDataReader programas = null;
            String instruccion = "Select * from cat_Programas";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            programas = comando.ExecuteReader();

            return programas;
        }

        public SqlDataReader getTipos()
        {
            conect.Open();
            SqlDataReader tipos = null;
            String instruccion = "Select * from TiposProyectos";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            tipos = comando.ExecuteReader();

            return tipos;
        }

        public SqlDataReader getMateriasImp()
        {
            conect.Open();
            SqlDataReader materias = null;
            String instruccion = "Select * from cat_Impacto";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            materias = comando.ExecuteReader();

            return materias;
        }

        public SqlDataReader getProyectosActivos()
        {
            conect.Open();
            SqlDataReader proyectos = null;
            String instruccion = "SELECT Nombre,Descripcion,Estado FROM Proyectos WHERE EstadoAdmin='ACEPTADO'";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            proyectos = comando.ExecuteReader();

            return proyectos;
        }

        public int[] ProyectosAlumn()
        {
            int[] proyectos = null;



            return proyectos;
        }

    }
}