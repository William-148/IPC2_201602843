using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto1
{
    public partial class AdminPage : System.Web.UI.MasterPage
    {
        public static string nomUser = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            NombreUsuario.Text = nomUser;
            
            Compras.Width = 0;
            Compras.Height = 0;
            
            //Ventas.Visible = false;

        }
    }
}