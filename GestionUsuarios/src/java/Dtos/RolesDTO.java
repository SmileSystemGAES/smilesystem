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
public class RolesDTO {
   protected int idRoles=0;
   protected String descripcion="";

    public RolesDTO(int idro, String desc) {
        this.idRoles=idro;
        this.descripcion=desc;
    }
   
   
   public RolesDTO() {
    }
   
   
   
    

    @Override
    public String toString() {
        return "RolesDTO{" + "idRoles=" + idRoles + ", descripcion=" + descripcion + '}';
    }

   
   
   
   
    public int getIdRoles() {
        return idRoles;
    }

    public void setIdRoles(int idRoles) {
        this.idRoles = idRoles;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
}
