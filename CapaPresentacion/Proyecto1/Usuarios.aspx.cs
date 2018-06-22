using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto1
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            /*
            if (clave1.Text == clave2.Text && !hayCamposVacios())
            {

                bool respuesta = UsuarioLN.getInstance().crearUsuario(getUsuario());
                if (respuesta == true)
                {
                    Response.Write("<script>alert('REGISTRO CORRECTO, INGRESE SUS DATOS PARA INICIAR SESION.')</script>");
                    Response.Redirect("Usuarios.aspx");
                }
                else
                {
                    Response.Write("<script>alert('REGISTRO INCORRECTO.')</script>");
                }
            }
            else
            {
                if (clave1.Text == clave2.Text)
                {
                    Response.Write("<script>alert('HAY CAMPOS VACIOS.')</script>");
                }
                else
                {
                    Response.Write("<script>alert('LAS CONTRASEÑAS SON DIFERENTES.')</script>");
                }
            }*/
        }

      

        private bool hayCamposVacios()
        {
            if (Nombre.Text == "" || fecha.Text == "" ||
                correo.Text == "" || usuario.Text == "" ||
                clave1.Text == "" || clave2.Text == "")
            {
                return true;
            }
            else { return false; }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Nombre.Text = "";
            fecha.Dispose();
            correo.Dispose();
            usuario.Text = "";
            clave1.Text = "";
            clave2.Text = "";
        }
    }
}