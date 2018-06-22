
package Logica;
import java.sql.*;

public class Cuenta {
    
    public static  String url = "jdbc:postgresql://localhost:5432/sistemaerp";
    public static  String usuario = "postgres";
    public static  String password = "admin";
    
    private int idCuenta ;
    private String nombre;
    private String user;
    private String email;
    private String clave;
    private int tipo;
    private int cantidadUsuarios;
    private int costoTotalServicios;
    private int numeroTarjeta;
    private String expiracionTarjeta;
    private int seguridadTarjeta;
    private int idcuentaPadre;


    public Cuenta(int idCuenta, String nombre, String user,String email, String clave, int tipo, int cantidadUsuarios, int costoTotalServicios, int numeroTarjeta, String expiracionTarjeta, int seguridadTarjeta) {
        this.idCuenta = idCuenta;
        this.nombre = nombre;
        this.user = user;
        this.email = email; 
        this.clave = clave;
        this.tipo = tipo;
        this.cantidadUsuarios = cantidadUsuarios;
        this.costoTotalServicios = costoTotalServicios;
        this.numeroTarjeta = numeroTarjeta;
        this.expiracionTarjeta = expiracionTarjeta;
        this.seguridadTarjeta = seguridadTarjeta;
    }
    
    public Cuenta(String nombre,String user, String email, String clave, int tipo, int CantidadUsuario, int costoTotal){
        this.idCuenta = 0;
        this.nombre = nombre;
        this.user = user;
        this.email = email;
        this.clave = clave;
        this.tipo = tipo;
        this.cantidadUsuarios = CantidadUsuario;
        this.costoTotalServicios = costoTotal;
        this.numeroTarjeta = 0;
        this.expiracionTarjeta = "";
        this.seguridadTarjeta = 0;
        
    }
    
