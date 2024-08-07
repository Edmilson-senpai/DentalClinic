/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author reygr
 */
public class MetodosSQL {

    private Connection conexion;
    private PreparedStatement sentenciaPreparada;
    private ResultSet resultado;

    //igual orden de la bd.
    public boolean registrarUsuario(String nombres, String apellidos, String login, String password, String correo,
            String dni, String idrol, String direccion, int celular) {
        boolean registro = false;

        try {
            conexion = ConexionBD.conectar();
            String consulta = "INSERT INTO usuario (nombres,apellidos,login,password,correo,dni,idrol,direccion,celular) VALUES (?,?,?,?,?,?,?,?,?)";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, nombres);
            sentenciaPreparada.setString(2, apellidos);
            sentenciaPreparada.setString(3, login);
            sentenciaPreparada.setString(4, password);
            sentenciaPreparada.setString(5, correo);
            sentenciaPreparada.setString(6, dni);
            sentenciaPreparada.setString(7, idrol);
            sentenciaPreparada.setString(8, direccion);
            sentenciaPreparada.setInt(9, celular);

            int resultadoInsercion = sentenciaPreparada.executeUpdate();

            if (resultadoInsercion > 0) {
                registro = true; // Usuario se registró.
                System.out.println("Se registró el usuario");
            } else {
                registro = false; // Usuario no se registró.
                System.out.println("No se registró el usuario");
            }

            conexion.close();

        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }

