/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;


import Dtos.RolesDTO;
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
public class RolesDAO {
  PreparedStatement pstmt = null;
    Connection cnn = null;
    int rtdo;
    ResultSet rs = null; 
    
     public RolesDAO (){
          cnn = Conexion.getInstance(); 
      }
      
      String mensaje = "";
      
     
    public List<RolesDTO> listarTodos() {
        ArrayList<RolesDTO> roles = new ArrayList<>();
        try {
            String sqlAll = "SELECT idRoles, descripcion FROM roles where 1=1";                
            
            pstmt = cnn.prepareStatement(sqlAll);
            rs = pstmt.executeQuery();
            
            if (rs != null) {
                while (rs.next()) {
                    roles.add( new RolesDTO(rs.getInt("idRoles"), rs.getString("descripcion")));
                }
            }
        } catch (SQLException ex) {
            mensaje = "Error, datelle " + ex.getMessage();
        }
        
        return roles;
    }

    
    public String crearRoles(RolesDTO odto) {
        try {
            String sqlInsert = "INSERT INTO roles(idRoles,descripcion) VALUES(?, ?)";
            
            pstmt = cnn.prepareStatement(sqlInsert);
            pstmt.setInt(1, odto.getIdRoles());
            pstmt.setString(2, odto.getDescripcion());
           
           
             rtdo = pstmt.executeUpdate();
            if (rtdo != 0) {
                mensaje = "Registro éxitoso";
            } else {
                mensaje = "No se pudo realizar la insert";
            }

        } catch (SQLException sqle) {
            mensaje = sqle.getMessage();
        }
        return mensaje;
    }

   
    public RolesDTO obtenerUno(int id) {
        RolesDTO odto = null;
        
        String sqlOne = "SELECT idRoles, descripcion FROM roles WHERE `idRoles` = ?";
        try {
            pstmt =cnn.prepareStatement(sqlOne);
            pstmt.setInt(1, id);
            rs = pstmt.executeQuery();

            if (rs != null) {
                while (rs.next()) {
                    odto = new RolesDTO(id, rs.getString("descripcion"));
                    
                   
                    
                    
                }
            }
        } catch (SQLException sqle) {
            mensaje = "Error, detalle " + sqle.getMessage();
        }

        return odto;
    } 

    
    public String modificarRoles(RolesDTO odto) {
        try {
            String sqlUpdate ="UPDATE  telefonos SET  descripcion = ? WHERE idRoles=?";
;
            pstmt = cnn.prepareStatement(sqlUpdate);            
            pstmt.setString(1, odto.getDescripcion());
            pstmt.setInt(2, odto.getIdRoles());
            
            

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
      
    public String eliminarRoles(RolesDTO odto) {
        try {
            String sqlDelete = "DELETE FROM `smilesystemv2`.`roles` WHERE `roles`.`idRoles` = ?";

            pstmt = cnn.prepareStatement(sqlDelete);
            pstmt.setInt(1, odto.getIdRoles());
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
