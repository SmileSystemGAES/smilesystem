/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

/**
 *
 * @author Administrador
 */
import Dtos.TelefonoDTO;
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
public class TelefonoDAO {
  PreparedStatement pstmt = null;
    Connection cnn = null;
    int rtdo;
    ResultSet rs = null; 
    
     public TelefonoDAO (){
      cnn = Conexion.getInstance();     
      }
      
      String mensaje = "";
      
     
    public List<TelefonoDTO> listarTodos() {
        ArrayList<TelefonoDTO> Telefono = new ArrayList<>();
        try {
            String sqlAll = "SELECT idTelefono, Documento, Descripcion FROM telefonos where 1=1";                
            
            pstmt = cnn.prepareStatement(sqlAll);
            rs = pstmt.executeQuery();
            
            if (rs != null) {
                while (rs.next()) {
                    Telefono.add( new TelefonoDTO(rs.getInt("idTelefono"), rs.getInt("Documento"), rs.getString("Descripcion")));
                }
            }
        } catch (SQLException ex) {
            
            mensaje = "Error, datelle " + ex.getMessage();
        }
        
        return Telefono;
    }

    
    public String crearTelefono(TelefonoDTO odto) {
        try {
            String sqlInsert = "INSERT INTO telefonos(idTelefono,Documento, Descripcion) VALUES(?, ?, ?)";
            
            pstmt = cnn.prepareStatement(sqlInsert);
            pstmt.setInt(1, odto.getIdTelefono());
            pstmt.setInt(2, odto.getDocumento());
            pstmt.setString(3, odto.getDescripcion());
            
           
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

   
    public TelefonoDTO obtenerUno(int id) {
        TelefonoDTO odto = null;
        String sqlOne = "SELECT  Documento, Descripcion FROM telefonos WHERE `idTelefono` = ?";
        try {
            pstmt =cnn.prepareStatement(sqlOne);
            pstmt.setInt(1, id);
            rs = pstmt.executeQuery();

            if (rs != null) {
                while (rs.next()) {
                    
                    odto = new TelefonoDTO(id,rs.getInt("Documento"),rs.getString("Descripcion"));
                    
                    
                    
                }
            }
        } catch (SQLException sqle) {
            mensaje = "Error, detalle " + sqle.getMessage();
        }

        return odto;
    } 

    
    public String modificarTelefono(TelefonoDTO odto) {
        try {
            String sqlUpdate = "UPDATE  telefonos SET  Documento = ?, Descripcion=? WHERE idTelefono=?";

            pstmt = cnn.prepareStatement(sqlUpdate);            
            pstmt.setInt(1, odto.getDocumento());
            pstmt.setString(2, odto.getDescripcion());
            pstmt.setInt(3, odto.getIdTelefono());
            
            

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
      
    public String eliminarTelefono(TelefonoDTO odto) {
        try {
            String sqlDelete = "DELETE FROM telefonos WHERE telefonos.idTelefono = ?";

            pstmt = cnn.prepareStatement(sqlDelete);
            pstmt.setInt(1, odto.getIdTelefono());
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

