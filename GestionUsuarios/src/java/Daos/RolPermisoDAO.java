/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;
import Dtos.RolPermisoDTO;
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
public class RolPermisoDAO {
  PreparedStatement pstmt = null;
    Connection cnn = Conexion.getInstance();
    int rtdo;
    ResultSet rs = null; 
    
     public  RolPermisoDAO (){
       cnn = Conexion.getInstance();    
      }
      
      String mensaje = "";
      
     
    public List< RolPermisoDTO> listarTodos() {
        ArrayList< RolPermisoDTO> usuario = new ArrayList<>();
        try {
            String sqlAll = "SELECT  idRolPermiso,idPermiso FROM rolPermiso where 1=1";                
            
            pstmt = cnn.prepareStatement(sqlAll);
            rs = pstmt.executeQuery();
            
            if (rs != null) {
                while (rs.next()) {
                    usuario.add( new RolPermisoDTO(rs.getInt("idRolPermiso"), rs.getInt("idPermiso")));
                }
            }
        } catch (SQLException ex) {
            mensaje = "Error, datelle " + ex.getMessage();
        }
        
        return usuario;
    }

    
    public String crearRolPermiso(RolPermisoDTO odto) {
        try {
            String sqlInsert = "INSERT INTO rolPermiso(idRolPermiso,idPermiso) VALUES(?, ?)";
            
            pstmt = cnn.prepareStatement(sqlInsert);
            pstmt.setInt(1, odto.getIdRolPermiso());
            pstmt.setInt(2, odto.getIdPermiso());
          
           
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

   
    public RolPermisoDTO obtenerUno(int idusu, int idrol) {
        
        RolPermisoDTO odto = null;
        String sqlOne = "SELECT  idRolPermiso, idPermiso FROM rolPermiso WHERE idRolPermiso = ?";
        try {
            pstmt =cnn.prepareStatement(sqlOne);
            pstmt.setInt(1, idusu);
            pstmt.setInt(1, idrol);
            rs = pstmt.executeQuery();

            if (rs != null) {
                while (rs.next()) {
                    
                    odto = new RolPermisoDTO(); 
                    odto.setIdRolPermiso(rs.getInt("idRolPermiso"));
                    odto.setIdPermiso(rs.getInt("idPermiso"));
                }
            }
        } catch (SQLException sqle) {
            mensaje = "Error, detalle " + sqle.getMessage();
        }

        return odto;
    } 

    
    public String modificarRolPermiso(RolPermisoDTO odto) {
        try {
            String sqlUpdate = "UPDATE  rolPermiso SET  idPermiso = ? WHERE idRolPermiso = ?";
            pstmt = cnn.prepareStatement(sqlUpdate);            
            pstmt.setInt(1, odto.getIdPermiso());
            pstmt.setInt(2, odto.getIdRolPermiso());
            
            

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
      
    public String eliminarRolPermiso(RolPermisoDTO odto) {
        try {
            String sqlDelete = "DELETE FROM `smilesystemv2`.`rolPermiso` WHERE `rolPermiso`.`idRolPermiso` = ? ";

            pstmt = cnn.prepareStatement(sqlDelete);
            pstmt.setInt(1, odto.getIdRolPermiso());
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
