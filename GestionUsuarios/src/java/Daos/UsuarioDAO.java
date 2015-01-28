
package Daos;

import Dtos.MyException;
import Dtos.UsuariosDTO;
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
import java.sql.*;

/**
 *
 * @author Administrador
 */
public class UsuarioDAO {   
  PreparedStatement pstmt = null;
    Connection cnn = null;
    int rtdo;
    ResultSet rs = null; 
    
     public UsuarioDAO (){
       cnn = Conexion.getInstance();     
     }  
     
     
    String mensaje = "";
      
       public UsuariosDTO validarUsuario(String login, String pass) throws MyException{
        UsuariosDTO pdto = new UsuariosDTO();
        try {
            
            pstmt = cnn.prepareStatement("SELECT documento as id, nombres  FROM usuarios WHERE usuario = ? AND clave  = ?");
            pstmt.setString(1, login);
            pstmt.setString(2, pass);
            rs=pstmt.executeQuery();
            
            if(rs!=null){
                while(rs.next()){
                    pdto.setDocumento(rs.getInt("id"));
                    pdto.setNombres(rs.getString("nombres"));
                }
            }else{
                pdto = null;
            }
            return pdto;
        } catch (SQLException ex) {
            throw new MyException(" Datos errones. Revise!");
        }
        
    }
  
