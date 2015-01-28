/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;




import Dtos.PermisosDTO;
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
public class PermisosDAO {
  PreparedStatement pstmt = null;
    Connection cnn = null;
    int rtdo;
    ResultSet rs = null; 
    
     public PermisosDAO (){
         cnn = Conexion.getInstance(); 
          
      }
      
      String mensaje = "";
      
     
    public List<PermisosDTO> listarTodos() {
        ArrayList<PermisosDTO> Permisos = new ArrayList<>();
        try {
            String sqlAll = "SELECT idPermisos, descripcion, url, padre FROM permisos where 1=1";                
            
            pstmt = cnn.prepareStatement(sqlAll);
            rs = pstmt.executeQuery();
            
            if (rs != null) {
                while (rs.next()) {
                    Permisos.add( new PermisosDTO(rs.getInt("idPermisos"), rs.getString("descripcion"), rs.getString("url"), rs.getInt("padre")));
                }
            }
        } catch (SQLException ex) {
            mensaje = "Error, datelle " + ex.getMessage();
        }
        
        return Permisos;
    }

    
    public String crearPermisos(PermisosDTO odto) {
        try {
            String sqlInsert = "INSERT INTO permisos(idPermisos,descripcion, url,padre) VALUES(?, ?, ?, ?)";
            
            pstmt = cnn.prepareStatement(sqlInsert);
            pstmt.setInt(1, odto.getIdPermisos());
            pstmt.setString(2, odto.getDescripcion());
            pstmt.setString(3, odto.getUrl());
            pstmt.setInt(4, odto.getPadre());
          
           
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

   
    public PermisosDTO obtenerUno(int id) {
        PermisosDTO odto = null;
        String sqlOne = "SELECT  descripcion, url, padre FROM permisos WHERE `idPermisos` = ?";
        try {
            pstmt =cnn.prepareStatement(sqlOne);
            pstmt.setInt(1, id);
            rs = pstmt.executeQuery();

            if (rs != null) {
                while (rs.next()) {
                    odto = new PermisosDTO(id, rs.getString("descripcion"), rs.getString("url"), rs.getInt("padre"));
                                       
                    
                }
            }
        } catch (SQLException sqle) {
            mensaje = "Error, detalle " + sqle.getMessage();
        }

        return odto;
    } 

    
    public String modificarPermisos(PermisosDTO odto) {
        try {
            String sqlUpdate = "UPDATE permisos SET `descripcion=?, url = ?, padre= ? WHERE idPermisos = ?";
            pstmt = cnn.prepareStatement(sqlUpdate);            
            pstmt.setString(1, odto.getDescripcion());
            pstmt.setString(2, odto.getUrl());
            pstmt.setInt(3, odto.getPadre());
            pstmt.setInt(4, odto.getIdPermisos());
           
            

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
      
    public String eliminarUsuario(PermisosDTO odto) {
        try {
            String sqlDelete = "DELETE FROM `smilesystemv2`.`permisos` WHERE `permisos`.`idPermisos` = ?";

            pstmt = cnn.prepareStatement(sqlDelete);
            pstmt.setInt(1, odto.getIdPermisos());
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

