using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace GEIP_UPT
{
    public partial class AlumnosLectores : System.Web.UI.Page
    {
        ConsultasBD cBD = new ConsultasBD();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id_Admin"] == null)
            {
                Response.Redirect("Login_administrar.aspx");
            }

            try
            {
                 DataSet datos = cBD.AlumnosLectores();
                 LlenarTabla(TablaLectores, datos);
            }
            catch (Exception ex)
            {
                modalText.Text = "Ha ocurrido un error, intentelo más tarde.";
                errorModal();
            }

        }
        public void LlenarTabla(Table tabla, DataSet datos)
        {
            if (datos.Tables[0].Rows.Count != 0)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "$('#alert').hide();", true);
                TablaLectores.Style.Add("display", "init");

                for (int i = 0; i < datos.Tables[0].Rows.Count; i++)
                {
                    TableRow tempRow = new TableRow();
                    for (int j = 0; j < datos.Tables[0].Columns.Count; j++)
                    {
                        TableCell tempCell = new TableCell();
                        tempCell.Text = datos.Tables[0].Rows[i][j].ToString();

                        tempRow.Cells.Add(tempCell);
                    }

                    tabla.Rows.Add(tempRow);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "$('#alert').show();", true);
                TablaLectores.Style.Add("display", "none");
            }

        }
        protected void errorModal()
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "modalError", "$('#modalError').modal(); " +
                "$('#modalError').on('hidden.bs.modal', function(){" +
                "  location.href= 'Administracion.aspx' ; " +
                " }); ", true);
            upModal.Update();
        }
    }
}