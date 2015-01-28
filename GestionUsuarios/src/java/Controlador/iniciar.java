/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Daos.UsuariosDAO;
import Dtos.UsuariosDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrador
 */
public class iniciar extends HttpServlet {

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
            throws ServletException, IOException {
        
        if(request.getParameter("btnLogin")!= null) {
            String usuario = request.getParameter("txtUsu");
            String clave = request.getParameter("txtPasw");
          UsuariosDAO usdao = new UsuariosDAO ();
          UsuariosDTO us = new UsuariosDTO(usuario, clave, null);
          String rol=usdao.validarUs(us);  
          
          if(rol == null)
              response.sendRedirect("sitioweb/sitioes/index.jsp?msg=Usuario no  existe");
          HttpSession sesion = request.getSession(true);
          if(rol.equals("paciente")){
              sesion.setAttribute("Paciente", us.getUsuario());
              response.sendRedirect("sitioweb/sitioes/paciente/iniciarsesion.jsp");
          }else if(rol.equals("medico")){
                   sesion.setAttribute("medico", us.getUsuario());
                  response.sendRedirect("sitioweb/sitioes/medicos/iniciarsesion.jsp");
          }else{
              response.sendRedirect("sitioweb/sitioes/index.jsp?msg=Usuario no  existe");
          }
          
          
        }else{
            response.sendRedirect("sitioweb/sitioes/index.jsp?msg=Usuario No existe!!");
        }
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
