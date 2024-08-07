/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import BD.ConexionBD;
import BD.MetodosSQL;
import Modelo.ClienteModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author reygr
 */
public class ClienteDAO {
    ConexionBD cn = new ConexionBD();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public ClienteModel buscar(int dni){
        ClienteModel c = new ClienteModel();
        String sql="Select * from cliente where clientedni=" + dni;
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                c.setClientedni(rs.getInt(1));
                c.setClientenombre(rs.getString(2));
                c.setClienteapellido(rs.getString(3));
                c.setClientedireccion(rs.getString(4));
                
            }
        } catch (Exception e) {
        }
        return c;
    }
    
}
