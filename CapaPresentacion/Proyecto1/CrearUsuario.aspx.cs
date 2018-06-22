using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto1
{
    public partial class RegistrarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            JSPservice.GestionAplicacionClient nuevo = new JSPservice.GestionAplicacionClient();

            if (txtClave.Text == txtClave2.Text && !hayCamposVacios())
            {
                if (!nuevo.ExisteUsuario(txtUsuario.Text.Trim()))
                {
                    bool respuesta = nuevo.Registrar(txtNombre.Text.Trim(), txtUsuario.Text.Trim(), txtCorreo.Text.Trim(), txtClave.Text);
                    if (respuesta == true)
                    {
                        Response.Write("<script>alert('REGISTRO CORRECTO, INGRESE SUS DATOS PARA INICIAR SESION.')</script>");
                        Response.Redirect("Login.aspx");

                    }
                    else
                    {
                        Response.Write("<script>alert('REGISTRO INCORRECTO.')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('El USUARIO YA EXISTE')</script>");

                }
                
            }
            else
            {
                if (txtClave.Text == txtClave2.Text)
                {
                    Response.Write("<script>alert('HAY CAMPOS VACIOS.')</script>");
                }
                else
                {
                    Response.Write("<script>alert('LAS CONTRASEÑAS SON DIFERENTES.')</script>");
                }
            }
            
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            txtNombre.Text = "";
            txtCorreo.Dispose();
            txtUsuario.Text = "";
            txtClave.Text = "";
            txtClave2.Text = "";
            Response.Redirect("Login.aspx");
        }

        private bool hayCamposVacios()
        {
            if (txtNombre.Text == "" || txtUsuario.Text == "" ||
                txtCorreo.Text == "" || 
                txtClave.Text == "" || txtClave2.Text == "" )
            {
                return true;
            }
            else { return false; }
        }
    }
}