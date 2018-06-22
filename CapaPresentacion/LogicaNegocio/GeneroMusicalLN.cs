using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using AccesoDatos;

namespace LogicaNegocio
{
    public class GeneroMusicalLN
    {

        #region "PATRON SINGLETON"
        private static GeneroMusicalLN usuario = null;
        private GeneroMusicalLN() { }
        public static GeneroMusicalLN getInstance()
        {
            if (usuario == null)
            {
                usuario = new GeneroMusicalLN();
            }
            return usuario;
        }
        #endregion

        public bool crearGeneroMusical(GeneroMusical genero)
        {
            try
            {
                return GeneroMusicalDAO.getInstance().crearGeneroMusical(genero);

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


    }
}
