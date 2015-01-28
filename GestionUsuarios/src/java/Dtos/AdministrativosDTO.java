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
public class AdministrativosDTO extends UsuariosDTO {
    private int Documento=0;
    private int idcargo=0;

    public AdministrativosDTO(int docu, int idc) {
        this.Documento=docu;
        this.idcargo=idc;
    }
    
     public AdministrativosDTO() {
    }

   
     
    
    
    
    

    @Override
    public String toString() {
        return "AdministrativosDTO{" + "Documento=" + Documento + ", idcargo=" + idcargo + '}';
    }

    /**
     * @return the Documento
     */
    
    
    public int getDocumento() {
        return Documento;
    }

    /**
     * @param Documento the Documento to set
     */
    public void setDocumento(int Documento) {
        this.Documento = Documento;
    }

    /**
     * @return the idcargo
     */
    public int getIdcargo() {
        return idcargo;
    }

    /**
     * @param idcargo the idcargo to set
     */
    public void setIdcargo(int idcargo) {
        this.idcargo = idcargo;
    }
    
}
