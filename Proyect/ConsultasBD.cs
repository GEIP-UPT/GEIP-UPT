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
            String instruccion = "Select Asesor from DatosAsesor";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            asesores = comando.ExecuteReader();

            return asesores;
        }

        public SqlDataReader getClasif()
        {
            conect.Open();
            SqlDataReader clasif = null;
            String instruccion = "Select * from clasificacion";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            clasif = comando.ExecuteReader();

            return clasif;
        }

        public SqlDataReader getProgramas()
        {
            conect.Open();
            SqlDataReader programas = null;
            String instruccion = "Select * from programa";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            programas = comando.ExecuteReader();

            return programas;
        }

        public SqlDataReader getTipos()
        {
            conect.Open();
            SqlDataReader tipos = null;
            String instruccion = "Select * from tipos";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            tipos = comando.ExecuteReader();

            return tipos;
        }

        public SqlDataReader getMateriasImp()
        {
            conect.Open();
            SqlDataReader materias = null;
            String instruccion = "Select * from materiasImpacto";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            materias = comando.ExecuteReader();

            return materias;
        }
    }
}