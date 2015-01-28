/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Daos.UsuarioDAO;
import Dtos.MyException;
import Dtos.UsuariosDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import utilidades.MiExcepcion;

/**
 *
 * @author admin
 */
public class Controlar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, MiExcepcion, MyException {
         response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
//            if (request.getParameter("guardarUsuario") != null && request.getParameter("rUsuario") != null) {
//
//                
//                UsuariosDTO nuevousu = new UsuariosDTO();                
//                nuevousu.setNombres(request.getParameter("NombreCompleto"));
//                nuevousu.setApellidos(request.getParameter("ApellidoCompleto"));
//                nuevousu.setDocumento(Integer.parseInt(request.getParameter("Cedula")));
//                nuevousu.setTipoDoc(request.getParameter("Tipo"));
//                nuevousu.setGrupoSangui(request.getParameter("Grupo"));
//                nuevousu.setTipoAlergia(request.getParameter("TipoAlergia"));
//                nuevousu.setFechadenacimiento(request.getParameter("FechaNacimiento"));
//                nuevousu.setLugardeNacimiento(request.getParameter("LugardeNacimiento"));
//                nuevousu.setEmail(request.getParameter("email"));
//                nuevousu.setTelefono(request.getParameter("Telefono"));
//                nuevousu.setDireccion(request.getParameter("Direccion"));
//                 nuevousu.setCiudad(request.getParameter("Ciudad"));
//                nuevousu.setGenero(request.getParameter("Genero"));
//                // 
//                UsuarioDAO pdao = new UsuarioDAO();               
//                // aqui decimos qe luego de crear vamos a validar la entrada de un usuario
//                String mensaje = pdao.crearUsuario(nuevousu);
//
//                //Una vez recibido el mensaje el siguiente paso es reenviarlo al usuario en la interfaz
//                response.sendRedirect("index.jsp?msg=" + mensaje);  // lo pasamos como atributo usando el metodo get
//
//            } else 
                while (request.getParameter("enviar") != null) {
                UsuarioDAO usuDao = new UsuarioDAO();
                UsuariosDTO usuDto;
                usuDto = usuDao.validarUsuario(request.getParameter("Nombre"), request.getParameter("password"));
                
                if (usuDto.getDocumento()!=0) {
                    HttpSession miSesion = request.getSession(true);
                    miSesion.setAttribute("usuarioLogueado", usuDto);                    
                    response.sendRedirect("sitioweb/sitioes/Secre/iniciarsesion.jsp");
                }else{
                    response.sendRedirect("sitioweb/sitioes/Secre/index.jsp?msg=Usuario No existe!!");
                }
            }
            
            
         
            // esto es para eliminar y modificar en una pagina jsp
            
//            else if(request.getParameter("id")!=null){
//               UsuarioDAO usuDao = new UsuarioDAO();   
//               boolean salida = usuDao.eliminarUsuario(Integer.parseInt(request.getParameter("id")));
//               if(salida == true){
//                   response.sendRedirect("pages/listado.jsp?sal=registro eliminado");
//               }else{
//                   response.sendRedirect("pages/listado.jsp?sal=no se pudo eliminar usuario");
//               }
//            }else if(request.getParameter("btnActualizarProfe") != null) {
//                UsuarioDAO usuDao = new UsuarioDAO();
//                
//                boolean salida = usuDao.modificarUsuario(Integer.parseInt(request.getParameter("txtId")), request.getParameter("txtNombre"));
//                if(salida == true){
//                    
//                    response.sendRedirect("pages/listado.jsp?sal=actualizado!!!!");
//                }else{
//                    response.sendRedirect("pages/listado.jsp?sal= fallo al actualizar");
//                }
//                
//            }
//            
//            else {
//                    response.sendRedirect(" pages/login.jsp?msg=no puede acceder");
//            }

    

    

   
   
      
    }

}