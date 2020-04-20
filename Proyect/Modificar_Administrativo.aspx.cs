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
    public partial class Modificar_Administrativo : System.Web.UI.Page
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
            txtBuscAdmin.Text = parametro;

            if (!IsPostBack)
            {
                Buscar(Convert.ToInt32(parametro));

            }

        }

        protected void btnEditAdmin_Click(object sender, EventArgs e)
        {
            txtBuscAdmin.Attributes.Add("value", txtBuscAdmin.Text);
            string id = txtBuscAdmin.Text; 
            string NewNombre = txtNombre.Text;
            string NewCorreo = txtCorreo.Text;
            string NewPass = txtPass.Text;
            string NewCont = txtContacto.Text;
            string NewArea = txtArea.Text;
            string NewTipo = txtTipo.Text;

            manager.updateAdmin(NewNombre, NewCorreo, NewPass, NewCont, NewArea, NewTipo, Convert.ToInt32(id));

            Response.Redirect("Lectura_Administrativos.aspx");
        }

        public void Buscar(int id)
        {
            DataSet dsAdmin = cC.getAdm(Convert.ToInt32(id));
            for (int i = 0; i < dsAdmin.Tables[0].Rows.Count; i++)
            {
                txtNombre.Text = dsAdmin.Tables[0].Rows[i]["Nombre"].ToString();
                txtCorreo.Text = dsAdmin.Tables[0].Rows[i]["Correo"].ToString();
                txtPass.Text = dsAdmin.Tables[0].Rows[i]["Contrasena"].ToString();
                txtContacto.Text = dsAdmin.Tables[0].Rows[i]["Contacto"].ToString();
                txtArea.Text = dsAdmin.Tables[0].Rows[i]["Area"].ToString();
                txtTipo.Text = dsAdmin.Tables[0].Rows[i]["Tipo"].ToString();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lectura_Administrativos.aspx");
        }
    }
}