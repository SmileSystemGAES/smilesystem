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
public class UsuarioDocumentoDTO {
    private  int iduUsuarioDocumento=0;
    private int idRol=0;

    public UsuarioDocumentoDTO(int idusu,int idrol) {
        this.iduUsuarioDocumento=idusu;
        this.idRol=idrol;
    }
    
     public UsuarioDocumentoDTO() {
    }
    
    
    

    @Override
    public String toString() {
        return "UsuarioDocumentoDTO{" + "iduUsuarioDocumento=" + iduUsuarioDocumento + ", idRol=" + idRol + '}';
    }
    
    

    /**
     * @return the iduUsuarioDocumento
     */
    public int getIduUsuarioDocumento() {
        return iduUsuarioDocumento;
    }

    /**
     * @param iduUsuarioDocumento the iduUsuarioDocumento to set
     */
    public void setIduUsuarioDocumento(int iduUsuarioDocumento) {
        this.iduUsuarioDocumento = iduUsuarioDocumento;
    }

    /**
     * @return the idRol
     */
    public int getIdRol() {
        return idRol;
    }

    /**
     * @param idRol the idRol to set
     */
    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }
    
}
