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
public class UsuariosDTO {

    
    private String nombres="";
    private String apellidos="";
    private int  documento=0;
    private String tipoDoc="";
     private String grupoSangui="";
   private String  tipoAlergia="";
   private String fechadenacimiento="";    
   private String  lugardeNacimiento="";
    private String email="";
     private String telefono="";
    private String direccion="";
     private String ciudad="";
     private String genero=""; 
    private String usuario;
    private String clave;
    private String rol;
    
    

    public UsuariosDTO(String usuario, String clave, String rol) {
        this.usuario=usuario;
        this.clave=clave;
        this.rol=rol;
    }
    
   
     public UsuariosDTO(String nombre,String apellidos, int documento,String tipoDoc,  String fechadenacimiento,String lugardeNacimiento,
                        String email,  String direccion , String ciudad, String genero, String usuario, String clave) {
        this.nombres=nombre;
        this.apellidos=apellidos;
        this.documento=documento;
        this.tipoDoc=tipoDoc;       
        this.fechadenacimiento=fechadenacimiento;
        this.lugardeNacimiento=lugardeNacimiento;
        this.email=email;        
        this.direccion=direccion;
        this.ciudad= ciudad;
        this.genero=genero;  
        this.usuario=usuario;
        this.clave=clave;
    }

    public UsuariosDTO() {
        
    }
   
  

    
    /**
     * @return the nombres
     */
    public String getNombres() {
        return nombres;
    }

    /**
     * @param nombres the nombres to set
     */
    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    /**
     * @return the apellidos
     */
    public String getApellidos() {
        return apellidos;
    }

    /**
     * @param apellidos the apellidos to set
     */
    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
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
     * @return the tipoDoc
     */
    public String getTipoDoc() {
        return tipoDoc;
    }

    /**
     * @param tipoDoc the tipoDoc to set
     */
    public void setTipoDoc(String tipoDoc) {
        this.tipoDoc = tipoDoc;
    }

    /**
     * @return the grupoSangui
     */
    public String getGrupoSangui() {
        return grupoSangui;
    }

    /**
     * @param grupoSangui the grupoSangui to set
     */
    public void setGrupoSangui(String grupoSangui) {
        this.grupoSangui = grupoSangui;
    }

    /**
     * @return the tipoAlergia
     */
    public String getTipoAlergia() {
        return tipoAlergia;
    }

    /**
     * @param tipoAlergia the tipoAlergia to set
     */
    public void setTipoAlergia(String tipoAlergia) {
        this.tipoAlergia = tipoAlergia;
    }

    /**
     * @return the fechadenacimiento
     */
    public String getFechadenacimiento() {
        return fechadenacimiento;
    }

    /**
     * @param fechadenacimiento the fechadenacimiento to set
     */
    public void setFechadenacimiento(String fechadenacimiento) {
        this.fechadenacimiento = fechadenacimiento;
    }

    /**
     * @return the lugardeNacimiento
     */
    public String getLugardeNacimiento() {
        return lugardeNacimiento;
    }

    /**
     * @param lugardeNacimiento the lugardeNacimiento to set
     */
    public void setLugardeNacimiento(String lugardeNacimiento) {
        this.lugardeNacimiento = lugardeNacimiento;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
     * @return the direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * @param direccion the direccion to set
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * @return the ciudad
     */
    public String getCiudad() {
        return ciudad;
    }

    /**
     * @param ciudad the ciudad to set
     */
    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    /**
     * @return the genero
     */
    public String getGenero() {
        return genero;
    }

    /**
     * @param genero the genero to set
     */
    public void setGenero(String genero) {
        this.genero = genero;
    }

    /**
     * @return the usuario
     */
    public String getUsuario() {
        return usuario;
    }

    /**
     * @param usuario the usuario to set
     */
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    /**
     * @return the clave
     */
    public String getClave() {
        return clave;
    }

    /**
     * @param clave the clave to set
     */
    public void setClave(String clave) {
        this.clave = clave;
    }

  
   
    
   

    
    
    

   

   
    
}