    public List<UsuariosDTO> listarTodos() {
        ArrayList<UsuariosDTO> usuario = new ArrayList<UsuariosDTO>();
        try {
            String sqlAll = "SELECT  nombres, apellidos ,documento, tipoDoc, fechadenacimiento, lugarDeNacimiento, correo,direccion,  ciudad , genero,usuario, clave,  FROM usuarios where 1=1";                
            
            pstmt = cnn.prepareStatement(sqlAll);
            rs = pstmt.executeQuery();
            
            if (rs != null) {
                while (rs.next()) {
                    usuario.add( new UsuariosDTO(rs.getString("nombres"), rs.getString("apellidos"),rs.getInt("documento") ,rs.getString("tipoDoc"),  rs.getString("fechadenacimiento"), rs.getString("lugarDeNacimiento"),rs.getString("correo"), rs.getString("direccion"), rs.getString("ciudad"), rs.getString("genero"), rs.getString("usuario"), rs.getString("clave")));
                }
            }
        } catch (SQLException ex) {
            mensaje = "Error, datelle " + ex.getMessage();
        }
        
        return usuario;
    }

    
    public String crearUsuario(UsuariosDTO  odto)throws MiExcepcion  {
        try {
            String sqlInsert = "INSERT INTO usuarios( nombres, apellidos ,documento, tipoDoc, fechadenacimiento, lugarDeNacimiento, correo,direccion,  ciudad , genero,usuario, clave) VALUES(?, ?, ?, ?, ?, ? ,?, ?, ?,?,?,?)";
            
            pstmt = cnn.prepareStatement(sqlInsert);
            pstmt.setString(1, odto.getNombres());
            pstmt.setString(2, odto.getApellidos());
            pstmt.setInt(3, odto.getDocumento());
            pstmt.setString(4, odto.getTipoDoc());
            pstmt.setString(5, odto.getFechadenacimiento());
            pstmt.setString(6, odto.getLugardeNacimiento());            
            pstmt.setString(7, odto.getEmail());
            pstmt.setString(8, odto.getDireccion());
            pstmt.setString(9, odto.getCiudad());
            pstmt.setString(10, odto.getGenero());
            pstmt.setString(11, odto.getUsuario());
            pstmt.setString(12, odto.getClave());
            
           
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

   
    public UsuariosDTO obtenerUno(int id) {
        
        UsuariosDTO odto = null;
        String sqlOne = "SELECT  nombres, apellidos , tipoDoc, fechadenacimiento, lugarDeNacimiento, correo,direccion,  ciudad , genero,usuario, clave FROM usuarios WHERE documento = ?";
        try {
            pstmt =cnn.prepareStatement(sqlOne);
            pstmt.setInt(1, id);
            rs = pstmt.executeQuery();

            if (rs != null) {
                while (rs.next()) {
                    
                  //  odto = new UsuariosDTO(id, rs.getString("tipoDoc"), rs.getString("nombres"), rs.getString("apellidos"),rs.getString("direccion"), rs.getString("fechadenacimiento"), rs.getString("usuario"), rs.getString("clave"), rs.getString("genero"));
                }
            }
        } catch (SQLException sqle) {
            mensaje = "Error, detalle " + sqle.getMessage();
        }

        return odto;
    } 

    
    public String modificarUsuario(UsuariosDTO odto) {
        try {
            String sqlUpdate = "UPDATE  usuarios SET  nombres=?, apellidos=?, tipoDoc = ?,fechadenacimiento=?, lugarDeNacimiento=?, correo=?, direccion=?,ciudad=?, genero= ?,usuario=?, clave=? WHERE documento = ?";
            pstmt = cnn.prepareStatement(sqlUpdate);    
            pstmt.setString(1, odto.getNombres());
            pstmt.setString(2, odto.getApellidos());
            pstmt.setString(4, odto.getTipoDoc());
            pstmt.setString(5, odto.getFechadenacimiento());
            pstmt.setString(6, odto.getLugardeNacimiento());            
            pstmt.setString(7, odto.getEmail());
            pstmt.setString(8, odto.getDireccion());
            pstmt.setString(9, odto.getCiudad());
            pstmt.setString(10, odto.getGenero());
            pstmt.setString(11, odto.getUsuario());
            pstmt.setString(12, odto.getClave());
            pstmt.setInt(3, odto.getDocumento());
            

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
      
    public String eliminarUsuario(UsuariosDTO odto) {
        try {
            String sqlDelete = "DELETE FROM `smilesystemv2`.`usuarios` WHERE `usuarios`.`documento` = ?";

            pstmt = cnn.prepareStatement(sqlDelete);
            pstmt.setInt(1, odto.getDocumento());
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



////    public String validarUs(Object obj){
////        String rol= null;
////        Connection cn;
////        PreparedStatement pst;
////        ResultSet rs;
////        String sql; 
////        UsuariosDTO  us=(UsuariosDTO) obj;
////        try{
////           Class.forName(bd.getDriver());
////           cn= DriverManager.getConnection(bd.getUrl(), bd.getUs(), bd.getPsw());  
////           sql="select usuario, clave, roles from usuarios where  usuario=? and clave=?";
////           pst=cn.prepareStatement(sql);
////           pst.setString(1, us.getUsuario());
////           pst.setInt(2, us.getClave());
////           rs= pst.executeQuery();
////           rs.first();
////            if(rs.getString("usuario")!= null){
////                rol=rs.getString("roles");
////            }
////            rs.close();
////            pst.close();
////            cn.close();
////        }catch  (Exception e){
////            e.printStackTrace();
////            
////            
////        }     
////         return rol;
////       
////    }


//     public UsuariosDTO validarUsuario(String login, String pass) {
//        UsuariosDTO pdto = new UsuariosDTO();
//        try {
//            
//            pstmt = cnn.prepareStatement("SELECT documento, nombres  FROM usuarios WHERE usuario = ? AND documento  = ?");
//            pstmt.setString(1, pass);
//            pstmt.setString(2, login);
//            rs=pstmt.executeQuery();
//            
//            if(rs!=null){
//                while(rs.next()){
//                    pdto.setDocumento(rs.getInt("id"));
//                    pdto.setUsuario(rs.getString("nombre"));
//                }
//            }else{
//                pdto = null;
//            }
//            
//        } catch (SQLException ex){
//            mensaje="error delatte"+ ex.getMessage();
//            
//        }
////       return pdto; 
//    } 



//   public UsuariosDTO consultarById(int id){
//        UsuariosDTO prof = new UsuariosDTO();
//        try {
//            pstmt = cnn.prepareStatement("select nombre, correoElectronico from usuarios where documento = ?");
//            pstmt.setInt(1, id);
//            rs = pstmt.executeQuery();
//            
//            while(rs.next()){
//                prof.setClaveProfesor(id);
//                prof.setNombreCompleto(rs.getString("nombre"));
//                prof.setCorreoElectronico(rs.getString("correoElectronico"));
//                prof.setUserName(rs.getString("user"));
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(ProfesorDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        
//        
//        
//        return prof;
//    }

     