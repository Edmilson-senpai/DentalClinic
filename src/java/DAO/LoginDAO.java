/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Modelo.UsuarioModel;
import BD.ConexionBD;
import java.sql.ResultSet;
import java.sql.*;

/**
 *
 * @author reygr
 */
public class LoginDAO {
    int rspta=0;
    String sql="";
    ResultSet rs = null;
    ConexionBD cn=new ConexionBD();
    public int validarLogin(UsuarioModel um) throws Exception{
        sql="SELECT IDROL AS ROL FROM USUARIO WHERE correo='"+um.getCorreo()+"' AND PASSWORD = '"+um.getPassword()+"'";
        System.out.println("Sentencia LoginDAO: " + sql);
        rs=cn.ejecutarConsulta(sql);
        while(rs.next()){
            rspta=rs.getInt("rol");
        }      
        System.out.println("Sentencia LoginDAO: " + rspta);
        return rspta;
        
    }
    
}
