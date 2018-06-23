
package Logica;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ServicioDAO {
    
    ArrayList<Servicio> lista = new ArrayList<Servicio>();
    
    public ServicioDAO(){
        
    }
    
    public ArrayList<Servicio> getServicios(){
         try{
            Class.forName("org.postgresql.Driver");
            Connection conexion = DriverManager.getConnection(Cuenta.url, Cuenta.usuario, Cuenta.password);
            java.sql.Statement st = conexion.createStatement();
            
            String sql = "select * from servicio order by idservicio";
            ResultSet resultado = st.executeQuery(sql);
            
            while(resultado.next()){
                
                Servicio servicio = new Servicio();
                servicio.setIdservicio(Integer.parseInt(resultado.getString("idservicio")));
                servicio.setNombre(resultado.getString("nombre"));
                servicio.setPrecioMensual(Double.parseDouble(resultado.getString("preciomensual")));
                servicio.setPrecioAnual(Double.parseDouble(resultado.getString("precioanual")));
                servicio.setEstado(Integer.parseInt(resultado.getString("estado")));
                servicio.setMensaje(resultado.getString("mensaje"));
                
                lista.add(servicio);
            }
            resultado.close();
            st.close();
            conexion.close();  
            
        }catch(Exception ex){
            System.out.println(ex.getMessage());
            lista.clear();
        }
        
        return lista;
    }
}
