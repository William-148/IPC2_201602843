using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;

namespace AccesoDatos
{
    public class GeneroMusicalDAO
    {
        #region "PATRON SINGLETON"

        private static GeneroMusicalDAO usuarioDao = null;
        private GeneroMusicalDAO() { }
        public static GeneroMusicalDAO getInstance()
        {
            if (usuarioDao == null)
            {
                usuarioDao = new GeneroMusicalDAO();
            }
            return usuarioDao;
        }
        #endregion

        public bool crearGeneroMusical(GeneroMusical genero)
        {
            SqlConnection con = null;
            SqlCommand cmd = null;
            bool respuesta = false;
            try
            {
                con = Conexion.getInstance().conexionBd();
                cmd = new SqlCommand("BD_CrearGenero", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmNombre", genero.nombre);
                cmd.Parameters.AddWithValue("@prmFoto", genero.imagen);
                con.Open();

                int filas = cmd.ExecuteNonQuery();
                if (filas > 0)
                {
                    respuesta = true;
                }

            }
            catch (Exception ex)
            {
                respuesta = false;
                throw ex;

            }
            finally
            {
                con.Close();
            }
            return respuesta;
        }

    }
}
