using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace GEIP_UPT
{
    public partial class Modificar_Programas : System.Web.UI.Page
    {
        ConsultasCatalogos cC = new ConsultasCatalogos();
        ManejoInserts manager = new ManejoInserts();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idAdmin"] == null)
            {
                Response.Redirect("Login_administrar.aspx");
            }

            string parametro = Request.QueryString["id"];
            parametro = HttpUtility.UrlEncode(parametro);

            if (!IsPostBack)
            {
                Buscar(Convert.ToInt32(parametro));

            }

        }

        protected void btnEditProy_Click(object sender, EventArgs e)
        {
            txtProy.Attributes.Add("value", txtProy.Text);
            string id = Request.QueryString["id"];
            string NewProyecto = txtProy.Text;
            
            manager.updateProgramas(NewProyecto, Convert.ToInt32(id));
            Response.Redirect("Lectura_Programas.aspx");
        }

        public void Buscar(int id)
        {
            DataSet dsProyecto = cC.getPrograma(Convert.ToInt32(id));
            for (int i = 0; i < dsProyecto.Tables[0].Rows.Count; i++)
            {
                txtProy.Text = dsProyecto.Tables[0].Rows[i]["Nombre"].ToString();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lectura_Programas.aspx");
        }
    }
}