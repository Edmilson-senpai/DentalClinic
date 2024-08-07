/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author reygr
 */
public class ClienteModel {
    private String clientenombre,clienteapellido,clientedireccion;
    private int clientedni,clientetelefono;

    public ClienteModel() {
    }

    public ClienteModel(String clientenombre, String clienteapellido, String clientedireccion, int clientedni, int clientetelefono) {
        this.clientenombre = clientenombre;
        this.clienteapellido = clienteapellido;
        this.clientedireccion = clientedireccion;
        this.clientedni = clientedni;
        this.clientetelefono = clientetelefono;
    }

    public String getClientenombre() {
        return clientenombre;
    }

    public void setClientenombre(String clientenombre) {
        this.clientenombre = clientenombre;
    }

    public String getClienteapellido() {
        return clienteapellido;
    }

    public void setClienteapellido(String clienteapellido) {
        this.clienteapellido = clienteapellido;
    }

    public String getClientedireccion() {
        return clientedireccion;
    }

    public void setClientedireccion(String clientedireccion) {
        this.clientedireccion = clientedireccion;
    }

    public int getClientedni() {
        return clientedni;
    }

    public void setClientedni(int clientedni) {
        this.clientedni = clientedni;
    }

    public int getClientetelefono() {
        return clientetelefono;
    }

    public void setClientetelefono(int clientetelefono) {
        this.clientetelefono = clientetelefono;
    }
    
    
    
}
