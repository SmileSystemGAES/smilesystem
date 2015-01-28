/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dtos;

/**
 *
 * @author Administrador
 */
public class OdontologosDTO  extends UsuariosDTO{
 private int idOdontologo=0;
 private int idJornada=0;
 private String tarjetaProfesional="";

  
 

    public OdontologosDTO(int idon, int idjo, String tapro) {
        this.idOdontologo=idon;
        this.idJornada=idjo;
        this.tarjetaProfesional=tapro;
    }
    
     public OdontologosDTO() {
    }
 
 

    @Override
    public String toString() {
        return "OdontologosDTO{" + "idOdontologo=" + idOdontologo + ", idJornada=" + idJornada + ", tarjetaProfesional=" + tarjetaProfesional + '}';
    }

    /**
     * @return the idOdontologo
     */
 
 
 
    public int getIdOdontologo() {
        return idOdontologo;
    }

    /**
     * @param idOdontologo the idOdontologo to set
     */
    public void setIdOdontologo(int idOdontologo) {
        this.idOdontologo = idOdontologo;
    }

    /**
     * @return the idJornada
     */
    public int getIdJornada() {
        return idJornada;
    }

    /**
     * @param idJornada the idJornada to set
     */
    public void setIdJornada(int idJornada) {
        this.idJornada = idJornada;
    }

    /**
     * @return the tarjetaProfesional
     */
    public String getTarjetaProfesional() {
        return tarjetaProfesional;
    }

    /**
     * @param tarjetaProfesional the tarjetaProfesional to set
     */
    public void setTarjetaProfesional(String tarjetaProfesional) {
        this.tarjetaProfesional = tarjetaProfesional;
    }
}
