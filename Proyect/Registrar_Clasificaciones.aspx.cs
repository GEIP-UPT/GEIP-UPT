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
    public partial class Registrar_Clasificaciones : System.Web.UI.Page
    {

        ManejoInserts manager = new ManejoInserts();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id_Admin"] == null)
            {
                Response.Redirect("Login_administrar.aspx");
            }

        }

        protected void btnRegClasif_Click(object sender, EventArgs e)
        {
            try
            {
                string clasif = txtClasif.Text;

                manager.guardarClasif(clasif);
                Response.Redirect("Lectura_Clasificaciones.aspx");
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
                "  location.href= 'Administracion.aspx' ; " +
                " }); ", true);
            upModal.Update();
        }
    }
}