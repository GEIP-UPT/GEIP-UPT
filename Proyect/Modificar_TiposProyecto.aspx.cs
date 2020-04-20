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
    public partial class Modificar_TiposProyecto : System.Web.UI.Page
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

        protected void btnEditTiposProy_Click(object sender, EventArgs e)
        {
            txtTiposProy.Attributes.Add("value", txtTiposProy.Text);
            string id = Request.QueryString["id"];
            string NewTiposProy = txtTiposProy.Text;
            
            manager.updateTiposProy(NewTiposProy, Convert.ToInt32(id));
            MessageBox.Show("Modificado");
            Response.Redirect("Lectura_TiposProyecto.aspx");
        }

        public void Buscar(int id)
        {
            DataSet dsTiposProy = cC.getTiposProy(Convert.ToInt32(id));
            for (int i = 0; i < dsTiposProy.Tables[0].Rows.Count; i++)
            {
                txtTiposProy.Text = dsTiposProy.Tables[0].Rows[i]["Nombre"].ToString();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lectura_TiposProyecto.aspx");
        }
    }
}