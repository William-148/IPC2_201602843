using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto1
{
    public partial class RegistrarArtista : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page1.existArtista)
            {
                btnRegistrarA.Visible = true;
                btnActualizar.Visible = false;
                btnEliminar.Visible = false;
                btnVerAlbumes.Visible = false;
                btnPublicarAlbumes.Visible = false;
                formTitle.Text = "Registrar Artista";
            }
            else
            {
                btnRegistrarA.Visible = false;
                btnActualizar.Visible = true;
                btnEliminar.Visible = true;
                btnVerAlbumes.Visible = true;
                btnPublicarAlbumes.Visible = true;
                formTitle.Text = "Información del Artista";
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            btnRegistrarA.Visible = true;
            btnActualizar.Visible = false;
            btnEliminar.Visible = false;
            btnVerAlbumes.Visible = false;
            btnPublicarAlbumes.Visible = false;
            Page1.existArtista = false;

            formTitle.Text = "Registrar Artista";

        }

        protected void btnRegistrarA_Click(object sender, EventArgs e)
        {
            btnRegistrarA.Visible = false;
            btnActualizar.Visible = true;
            btnEliminar.Visible = true;
            btnVerAlbumes.Visible = true;
            btnPublicarAlbumes.Visible = true;
            Page1.existArtista = true;
            formTitle.Text = "Información del Artista";
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {

        }

        protected void btnVerAlbumes_Click(object sender, EventArgs e)
        {

            Response.Redirect("publicarAlbum.aspx");
        }

        protected void btnPublicarAlbumes_Click(object sender, EventArgs e)
        {
            Response.Redirect("verAlbumes.aspx");
        }
    }
}