/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.UsuarioDocumentoDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import utilidades.Conexion;
import utilidades.MiExcepcion;

/**
 *
 * @author Administrador
 */
public class UsuarioDocumentoDAO {
  PreparedStatement pstmt = null;
    Connection cnn = Conexion.getInstance();
    int rtdo;
    ResultSet rs = null; 
    
     public UsuarioDocumentoDAO (){
      cnn = Conexion.getInstance();     
      }
      
      String mensaje = "";
      
     
    public List<UsuarioDocumentoDTO> listarTodos() {
        ArrayList<UsuarioDocumentoDTO> usuario = new ArrayList<>();
        try {
            String sqlAll = "SELECT  idusuarioDocumento,idRol FROM usuarioDocumento where 1=1";                
            
            pstmt = cnn.prepareStatement(sqlAll);
            rs = pstmt.executeQuery();
            
            if (rs != null) {
                while (rs.next()) {
                    usuario.add( new UsuarioDocumentoDTO(rs.getInt("idusuarioDocumento"), rs.getInt("idRol")));
                }
            }
        } catch (SQLException ex) {
            mensaje = "Error, datelle " + ex.getMessage();
        }
        
        return usuario;
    }

    
    public String crearUsuarioDocumento(UsuarioDocumentoDTO odto) {
        try {
            String sqlInsert = "INSERT INTO usuarioDocumento(idusuarioDocumento,idRol) VALUES(?, ?)";
            
            pstmt = cnn.prepareStatement(sqlInsert);
            pstmt.setInt(1, odto.getIduUsuarioDocumento());
            pstmt.setInt(2, odto.getIdRol());
          
           
             rtdo = pstmt.executeUpdate();
            if (rtdo != 0) {
                mensaje = "Registro éxitoso";
            } else {
                mensaje = "No se pudo realizar la insert";
            }

        } catch (SQLException sqle) {
            mensaje =" "+sqle.getMessage()+" - error: "+sqle.getSQLState()+" ";
        }catch(NullPointerException  np){
            mensaje = "no se encuentra:  "+np+ "  "+np.getLocalizedMessage();
        }
        
        return mensaje;
    }

   
    public UsuarioDocumentoDTO obtenerUno(int idusu, int idrol) {
        
        UsuarioDocumentoDTO odto = null;
        String sqlOne = "SELECT idusuarioDocumento, idRol FROM usuarioDocumento WHERE idusuarioDocumento = ?";
        try {
            pstmt =cnn.prepareStatement(sqlOne);
            pstmt.setInt(1, idusu);
            pstmt.setInt(1, idrol);
            rs = pstmt.executeQuery();

            if (rs != null) {
                while (rs.next()) {
                    
                    odto = new UsuarioDocumentoDTO(); 
                    odto.setIduUsuarioDocumento(rs.getInt("idusuarioDocumento"));
                    odto.setIdRol(rs.getInt("idRol"));
                }
            }
        } catch (SQLException sqle) {
            mensaje = "Error, detalle " + sqle.getMessage();
        }

        return odto;
    } 

    
    public String modificarUsuarioDocumento(UsuarioDocumentoDTO odto) {
        try {
            String sqlUpdate = "UPDATE  usuarioDocumento SET  idRol = ? WHERE idusuarioDocumento = ?";
            pstmt = cnn.prepareStatement(sqlUpdate);            
            pstmt.setInt(1, odto.getIduUsuarioDocumento());
            pstmt.setInt(2, odto.getIdRol());
            
            

            rtdo = pstmt.executeUpdate();
            if (rtdo != 0) {
                mensaje = "Actualización éxitosa";
            } else {
                mensaje = "No se pudo realizar la actualización";
            }
        } catch (SQLException sqle) {
            mensaje = sqle.getMessage();
        }
        return mensaje;
    }
      
    public String eliminarUsuarioDocumento(UsuarioDocumentoDTO odto) {
        try {
            String sqlDelete = "DELETE FROM `smilesystemv2`.`usuarioDocumento` WHERE `usuarioDocumento`.`idusuarioDocumento` = ? ";

            pstmt = cnn.prepareStatement(sqlDelete);
            pstmt.setInt(1, odto.getIduUsuarioDocumento());
            rtdo = pstmt.executeUpdate();
            if (rtdo != 0) {
                mensaje = "Se elimino correctamente";
            } else {
                mensaje = "No se pudo realizar la eliminación";
            }
        } catch (SQLException ex) {
            mensaje = "Error, detalle: " + ex.getMessage();
        }
        return mensaje;
    }

  

 

}
