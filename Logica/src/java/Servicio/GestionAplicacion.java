/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servicio;

import Logica.Cuenta;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author William
 */
@WebService(serviceName = "GestionAplicacion")
public class GestionAplicacion {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "Login")
    public Cuenta operation(@WebParam(name = "usuario") String usuario, @WebParam(name = "clave") String clave) {
        //TODO write your implementation code here:
        Cuenta user = new Cuenta();
        user.consultar(usuario, clave);
        
        return user;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "Registrar")
    public boolean Registrar(@WebParam(name = "nombre") String nombre,@WebParam(name = "usuario") String usuario, @WebParam(name = "email") String email, @WebParam(name = "clave") String clave) {
        //TODO write your implementation code here:
        Cuenta nuevo = new Cuenta(nombre ,usuario, email, clave, 2,0,0);
        boolean flag  = nuevo.insertar();
        return flag;
    }
    
    /**
     * Web service operation
     */
    @WebMethod(operationName = "CrearUsuario")
    public boolean CrearUsuario(@WebParam(name = "nombre") String nombre,@WebParam(name = "usuario") String usuario, @WebParam(name = "email") String email, @WebParam(name = "clave") String clave) {
        //TODO write your implementation code here:
        Cuenta nuevo = new Cuenta(nombre ,usuario, "-", clave, 3,0,0);
         boolean flag  = nuevo.insertar();
        return flag;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ExisteUsuario")
    public boolean ExisteUsuario(@WebParam(name = "usuario") String usuario) {
        //TODO write your implementation code here:
        boolean flag  = Cuenta.existUser(usuario);
        return flag;
    }

}
