/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author reygr
 */
public class HistoriaClinicaModel {
    private int dni_cliente_historia;
    private int idrol, idhistoria;
    private String descripcion;

    public HistoriaClinicaModel() {
    }

    public HistoriaClinicaModel(int dni_cliente_historia, int idrol, int idhistoria, String descripcion) {
        this.dni_cliente_historia = dni_cliente_historia;
        this.idrol = idrol;
        this.idhistoria = idhistoria;
        this.descripcion = descripcion;
    }

    public int getIdhistoria() {
        return idhistoria;
    }

    public void setIdhistoria(int idhistoria) {
        this.idhistoria = idhistoria;
    }

   

    public int getIdrol() {
        return idrol;
    }

    public void setIdrol(int idrol) {
        this.idrol = idrol;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getDni_cliente_historia() {
        return dni_cliente_historia;
    }

    public void setDni_cliente_historia(int dni_cliente_historia) {
        this.dni_cliente_historia = dni_cliente_historia;
    }
    
    
    
    
}
