/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author reygr
 */
public class SedeModel {
    private String idsede,nombresede,direccionsede;
    private int telefonosede;

    public SedeModel(String idsede, String nombresede, String direccionsede, int telefonosede) {
        this.idsede = idsede;
        this.nombresede = nombresede;
        this.direccionsede = direccionsede;
        this.telefonosede = telefonosede;
    }

    public String getIdsede() {
        return idsede;
    }

    public void setIdsede(String idsede) {
        this.idsede = idsede;
    }

    public String getNombresede() {
        return nombresede;
    }

    public void setNombresede(String nombresede) {
        this.nombresede = nombresede;
    }

    public String getDireccionsede() {
        return direccionsede;
    }

    public void setDireccionsede(String direccionsede) {
        this.direccionsede = direccionsede;
    }

    public int getTelefonosede() {
        return telefonosede;
    }

    public void setTelefonosede(int telefonosede) {
        this.telefonosede = telefonosede;
    }
    
    

}
