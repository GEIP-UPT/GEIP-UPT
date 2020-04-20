using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Windows.Controls;

namespace GEIP_UPT
{
    public class ConsultasCatalogos : BD
    {
        public SqlConnection conect = new SqlConnection();

        public ConsultasCatalogos()
        {
            conect.ConnectionString = cadena;
        }

        public DataSet getCarreras()
        {
            conect.Open();
            DataSet datCarreras = new DataSet();

            String consulta = "SELECT * FROM cat_Carreras";

            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datCarreras, "Datos");
            }


            conect.Close();

            return datCarreras;
        }

        public DataSet getCarrera(int id)
        {
            conect.Open();
            DataSet datCarreras = new DataSet();

            String consulta = "SELECT carrera FROM cat_Carreras WHERE cat_Carreras.id =" + id;

            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datCarreras, "Datos");
            }


            conect.Close();

            return datCarreras;
        }

        public DataSet getAdmin()
        {
            conect.Open();
            DataSet datAdmin = new DataSet();

            String consulta = "SELECT * FROM Administrativo";

            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datAdmin, "Datos");
            }


            conect.Close();

            return datAdmin;
        }

        public DataSet getAdm(int id)
        {
            conect.Open();
            DataSet datAdmin = new DataSet();

            String consulta = "SELECT Nombre, Correo, Contrasena, Contacto, Area, Tipo FROM Administrativo WHERE id= "+id;

            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datAdmin, "Datos");
            }


            conect.Close();

            return datAdmin;
        }

        public DataSet getClasif()
        {
            conect.Open();
            DataSet datClasif = new DataSet();

            String consulta = "SELECT * FROM cat_Clasificaciones";

            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datClasif, "Datos");
            }


            conect.Close();

            return datClasif;
        }

        public DataSet getClas(int id)
        {
            conect.Open();
            DataSet datClas = new DataSet();

            String consulta = "SELECT Nombre FROM cat_Clasificaciones WHERE id= " + id;

            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datClas, "Datos");
            }


            conect.Close();

            return datClas;
        }

        public DataSet getImpacto()
        {
            conect.Open();
            DataSet datImpacto = new DataSet();

            String consulta = "SELECT * FROM cat_Impacto";

            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datImpacto, "Datos");
            }


            conect.Close();

            return datImpacto;
        }

        public DataSet getImpacto(int id)
        {
            conect.Open();
            DataSet datImpacto = new DataSet();

            String consulta = "SELECT Nombre FROM cat_Impacto WHERE cat_Impacto.id =" + id;

            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datImpacto, "Datos");
            }


            conect.Close();

            return datImpacto;
        }

        public DataSet getProgramas()
        {
            conect.Open();
            DataSet datProgramas = new DataSet();

            String consulta = "SELECT * FROM cat_Programas";

            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datProgramas, "Datos");
            }


            conect.Close();

            return datProgramas;
        }

        public DataSet getPrograma(int id)
        {
            conect.Open();
            DataSet datPrograma = new DataSet();

            String consulta = "SELECT Nombre FROM cat_Programas WHERE cat_Programas.id =" + id;

            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datPrograma, "Datos");
            }


            conect.Close();

            return datPrograma;
        }

        public DataSet getTiposProy()
        {
            conect.Open();
            DataSet datTiposProy = new DataSet();

            String consulta = "SELECT * FROM cat_TiposProyecto";

            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datTiposProy, "Datos");
            }


            conect.Close();

            return datTiposProy;
        }

        public DataSet getTiposProy(int id)
        {
            conect.Open();
            DataSet datTiposProy = new DataSet();

            String consulta = "SELECT Nombre FROM cat_TiposProyecto WHERE cat_TiposProyecto.id =" + id;

            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datTiposProy, "Datos");
            }


            conect.Close();

            return datTiposProy;
        }
    }
}