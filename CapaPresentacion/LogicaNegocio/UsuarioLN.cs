using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDatos;
using Entidades;

namespace LogicaNegocio
{
    public class UsuarioLN
    {
        #region "PATRON SINGLETON"
        private static UsuarioLN usuario = null;
        private UsuarioLN() { }
        public static UsuarioLN getInstance()
        {
            if (usuario == null)
            {
                usuario = new UsuarioLN();
            }
            return usuario;
        }
        #endregion

        public Usuario accesoSitema(string usuario, string password)
        {
            try
            {
                return UsuarioDAO.getInstance().accesoSitema(usuario, password);
            }
            catch (Exception ex) {
                throw ex;
            }
        }

        public bool crearUsuario(Usuario usuario)
        {
            try
            {
                return UsuarioDAO.getInstance().crearUsuario(usuario);

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
