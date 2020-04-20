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
    public partial class Modificar_Clasificaciones : System.Web.UI.Page
    {
        ConsultasCatalogos cC = new ConsultasCatalogos();
        ManejoInserts manager = new ManejoInserts();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id_Admin"] == null)
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

        protected void btnEditClasif_Click(object sender, EventArgs e)
        {
            txtClasif.Attributes.Add("value", txtClasif.Text);
            string id = Request.QueryString["id"];
            string NewClasif = txtClasif.Text;
            
            manager.updateClasif(NewClasif, Convert.ToInt32(id));
            MessageBox.Show("Modificado");
            Response.Redirect("Lectura_Clasificaciones.aspx");
        }

        public void Buscar(int id)
        {
            DataSet dsClasif = cC.getClas(Convert.ToInt32(id));
            for (int i = 0; i < dsClasif.Tables[0].Rows.Count; i++)
            {
                txtClasif.Text = dsClasif.Tables[0].Rows[i]["Nombre"].ToString();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lectura_Clasificaciones.aspx");
        }
    }
}