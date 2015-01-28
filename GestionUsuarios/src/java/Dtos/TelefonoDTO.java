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
public class TelefonoDTO {
    private  int idTelefono=0;
    private  int documento=0;
    private String descripcion="";

    public TelefonoDTO(int idte, int docu, String des) {
        this.idTelefono=idte;
        this.documento=docu;
        this.descripcion=des;
    }

    public TelefonoDTO() {
    }
    
    
    
    

    @Override
    public String toString() {
        return "Telefonos{" + "idTelefono=" + idTelefono + ", documento=" + documento + ", descripcion=" + descripcion + '}';
    }

    /**
     * @return the idTelefono
     */
    
    
    
    public int getIdTelefono() {
        return idTelefono;
    }

    /**
     * @param idTelefono the idTelefono to set
     */
    public void setIdTelefono(int idTelefono) {
        this.idTelefono = idTelefono;
    }

    /**
     * @return the documento
     */
    public int getDocumento() {
        return documento;
    }

    /**
     * @param documento the documento to set
     */
    public void setDocumento(int documento) {
        this.documento = documento;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
}

