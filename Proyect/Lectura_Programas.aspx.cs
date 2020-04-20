﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace GEIP_UPT
{
    public partial class Lectura_Programas : System.Web.UI.Page
    {

        ConsultasCatalogos cC = new ConsultasCatalogos();
        ManejoInserts manager = new ManejoInserts();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin_ID"] != null)
            {
            
            ConsultarProgramas();

            }
            else
                Response.Redirect("Login_administrar.aspx");


        }


        public void ConsultarProgramas()
        {

            DataSet dsProgramas = cC.getProgramas();
            if (dsProgramas.Tables[0].Rows.Count > 0)
            {
                LlenarTabla(tblProgramas, dsProgramas);
            }
            else
            {
                //Mensaje("NO SE ENCONTRARON REGISTROS", "alert alert-danger");
            }




        }

        public void LlenarTabla(Table tabla, DataSet datos)
        {
            for (int i = 0; i < datos.Tables[0].Rows.Count; i++)
            {
                TableRow tempRow = new TableRow();
                for (int j = 0; j < datos.Tables[0].Columns.Count; j++)
                {
                    TableCell tempCell = new TableCell();
                    tempCell.Text = datos.Tables[0].Rows[i][j].ToString();
                    tempRow.Cells.Add(tempCell);
                }


                string id = datos.Tables[0].Rows[i]["id"].ToString();
                TableCell tempCellView = new TableCell();


                Literal ltbr = new Literal();
                ltbr.Text = "<a href='Modificar_Programas.aspx?id=" + id + "' class='btn btn-info'  >Modificar</a>";
                tempCellView.Controls.Add(ltbr);
                tempCellView.CssClass = "text-center";
                tempCellView.Style.Add("vertical-align", "middle");


                tempRow.Cells.Add(tempCellView);
                tabla.Rows.Add(tempRow);

               

            }
        }

        
    }
}