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

        public void Registrar_Proyecto(String nombre, String tipo, String clasificacion, String avance,
            String programa, String asesor, String cuatrimestre, String impacto, String fechaFin, 
            String participacion, String recursos, String descripcion,
            String integrantes, String Edades, String contactolider)
        {
            //@nombre_proyecto varchar(500),
            //@tipo varchar(100),
            //@clasificacion varchar(100),
            //@avance varchar(100),
            //@programa varchar(100),
            //@asesor varchar(100),
            //@cuatrimestre varchar(50),
            //@impacto varchar(100),
            //@finalizacion date,
            //@participado_antes varchar(50),
            //@recursos_elaborar varchar(100),
            //@descripcion varchar(500),
            //@integrantes varchar(400),
            //@edades int,
            //@contactolider varchar(40)
            try
            {
                String instruccion = "EXEC insertar_proyecto @nombre_proyecto='" + nombre + "', @tipo='" + tipo + "'," +
                    "@clasificacion='" + clasificacion + "', @avance='" + avance + "', @programa='" + programa + "', @asesor='"+ asesor +
                    "', @cuatrimestre='" + cuatrimestre + "', @impacto='" + impacto + "', @finalizacion='" + fechaFin + "', " +
                    "@participado_antes='" + participacion + "', @recursos_elaborar='" + recursos + "', " +
                    "@descripcion='" + descripcion + "', @integrantes='" + integrantes + "', @edades='" + Edades + "'," +
                    "@contactolider='" + contactolider + "';";
                    ;

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
    }
}