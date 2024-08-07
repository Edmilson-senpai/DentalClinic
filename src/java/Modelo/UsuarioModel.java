/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author reygr
 */
public class UsuarioModel {
    private String apellidos,correo,login,password,nombres;
    private int dni,idusuario,idrol;

    public UsuarioModel() {
    }

    public UsuarioModel(String apellidos, String correo, String login, String password, String nombres, int dni, int idusuario, int idrol) {
        this.apellidos = apellidos;
        this.correo = correo;
        this.login = login;
        this.password = password;
        this.nombres = nombres;
        this.dni = dni;
        this.idusuario = idusuario;
        this.idrol = idrol;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public int getIdrol() {
        return idrol;
    }

    public void setIdrol(int idrol) {
        this.idrol = idrol;
    }

    
    
}