    public Cuenta(){
        this.idCuenta = 0;
        this.nombre = "";
        this.user = "";
        this.email = "";
        this.clave = "";
        this.tipo = 0;
        this.cantidadUsuarios = 0;
        this.costoTotalServicios = 0;
        this.numeroTarjeta = 0;
        this.expiracionTarjeta = "";
        this.seguridadTarjeta = 0;
        
    }
  
    
    public void consultar(String user, String password){
        
        try{
            Class.forName("org.postgresql.Driver");
            Connection conexion = DriverManager.getConnection(Cuenta.url, Cuenta.usuario, Cuenta.password);
            java.sql.Statement st = conexion.createStatement();
            
            String sql = "select * from cuenta where nombreusuario = '"+user+"' and clave = '"+password+"' ";
            ResultSet resultado = st.executeQuery(sql);
            
            if(resultado.next()){
                this.idCuenta = Integer.parseInt(resultado.getString("idCuenta"));
                this.nombre = resultado.getString("nombre");
                this.user = resultado.getString ("nombreusuario");
                this.email = resultado.getString("email");
                this.clave = resultado.getString("clave");
                this.tipo = Integer.parseInt(resultado.getString("tipo"));
                this.cantidadUsuarios = Integer.parseInt(resultado.getString("cantidadUsuarios"));
                this.costoTotalServicios = Integer.parseInt(resultado.getString("costoTotalServicios"));
                this.numeroTarjeta = Integer.parseInt(resultado.getString("numeroTarjeta"));
                this.seguridadTarjeta = Integer.parseInt(resultado.getString("seguridadTarjeta"));
                this.expiracionTarjeta = resultado.getString("expiracionTarjeta");
            }
            resultado.close();
            st.close();
            conexion.close();  
            
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
    
    public boolean insertar(){
        boolean flag = false;
        try{
            Class.forName("org.postgresql.Driver");
            Connection conexion = DriverManager.getConnection(Cuenta.url, Cuenta.usuario, Cuenta.password);
            java.sql.Statement st = conexion.createStatement();
            
            String sql = "insert into cuenta (nombre, nombreusuario ,email, clave, tipo, cantidadUsuarios, costototalservicios) \n" +
                         "values ('"+nombre+"', '"+user+"', '"+email+"' , '"+clave+"', '"+tipo+"','"+cantidadUsuarios+"','"+costoTotalServicios+"') ";
            flag = true;
            st.executeQuery(sql);        
            
            st.close();
            conexion.close();  
            
        }catch(Exception ex){
            System.out.println(ex.getMessage());
            
        }
        
        return flag;        
    }
    
    public static boolean existUser(String user){
        int exist = 0;
        try{
            Class.forName("org.postgresql.Driver");
            Connection conexion = DriverManager.getConnection(Cuenta.url, Cuenta.usuario, Cuenta.password);
            java.sql.Statement st = conexion.createStatement();
            
            String sql = "select count(nombreusuario) from cuenta "
                        + "where nombreusuario = '"+user+"'";
            ResultSet resultado = st.executeQuery(sql);
            
            if(resultado.next()){
                exist = Integer.parseInt(resultado.getString("count"));
            }
            resultado.close();
            st.close();
            conexion.close();  
            
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        if(exist == 0){
            return false;
        }else{
            return true;
        }        
    }
    
    
   
    
    public void imprimir(){
        
        System.out.println("id: "+idCuenta+"\n"
                            +"Nombre: "+nombre+"\n"
                            +"Usuario: "+nombre+"\n"
                            +"Email: "+email +"\n"
                            +"Clave: "+clave +"\n"
                            +"Tipo: "+tipo+"\n"
                            +"Cantidad Usuarios: "+cantidadUsuarios+"\n"
                            +"Costo Total: "+costoTotalServicios +"\n"
                            +"Tarjeta: "+numeroTarjeta +"\n"
                            +"Fecha: "+expiracionTarjeta +"\n"
                            +"Seguridad: "+seguridadTarjeta+"\n");
    }
 
    public String toString(){
        return"id: "+idCuenta+"\n"
                            +"Nombre: "+nombre+"\n"
                            +"Usuario: "+nombre+"\n"
                            +"Email: "+email +"\n"
                            +"Clave: "+clave +"\n"
                            +"Tipo: "+tipo+"\n"
                            +"Cantidad Usuarios: "+cantidadUsuarios+"\n"
                            +"Costo Total: "+costoTotalServicios +"\n"
                            +"Tarjeta: "+numeroTarjeta +"\n"
                            +"Fecha: "+expiracionTarjeta +"\n"
                            +"Seguridad: "+seguridadTarjeta+"\n" ;  
    }
        

    public int getIdCuenta() {
        return idCuenta;
    }

    public void setIdCuenta(int idCuenta) {
        this.idCuenta = idCuenta;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public int getCantidadUsuarios() {
        return cantidadUsuarios;
    }

    public void setCantidadUsuarios(int cantidadUsuarios) {
        this.cantidadUsuarios = cantidadUsuarios;
    }

    public int getCostoTotalServicios() {
        return costoTotalServicios;
    }

    public void setCostoTotalServicios(int costoTotalServicios) {
        this.costoTotalServicios = costoTotalServicios;
    }

    public int getNumeroTarjeta() {
        return numeroTarjeta;
    }

    public void setNumeroTarjeta(int numeroTarjeta) {
        this.numeroTarjeta = numeroTarjeta;
    }

    public String getExpiracionTarjeta() {
        return expiracionTarjeta;
    }

    public void setExpiracionTarjeta(String expiracionTarjeta) {
        this.expiracionTarjeta = expiracionTarjeta;
    }

    public int getSeguridadTarjeta() {
        return seguridadTarjeta;
    }

    public void setSeguridadTarjeta(int seguridadTarjeta) {
        this.seguridadTarjeta = seguridadTarjeta;
    }
    
        public int getIdcuentaPadre() {
        return idcuentaPadre;
    }

    public void setIdcuentaPadre(int idcuentaPadre) {
        this.idcuentaPadre = idcuentaPadre;
    }
    
}
