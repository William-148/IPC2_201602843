
package Logica;

public class Servicio {
    private int idservicio;
    private String nombre;
    private double precioMensual;
    private double precioAnual;
    private int estado;
    private String mensaje;

    public Servicio(int idservicio, String nombre, double precioMensual, double precioAnual, int estado, String mensaje) {
        this.idservicio = idservicio;
        this.nombre = nombre;
        this.precioMensual = precioMensual;
        this.precioAnual = precioAnual;
        this.estado = estado;
        this.mensaje = mensaje;
    }
    
    public Servicio(){
        
    }
    
    public int getIdservicio() {
        return idservicio;
    }

    public void setIdservicio(int idservicio) {
        this.idservicio = idservicio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecioMensual() {
        return precioMensual;
    }

    public void setPrecioMensual(double precioMensual) {
        this.precioMensual = precioMensual;
    }

    public double getPrecioAnual() {
        return precioAnual;
    }

    public void setPrecioAnual(double precioAnual) {
        this.precioAnual = precioAnual;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
    
}