        System.out.println("Valor del registro: " + registro);
        return registro;
    }    
    //igual orden de la bd.
    public boolean registrarCliente(int clientedni, String clientenombre, String clienteapellido, int clientetelefono, String clientecorreo, String clientedireccion){
        boolean registrocliente = false;

        try {
            conexion = ConexionBD.conectar();
            String consultaregistrocliente = "INSERT INTO cliente (clientedni,clientenombre,clienteapellido,clientetelefono,clientecorreo,clientedireccion) VALUES (?,?,?,?,?,?)";
            sentenciaPreparada = conexion.prepareStatement(consultaregistrocliente);
            sentenciaPreparada.setInt(1, clientedni);
            sentenciaPreparada.setString(2, clientenombre);
            sentenciaPreparada.setString(3, clienteapellido);
            sentenciaPreparada.setInt(4, clientetelefono);
            sentenciaPreparada.setString(5, clientecorreo);
            sentenciaPreparada.setString(6, clientedireccion);

            int resultadoInsercionCliente = sentenciaPreparada.executeUpdate();

            if (resultadoInsercionCliente > 0) {
                registrocliente = true; // Cliente se registró.
                System.out.println("Se registró el cliente");
            } else {
                registrocliente = false; // Cliente no se registró.
                System.out.println("No se registró el cliente");
            }

            conexion.close();

        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }

        System.out.println("Valor del registro: " + registrocliente);
        return registrocliente;
    }    
    
    public boolean buscarUsuarioInicioSesion(String correo, String password){
    
        boolean iniciarSesion = false;
        
        try {
            conexion = ConexionBD.conectar();
            String consulta = "SELECT correo,password FROM usuario WHERE correo = ? AND password = ? ";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, correo);
            sentenciaPreparada.setString(2, password);
            resultado = sentenciaPreparada.executeQuery();
            
            if(resultado.next()){
                iniciarSesion = true; // El usuario puede iniciar sesión porque está registrado en la BD.
            }else{
                iniciarSesion = false; // El usuario no puede iniciar sesión porque no está registrado en la BD.
            }
            
            conexion.close();
            
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }finally{
        
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }
        
        System.out.println("El valor de IniciarSesión en el metodo es: " + iniciarSesion);
        return iniciarSesion;
                
    }
    
    public String buscarCliente(int dni){
        String nombres = null;
        String apellidos = null;
        String cliente = null;
        
        try {
            conexion = ConexionBD.conectar();
            String consulta = "SELECT clientenombre,clienteapellido FROM cliente WHERE clientedni = ?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setInt(1, dni);
            resultado = sentenciaPreparada.executeQuery();
            
            if(resultado.next()){ //El cliente fue encontrado y obtenemos el nombre
                nombres = resultado.getString("clientenombre");
                apellidos = resultado.getString("clienteapellido");
                cliente = nombres + ' ' + apellidos;
            }else{
                nombres = null; //El usuario no se encontró y no obtenemos el nombre 
                apellidos = null;
                cliente = null;
            }
            conexion.close();
            
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }finally{
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }
         
        System.out.println("El valor del nombre en los metodos SQL es: " + cliente);
        return cliente;
        
    }       
        
    public String buscarNombre(String usuario){
        String nombres = null;
        
        try {
            conexion = ConexionBD.conectar();
            String consulta = "SELECT nombres FROM usuario WHERE correo = ?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, usuario);
            resultado = sentenciaPreparada.executeQuery();
            
            if(resultado.next()){ //El usuario fue encontrado y obtenemos el nombre
                nombres = resultado.getString("nombres");
            }else{
                nombres = null; //El usuario no se encontró y no obtenemos el nombre                
            }
            conexion.close();
            
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }finally{
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }
         
        System.out.println("El valor del nombre en los metodos SQL es: " + nombres);
        return nombres;
        
    }   
    
    public String buscarApellido(String usuario){
        String apellidos = null;
        
        try {
            conexion = ConexionBD.conectar();
            String consulta = "SELECT apellidos FROM usuario WHERE correo = ?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, usuario);
            resultado = sentenciaPreparada.executeQuery();
            
            if(resultado.next()){ //El usuario fue encontrado y obtenemos el nombre
                apellidos = resultado.getString("apellidos");
            }else{
                apellidos = null; //El usuario no se encontró y no obtenemos el nombre                
            }
            conexion.close();
            
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }finally{
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }
         
        System.out.println("El valor del nombre en los metodos SQL es: " + apellidos);
        return apellidos;
        
    }    
    
    public boolean eliminarUsuario(int idusuario) {
        boolean eliminacion = false;

        try {
            conexion = ConexionBD.conectar();
            String consulta = "DELETE FROM usuario WHERE idusuario=" + idusuario;
            System.out.println("Query: " + consulta);
            sentenciaPreparada = conexion.prepareStatement(consulta);
            //sentenciaPreparada.setString(1, dni);

            int resultadoEliminacion = sentenciaPreparada.executeUpdate();
            System.out.println("Resultado: " + resultadoEliminacion);
            if (resultadoEliminacion > 0) {
                eliminacion = true; // Usuario se eliminó.
                System.out.println("Se eliminó el usuario");
            } else {
                eliminacion = false; // Usuario no se eliminó.
                System.out.println("No se eliminó el usuario");
            }

            conexion.close();

        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }

        System.out.println("Valor del registro: " + eliminacion);

        return eliminacion;
    }    

    public boolean eliminarCliente(int cliente_dni) {
        boolean eliminacion = false;

        try {
            conexion = ConexionBD.conectar();
            String consulta = "DELETE FROM cliente WHERE clientedni=" + cliente_dni;
            System.out.println("Query: " + consulta);
            sentenciaPreparada = conexion.prepareStatement(consulta);
            //sentenciaPreparada.setString(1, dni);

            int resultadoEliminacion = sentenciaPreparada.executeUpdate();
            System.out.println("Resultado: " + resultadoEliminacion);
            if (resultadoEliminacion > 0) {
                eliminacion = true; // Usuario se eliminó.
                System.out.println("Se eliminó el usuario");
            } else {
                eliminacion = false; // Usuario no se eliminó.
                System.out.println("No se eliminó el usuario");
            }

            conexion.close();

        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }

        System.out.println("Valor del registro: " + eliminacion);

        return eliminacion;
    }        
    
    public boolean actualizarUsuario(int idusuario, String nombres, String apellidos, String dni, int celular, String direccion) {
        boolean actualizacion = false;

        try {
            conexion = ConexionBD.conectar();
            String consulta = "UPDATE usuario SET nombres ='"+ nombres + 
                                                "',apellidos='"+ apellidos +
                                                "',dni='"+ dni +
                                                "',celular="+ celular +
                                                ",direccion='"+ direccion + "' WHERE idusuario=" +idusuario;
            System.out.println("Query: " + consulta);
            sentenciaPreparada = conexion.prepareStatement(consulta);
            //sentenciaPreparada.setString(1, nombres);
            //sentenciaPreparada.setString(2, apellidos);
            //sentenciaPreparada.setString(3, dni);
            //sentenciaPreparada.setString(4, direccion);
            //sentenciaPreparada.setInt(5, celular);
            //sentenciaPreparada.setInt(6, idusuario);

            int resultadoEliminacion = sentenciaPreparada.executeUpdate();
            System.out.println("Resultado: " + resultadoEliminacion);
            if (resultadoEliminacion > 0) {
                actualizacion = true; // Usuario se actualizó.
                System.out.println("Se actualizó el usuario");
            } else {
                actualizacion = false; // Usuario no se aztualizó.
                System.out.println("No se actualizó el usuario");
            }

            conexion.close();

        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }

        System.out.println("Valor del registro: " + actualizacion);

        return actualizacion;
    }   
    
    public boolean actualizarCliente(int clientedni, String clientenombre, String clienteapellido, int clientetelefono, String clientecorreo, String clientedireccion) {
        boolean actualizacion = false;
        int clientedniold = clientedni;
        try {
            conexion = ConexionBD.conectar();
            String consulta = "UPDATE cliente SET clientenombre ='"+ clientenombre + 
                                                "',clienteapellido='"+ clienteapellido +
                                                "',clientecorreo='"+ clientecorreo +
                                                "',clientetelefono="+ clientetelefono +
                                                ",clientedireccion='"+ clientedireccion + "' WHERE clientedni=" +clientedni;
            System.out.println("dni original: " + clientedniold);
            System.out.println("Query: " + consulta);
            sentenciaPreparada = conexion.prepareStatement(consulta);
            //sentenciaPreparada.setString(1, nombres);
            //sentenciaPreparada.setString(2, apellidos);
            //sentenciaPreparada.setString(3, dni);
            //sentenciaPreparada.setString(4, direccion);
            //sentenciaPreparada.setInt(5, celular);
            //sentenciaPreparada.setInt(6, idusuario);

            int resultadoEliminacion = sentenciaPreparada.executeUpdate();
            System.out.println("Resultado: " + resultadoEliminacion);
            if (resultadoEliminacion > 0) {
                actualizacion = true; // Usuario se actualizó.
                System.out.println("Se actualizó el cliente");
            } else {
                actualizacion = false; // Usuario no se aztualizó.
                System.out.println("No se actualizó el cliente");
            }

            conexion.close();

        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }

        System.out.println("Valor del registro: " + actualizacion);

        return actualizacion;
    }   
    
    public boolean actualizarHistoriaClinica(int idhistoria, String servicio_historia, String comentario_1_historia, String comentario_2_historia, String observacion_historia) {
        boolean actualizacion = false;

        try {
            conexion = ConexionBD.conectar();
            String consulta = "UPDATE historiaclinica SET servicio_historia ='"+ servicio_historia + 
                                                "',comentario_1_historia='"+ comentario_1_historia +
                                                "',comentario_2_historia='"+ comentario_2_historia +
                                                "',observacion_historia='"+ observacion_historia +
                                                "' WHERE idhistoria=" +idhistoria;
            System.out.println("codigohistoria: " + idhistoria);
            System.out.println("Query: " + consulta);
            sentenciaPreparada = conexion.prepareStatement(consulta);
            //sentenciaPreparada.setString(1, nombres);
            //sentenciaPreparada.setString(2, apellidos);
            //sentenciaPreparada.setString(3, dni);
            //sentenciaPreparada.setString(4, direccion);
            //sentenciaPreparada.setInt(5, celular);
            //sentenciaPreparada.setInt(6, idusuario);

            int resultadoEliminacion = sentenciaPreparada.executeUpdate();
            System.out.println("Resultado: " + resultadoEliminacion);
            if (resultadoEliminacion > 0) {
                actualizacion = true; // Usuario se actualizó.
                System.out.println("Se actualizó la historia");
            } else {
                actualizacion = false; // Usuario no se aztualizó.
                System.out.println("No se actualizó la historia");
            }

            conexion.close();

        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }

        System.out.println("Valor del registro: " + actualizacion);

        return actualizacion;
    }       
    
    public boolean registrarHistoriaClinica(String dni_cliente_historia,String nombre_cliente_historia, String apellido_cliente_historia,
            String servicio_historia,String comentario_1_historia,String comentario_2_historia,String observacion_historia) {
        boolean registro = false;

        try {
            conexion = ConexionBD.conectar();
            String consulta = "INSERT INTO historiaclinica (dni_cliente_historia,nombre_cliente_historia,apellido_cliente_historia,servicio_historia,comentario_1_historia,comentario_2_historia,observacion_historia) VALUES (?,?,?,?,?,?,?)";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, dni_cliente_historia);
            sentenciaPreparada.setString(2, nombre_cliente_historia);
            sentenciaPreparada.setString(3, apellido_cliente_historia);
            sentenciaPreparada.setString(4, servicio_historia);
            sentenciaPreparada.setString(5, comentario_1_historia);
            sentenciaPreparada.setString(6, comentario_2_historia);
            sentenciaPreparada.setString(7, observacion_historia);

            int resultadoInsercion = sentenciaPreparada.executeUpdate();

            if (resultadoInsercion > 0) {
                registro = true; // Usuario se registró.
                System.out.println("Se registró la historia");
            } else {
                registro = false; // Usuario no se registró.
                System.out.println("No se registró la historia");
            }

            conexion.close();

        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }

        System.out.println("Valor del registro: " + registro);
        return registro;
    }     
    public boolean eliminarHistoria(int idhistoria) {
        boolean eliminacion = false;

        try {
            conexion = ConexionBD.conectar();
            String consulta = "DELETE FROM historiaclinica WHERE idhistoria=" + idhistoria;
            System.out.println("Query: " + consulta);
            sentenciaPreparada = conexion.prepareStatement(consulta);
            //sentenciaPreparada.setString(1, dni);

            int resultadoEliminacion = sentenciaPreparada.executeUpdate();
            System.out.println("Resultado: " + resultadoEliminacion);
            if (resultadoEliminacion > 0) {
                eliminacion = true;
                System.out.println("Se eliminó la historia");
            } else {
                eliminacion = false; 
                System.out.println("No se eliminó la historia");
            }

            conexion.close();

        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }

        System.out.println("Valor del registro: " + eliminacion);

        return eliminacion;
    }        
    
}
