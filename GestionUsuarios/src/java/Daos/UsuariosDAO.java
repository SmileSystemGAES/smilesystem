/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.UsuariosDTO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import utilidades.ConnBD;

/**
 *
 * @author Administrador
 */
public class UsuariosDAO {
   ConnBD bd = new  ConnBD();

    public UsuariosDAO() {
    }

 
   
   
    public String validarUs(Object obj){
        String rol= null;
        Connection cn;
        PreparedStatement pst;
        ResultSet rs;
        String sql; 
        UsuariosDTO  us=(UsuariosDTO) obj;
        try{
           Class.forName(bd.getDriver());
           cn= DriverManager.getConnection(bd.getUrl(), bd.getUs(),bd.getPsw());  
           sql="select usuario, clave, descripcion as rol from usuarios inner join \n" +
                "usuariodocumento on usuarios.documento = usuariodocumento.idusuarioDocumento inner join \n" +
                "roles on usuariodocumento.idRol= roles.idRoles where usuario=? and clave=?";
           pst=cn.prepareStatement(sql);
           pst.setString(1, us.getUsuario());
           pst.setString(2, us.getClave());
           rs= pst.executeQuery();
           rs.first();
            if(rs.getString("usuario")!= null){
                rol=rs.getString("rol");
            }
            rs.close();
            pst.close();
            cn.close();
        }catch  (Exception e){
            e.printStackTrace();
            
            
        }     
         return rol;
       
    }
}