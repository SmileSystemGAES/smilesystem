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
public class PermisosDTO {
    private int idPermisos=0;
    private String descripcion="";
    private String url="";
    private int padre=0;

    public PermisosDTO(int idpe, String descp, String url, int pad) {
        this.idPermisos=idpe;
        this.descripcion=descp;
        this.url=url;
        this.padre=pad;
    }
    
     public PermisosDTO() {
    }
    
    

    @Override
    public String toString() {
        return "PermisosDTO{" + "idPermisos=" + idPermisos + ", descripcion=" + descripcion + ", url=" + url + ", padre=" + padre + '}';
    }

    /**
     * @return the idPermisos
     */
    
    
    public int getIdPermisos() {
        return idPermisos;
    }

    /**
     * @param idPermisos the idPermisos to set
     */
    public void setIdPermisos(int idPermisos) {
        this.idPermisos = idPermisos;
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

    /**
     * @return the url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url the url to set
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * @return the padre
     */
    public int getPadre() {
        return padre;
    }

    /**
     * @param padre the padre to set
     */
    public void setPadre(int padre) {
        this.padre = padre;
    }
    
}
