using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GEIP_UPT
{
    public partial class Lectura_datos_alumnos_soloLectura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ConsultasBD cB = new ConsultasBD();
            SqlDataReader tipos = cB.getProyectosActivos();
            while (tipos.Read())
            {

                TableRow tempRow = new TableRow();

                TableCell tempCellNombre = new TableCell();
                tempCellNombre.Text = String.Format((tipos["Nombre"].ToString()));
                TableCell tempCellDescripcion = new TableCell();
                tempCellDescripcion.Text = String.Format((tipos["Descripcion"].ToString()));
                TableCell tempCellEstado = new TableCell();
                tempCellEstado.Text = tipos["Estado"].ToString().Equals("0")?"INACTIVO":"ACTIVO";
                   
                    tempRow.Cells.Add(tempCellNombre);
                    tempRow.Cells.Add(tempCellDescripcion);
                    tempRow.Cells.Add(tempCellEstado);
                
                tblProyectos.Rows.Add(tempRow);
            }
            cB.conect.Close();



            
        }
    }
}