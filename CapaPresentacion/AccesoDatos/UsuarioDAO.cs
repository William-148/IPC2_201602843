using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;


namespace AccesoDatos
{
    public class UsuarioDAO
    {
        #region "PATRON SINGLETON"

        private static UsuarioDAO usuarioDao = null;
        private UsuarioDAO() { }
        public static UsuarioDAO getInstance()
        {
            if (usuarioDao == null)
            {
                usuarioDao = new UsuarioDAO();
            }
            return usuarioDao;
        }
        #endregion

        public Usuario accesoSitema(string usuario, string password)
        {
            SqlConnection conexion = null;
            SqlCommand cmd = null;
            Usuario user = null;
            SqlDataReader dr = null;

            try
            {
                conexion = Conexion.getInstance().conexionBd();
                cmd = new SqlCommand("BD_Login", conexion);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmUser",usuario);
                cmd.Parameters.AddWithValue("@prmPass", password);
                conexion.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    user = new Usuario();
                    user.ID = Convert.ToInt32(dr["id_Usuario"].ToString());
                    user.nombre = dr["Nombre"].ToString();
                    user.usuario = dr["Usuario"].ToString();
                    user.password = dr["Contraseña"].ToString();
                    user.tipo = Convert.ToInt32(dr["id_Tipo de Usuario"].ToString());
                    user.artista = dr["id_Artista"].ToString();
                }
            }
            catch (Exception ex)
            {
                user = null;
            }
            finally
            {
                conexion.Close();
            }
            return user;
        }

        public bool crearUsuario(Usuario usuario)
        {
            SqlConnection con = null;
            SqlCommand cmd = null;
            bool respuesta = false;
            try
            {
                con = Conexion.getInstance().conexionBd();
                cmd = new SqlCommand("BD_CrearUsuario", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmNombre",usuario.nombre);
                cmd.Parameters.AddWithValue("@prmFecha", usuario.fechaNacimiento);
                cmd.Parameters.AddWithValue("@prmCorreo", usuario.correo);
                cmd.Parameters.AddWithValue("@prmUsuario", usuario.usuario);
                cmd.Parameters.AddWithValue("@prmClave", usuario.password);
                cmd.Parameters.AddWithValue("@prmTipoUsuario", usuario.tipo);
                cmd.Parameters.AddWithValue("@prmFechaCreacion", usuario.fechaCreado);
                con.Open();

                int filas = cmd.ExecuteNonQuery();
                if (filas > 0)
                {
                    respuesta = true;
                }

            }catch(Exception ex){
                respuesta = false;
                throw ex;

            }finally
            {
                con.Close();
            }
            return respuesta;
        }
    }
}
