using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuario
    {
        public int ID { get; set; }
        public string nombre { get; set; }
        public string fechaNacimiento { get; set; }
        public string correo { get; set; }
        public string usuario { get; set; }
        public string password { get; set; }
        public string artista { get; set; }
        public int tipo { get; set; }
        public string fechaCreado { set; get; }

        public Usuario() { }

        public Usuario(int ID, string nombre, string fechaNacimiento, string correo, string usuario, string password,int tipo)
        {
            this.ID = ID;
            this.nombre = nombre;
            this.fechaNacimiento = fechaNacimiento;
            this.correo = correo;
            this.usuario = usuario;
            this.password = password;
            this.tipo = tipo;
        }

        public Boolean existeArtista()
        {
            return artista != null;
        }
        
       
    }
}
