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
public class RolPermisoDTO {
    private int idRolPermiso=0;
    private int idPermiso=0;

    public RolPermisoDTO(int idrp, int  idpe) {
        this.idRolPermiso=idrp;
        this.idPermiso=idpe;
    }
    
    
     public RolPermisoDTO() {
    }
     
    

    @Override
    public String toString() {
        return "RolPermisoDTO{" + "idRolPermiso=" + idRolPermiso + ", idPermiso=" + idPermiso + '}';
    }

    
    
    
    
    
    
    
    
    /**
     * @return the idRolPermiso
     */
    public int getIdRolPermiso() {
        return idRolPermiso;
    }

    /**
     * @param idRolPermiso the idRolPermiso to set
     */
    public void setIdRolPermiso(int idRolPermiso) {
        this.idRolPermiso = idRolPermiso;
    }

    /**
     * @return the idPermiso
     */
    public int getIdPermiso() {
        return idPermiso;
    }

    /**
     * @param idPermiso the idPermiso to set
     */
    public void setIdPermiso(int idPermiso) {
        this.idPermiso = idPermiso;
    }
}
