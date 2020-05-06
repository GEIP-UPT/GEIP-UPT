using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Windows;

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
            try
            {
                conect.Open();
                SqlDataReader asesores = null;
                String instruccion = "Select Nombre, id from Administrativo where Tipo='Asesor'";
                SqlCommand comando = new SqlCommand(instruccion, conect);
                asesores = comando.ExecuteReader();

                return asesores;
            }catch(Exception e)
            {
                return null;
            }
        }

        public SqlDataReader getClasif()
        {
            try
            {
                conect.Open();
                SqlDataReader clasif = null;
                String instruccion = "Select * from cat_Clasificaciones";
                SqlCommand comando = new SqlCommand(instruccion, conect);
                clasif = comando.ExecuteReader();

                return clasif;
            }
            catch (Exception e)
            {
                return null;
            }
        }

        public SqlDataReader getCarreras()
        {
            conect.Open();
            SqlDataReader carreras = null;
            String instruccion = "Select * from cat_Carreras";
            SqlCommand comando = new SqlCommand(instruccion, conect);
            carreras = comando.ExecuteReader();

            return carreras;
        }

        public SqlDataReader getProgramas()
        {
            try
            {
                conect.Open();
                SqlDataReader programas = null;
                String instruccion = "Select * from cat_Programas";
                SqlCommand comando = new SqlCommand(instruccion, conect);
                programas = comando.ExecuteReader();

                return programas;
            }
            catch (Exception e)
            {
                return null;
            }
        }

        public SqlDataReader getTipos()
        {
            try {
                conect.Open();
                SqlDataReader tipos = null;
                String instruccion = "Select * from cat_TiposProyecto";
                SqlCommand comando = new SqlCommand(instruccion, conect);
                tipos = comando.ExecuteReader();

                return tipos;
            } catch (Exception e)
            {
                return null;
            }
        }
        public SqlDataReader getMateriasImp()
        {
            try
            {
                conect.Open();
                SqlDataReader materias = null;
                String instruccion = "Select * from cat_Impacto";
                SqlCommand comando = new SqlCommand(instruccion, conect);
                materias = comando.ExecuteReader();

                return materias;
            }
            catch (Exception e)
            {
                return null;
            }
        }

        public DataSet getProyectosPorEstadoAdmin(String estadoAdmin)
        {
            conect.Open();
            DataSet datColeccion = new DataSet();
          
            String consulta = "SELECT id_proyecto,Nombre,Descripcion as Descripción,Estado FROM Proyectos WHERE EstadoAdmin='" + estadoAdmin+"'";
            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datColeccion, "Datos");
            }


            conect.Close();

            return datColeccion;
        }
        public DataSet ProyectosPendientesAdmin()
        {
            conect.Open();
            DataSet datColeccion = new DataSet();
            try
            {

                String consulta = "SELECT id_proyecto,Nombre,Descripcion, Avance, Fecha, EstadoAdmin, Estado FROM Proyectos WHERE EstadoAdmin='REVISION ADMIN'";
                SqlCommand sqlComman = new SqlCommand(consulta, conect);

                using (sqlComman)
                {
                    sqlComman.CommandType = CommandType.Text;

                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                    sqlDataAdapter.Fill(datColeccion, "Datos");
                }
                
                conect.Close();
                return datColeccion;
            }
            catch (Exception e)
            {
                return null;
            }
        }

        public DataSet getProyectosPendientesAsesor(int asesorId)
        {
            conect.Open();
            DataSet datColeccion = new DataSet();

            String consulta = "SELECT id_proyecto,Nombre,Descripcion,Avance,Fecha,EstadoAdmin,Estado FROM Proyectos WHERE Asesor=" + asesorId + " AND EstadoAdmin='REVISION ASESOR'";

            SqlCommand sqlComman = new SqlCommand(consulta, conect);
            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datColeccion, "Datos");
            }


            conect.Close();

            return datColeccion;
        }
        public DataSet getProyectosPorAsesor(int asesorId,int estado)
        {
            conect.Open();
            DataSet datColeccion = new DataSet();

            String consulta = "SELECT id_proyecto,Nombre,Descripcion as Descripción,Avance,Fecha,EstadoAdmin,Estado FROM Proyectos WHERE Asesor=" + asesorId +" AND Estado="+estado;

            SqlCommand sqlComman = new SqlCommand(consulta, conect);
            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datColeccion, "Datos");
            }


            conect.Close();

            return datColeccion;
        }
        public DataSet getProyectosDetallePorId(int id)
        {
            try
            {
                conect.Open();
                DataSet datColeccion = new DataSet();

                String consulta = "SELECT Proyectos.id_proyecto, Proyectos.Nombre,Proyectos.Descripcion as Descripción" +
                    ",cat_TiposProyecto.Nombre as 'Tipo de Proyecto',cat_Clasificaciones.Nombre as 'Clasificación',Avance" +
                    ",cat_Programas.Nombre as 'Programa',Cuatrimestre,Fecha,Convocatoria,Recursos,EstadoAdmin,Estado" +
                    ",JustificionInactividad,Administrativo.Nombre as 'Nombre Asesor',Administrativo.Correo as 'Correo Asesor',Administrativo.Contacto as 'Contacto Asesor' " +
                    ", Proyectos.Tipo as 'idTipo', Proyectos.Clasificacion as 'idClas', Proyectos.Programa as 'idProg', Proyectos.Asesor as 'idAsesor'" +
                    ", Proyectos.Avance as 'Avc'" +
                    "FROM Proyectos " +
                    "INNER JOIN Administrativo ON Proyectos.Asesor = Administrativo.id " +
                    "INNER JOIN cat_TiposProyecto ON Proyectos.Tipo = cat_TiposProyecto.id " +
                    "INNER JOIN cat_Clasificaciones ON Proyectos.Clasificacion = cat_Clasificaciones.id " +
                    "INNER JOIN cat_Programas ON Proyectos.Programa = cat_Programas.id " +
                    "WHERE Proyectos.id_proyecto = " + id;


                SqlCommand sqlComman = new SqlCommand(consulta, conect);

                using (sqlComman)
                {
                    sqlComman.CommandType = CommandType.Text;

                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                    sqlDataAdapter.Fill(datColeccion, "Datos");
                }

                conect.Close();
                return datColeccion;

            }catch(Exception e)
            {
                return null;
            }
        }

        public DataSet getProyectosDetalle()
        {
            conect.Open();
            DataSet datColeccion = new DataSet();

            String consulta = "SELECT Proyectos.id_proyecto, Proyectos.Nombre,Proyectos.Descripcion as Descripción" +
                ",cat_TiposProyecto.Nombre as 'Tipo de Proyecto',cat_Clasificaciones.Nombre as 'Clasificación',Avance" +
                ",cat_Programas.Nombre as 'Programa',Cuatrimestre,Fecha,Convocatoria,Recursos,EstadoAdmin,Estado" +
                ",JustificionInactividad,Administrativo.Nombre as 'Nombre Asesor',Administrativo.Correo as 'Correo Asesor',Administrativo.Contacto as 'Contacto Asesor' " +
                "FROM Proyectos " +
                "INNER JOIN Administrativo ON Proyectos.Asesor = Administrativo.id " +
                "INNER JOIN cat_TiposProyecto ON Proyectos.Tipo = cat_TiposProyecto.id " +
                "INNER JOIN cat_Clasificaciones ON Proyectos.Clasificacion = cat_Clasificaciones.id " +
                "INNER JOIN cat_Programas ON Proyectos.Programa = cat_Programas.id ";


            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datColeccion, "Datos");
            }


            conect.Close();

            return datColeccion;
        }

        //public DataSet ProyectosPendientes()
        //{
        //    conect.Open();
        //    DataSet datColeccion = new DataSet();

        //    String consulta = " SELECT Alumnos.Matricula,Alumnos.Nombres, Alumnos.ApellidoPaterno,Alumnos.ApellidoMaterno,Alumnos.Edad,Alumnos.Contacto FROM rel_AlumnoProyecto " +
        //        "INNER JOIN Alumnos ON rel_AlumnoProyecto.Matricula = Alumnos.Matricula " +
        //        "WHERE rel_AlumnoProyecto.id_proyecto = " + idProyecto;
        //    SqlCommand sqlComman = new SqlCommand(consulta, conect);

        //    using (sqlComman)
        //    {
        //        sqlComman.CommandType = CommandType.Text;

        //        SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
        //        sqlDataAdapter.Fill(datColeccion, "Datos");
        //    }


        //    conect.Close();

        //    return datColeccion;
        //}


        public DataSet getIntegrantesPoyecto(int idProyecto)
        {
            conect.Open();
            DataSet datColeccion = new DataSet();

            String consulta = " SELECT Alumnos.Matricula,Alumnos.Nombres, Alumnos.ApellidoPaterno,Alumnos.ApellidoMaterno,Alumnos.Edad,Alumnos.Contacto FROM rel_AlumnoProyecto " +
                "INNER JOIN Alumnos ON rel_AlumnoProyecto.Matricula = Alumnos.Matricula " +
                "WHERE rel_AlumnoProyecto.id_proyecto = "+idProyecto;
            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datColeccion, "Datos");
            }


            conect.Close();

            return datColeccion;
        }

        public DataSet getImpactoPoyecto(int idProyecto)
        {
            conect.Open();
            DataSet datColeccion = new DataSet();

            String consulta = "  SELECT cat_Impacto.Nombre, relProyectoCat_Impacto.id_materia " +
                "FROM relProyectoCat_Impacto " +
                "INNER JOIN cat_Impacto ON relProyectoCat_Impacto.id_materia = cat_Impacto.id " +
                "WHERE relProyectoCat_Impacto.id_proyecto = " + idProyecto;


            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datColeccion, "Datos");
            }


            conect.Close();

            return datColeccion;
        }
        public bool existeMatricula(int matricula)
        {
            conect.Open();
            SqlDataReader tipos = null;
            String instruccion = "Select * from Alumnos where Matricula=" + matricula;
            SqlCommand comando = new SqlCommand(instruccion, conect);
            tipos = comando.ExecuteReader();

            if (tipos.Read())
            {
                conect.Close();
                return true;
            }
            conect.Close();
            return false;
        }

        public DataSet AlumnosLectores()
        {
            conect.Open();
            DataSet datColeccion = new DataSet();
            String consulta = "select * from UsuarioLectura";
            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datColeccion, "Datos");

            }


            conect.Close();

            return datColeccion;
        }

        public DataSet proyectosActivos()
        {
            conect.Open();
            DataSet datColeccion = new DataSet();
            String consulta = "Select id_proyecto from Proyectos where Estado=1 and EstadoAdmin='ACEPTADO'";
            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datColeccion, "Datos");

            }


            conect.Close();

            return datColeccion;
        }

        public DataSet proyectosInActivos()
        {
            conect.Open();
            DataSet datColeccion = new DataSet();
            String consulta = "Select id_proyecto from Proyectos where Estado=0";
            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datColeccion, "Datos");

            }


            conect.Close();

            return datColeccion;
        }

        public DataSet proyectosAlumnos(int matricula)
        {
            conect.Open();
            DataSet datColeccion = new DataSet();

            String consulta = "Select id_proyecto from rel_AlumnoProyecto where Matricula=" + matricula;
            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datColeccion, "Datos");

            }


            conect.Close();

            return datColeccion;

        }

       

        public DataSet PreDatosProyectos(String ids)
        {
            conect.Open();
            DataSet datColeccion = new DataSet();
            //id, nombre, Desc, avance, Asesor,Fecha	
            String consulta = "Select id_proyecto,Proyectos.Nombre,Descripcion,Avance, Administrativo.Nombre,Fecha, EstadoAdmin,Estado from Proyectos " +
                "INNER JOIN Administrativo ON Proyectos.Asesor=Administrativo.id " +
                "where id_proyecto IN (" + ids + ")";

            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datColeccion, "Datos");

            }

            conect.Close();

            return datColeccion;
        }

        public DataSet PreDatosProyectosInactivos(String ids)
        {
            conect.Open();
            DataSet datColeccion = new DataSet();
            //id, nombre, Desc, avance, Asesor,Fecha	
            String consulta = "Select id_proyecto,Proyectos.Nombre,Descripcion,Avance, Administrativo.Nombre,Fecha, EstadoAdmin,Estado,JustificionInactividad from Proyectos " +
                "INNER JOIN Administrativo ON Proyectos.Asesor=Administrativo.id " +
                "where id_proyecto IN (" + ids + ")";

            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datColeccion, "Datos");

            }

            conect.Close();

            return datColeccion;
        }

        public DataSet datosAlumno(int matricula)
        {
            conect.Open();
            DataSet datColeccion = new DataSet();
            //id, nombre, Desc, avance, Asesor,Fecha	
            String consulta = "Select * from Alumnos where Matricula='" + matricula + "'";

            SqlCommand sqlComman = new SqlCommand(consulta, conect);

            using (sqlComman)
            {
                sqlComman.CommandType = CommandType.Text;

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlComman);
                sqlDataAdapter.Fill(datColeccion, "Datos");

            }
            conect.Close();

            return datColeccion;

        }

        public bool existeRelacionMateria(int id_proyecto, int id_materia)
        {
            conect.Open();
            String consulta = "Select * from relProyectoCat_Impacto where id_proyecto=" + id_proyecto + " and id_materia=" + id_materia;
            SqlCommand comando = new SqlCommand(consulta, conect);
            SqlDataReader carreras = comando.ExecuteReader();
           
            if (carreras.Read()) { 
                conect.Close();
                return true;
                }

            conect.Close();

            return false;
        }

        public bool existeRelacionProyecto(int id_proyecto, int matricula)
        {
            conect.Open();
            String consulta = "Select * from rel_AlumnoProyecto where id_proyecto=" + id_proyecto + " and matricula=" + matricula;
            SqlCommand comando = new SqlCommand(consulta, conect);
            SqlDataReader proyectos = comando.ExecuteReader();
            if (proyectos.Read())
            {
                conect.Close();
                return true;
            }
            conect.Close();

            return false;
        }

    }
}