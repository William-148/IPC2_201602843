using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto1
{
    public partial class Page1 : System.Web.UI.MasterPage
    {
        public static string nomUser = "";
        public static Boolean existArtista = false;
        public static int id_artista = -1;

        protected void Page_Load(object sender, EventArgs e)
        {
            NombreUsuario.Text = nomUser;

            if (existArtista)
            {
                tabArtista.Text = "Artista";
            }
            else
            {
                tabArtista.Text = "Registrar Artista";
            }

            
        }
    }
}