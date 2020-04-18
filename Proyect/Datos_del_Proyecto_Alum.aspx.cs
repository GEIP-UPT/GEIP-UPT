using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Windows;

namespace GEIP_UPT
{
    public partial class Datos_del_Proyecto_Alum : System.Web.UI.Page
    {

        protected void Page_LoadComplete(object sender, EventArgs e)
        {
          

        }

     

        public void buscarProyectos(int matricula)
        {
            ConsultasBD cBD = new ConsultasBD();

        }

        protected void btnCargarTabla_Click(object sender, EventArgs e)
        {

            buscarProyectos(int.Parse(hf_matricula.Value));

            for (int rowNum = 2; rowNum < 10; rowNum++)
            {
                TableRow tempRow = new TableRow();
                for (int cellNum = 0; cellNum < 3; cellNum++)
                {
                    TableCell tempCell = new TableCell();
                    tempCell.Text =
                        String.Format((rowNum + "," + cellNum));
                    tempRow.Cells.Add(tempCell);
                }
                Table1.Rows.Add(tempRow);
            }
        }
    }
}