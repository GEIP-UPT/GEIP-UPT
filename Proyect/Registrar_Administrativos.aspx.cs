using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GEIP_UPT
{
    public partial class Registrar_Administrativos : System.Web.UI.Page
    {

        ManejoInserts manager = new ManejoInserts();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id_Admin"] == null)
            {
                Response.Redirect("Login_administrar.aspx");
            }

        }

        protected void btnRegAdmin_Click(object sender, EventArgs e)
        {
            try
            {
                string nombre = txtNombre.Text;
                string correo = txtCorreo.Text;
                string pass = txtPass.Text;
                string contacto = txtContacto.Text;
                string area = txtArea.Text;

                manager.guardarAdmin(nombre, correo, pass, contacto, area);
                Response.Redirect("Lectura_Administrativos.aspx");
            }catch(Exception ex)
            {
                modalText.Text = "Ha ocurrido un error, intentelo más tarde.";
                errorModal();
            }
        }

        protected void errorModal()
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "modalError", "$('#modalError').modal(); " +
                "$('#modalError').on('hidden.bs.modal', function(){" +
                "  location.href= 'Administracio.aspx' ; " +
                " }); ", true);
            upModal.Update();
        }
    }
}