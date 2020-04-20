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
    public partial class Modificar_Carrera : System.Web.UI.Page
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

            if(!IsPostBack)
                Buscar(Convert.ToInt32(parametro));

        }

        protected void btnEditCarrera_Click(object sender, EventArgs e)
        {
            txtCarrera.Attributes.Add("value", txtCarrera.Text);
            string parametro = Request.QueryString["id"];
            parametro = HttpUtility.UrlEncode(parametro);

            string id = parametro;
            string NewCarrera = txtCarrera.Text;
            
            manager.updateCarrera(NewCarrera, Convert.ToInt32(id));

            Response.Redirect("Lectura_Carreras.aspx");
        }

        public void Buscar(int id)
        {
            DataSet dsCarrera = cC.getCarrera(Convert.ToInt32(id));
            for (int i = 0; i < dsCarrera.Tables[0].Rows.Count; i++)
            {
                txtCarrera.Text = dsCarrera.Tables[0].Rows[i]["carrera"].ToString();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lectura_Carreras.aspx");
        }
    }
}