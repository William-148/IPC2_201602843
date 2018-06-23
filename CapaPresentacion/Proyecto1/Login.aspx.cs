using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto1
{
    public partial class Login : System.Web.UI.Page
    {

        public static int AdminSistema = 1;
        public static int AdminServicio = 2;
        public static int CUsuario = 3;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {

            JSPservice.GestionAplicacionClient servicio = new JSPservice.GestionAplicacionClient();
            JSPservice.cuenta usuario = servicio.Login(txtUser.Text.Trim(),txtClave.Text.Trim());
                   
            if (usuario.idCuenta != 0 )
            {

                Session["Login"] = usuario;
                if (usuario.tipo == AdminSistema)
                {
                    
                }
                else if(usuario.tipo == AdminServicio)
                {
                    Response.Redirect("Tienda.aspx");

                }
                else if(usuario.tipo == CUsuario)
                {

                }
            }
        }
    }
}