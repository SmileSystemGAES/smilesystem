/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Daos.UsuariosDAO;
import Dtos.UsuariosDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrador
 */
public class usuariosServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
                 UsuariosDAO usdao = new UsuariosDAO ();
           UsuariosDTO us= new UsuariosDTO();
           String rol;
           HttpSession sesion = request.getSession(true);
           
           
           if(request.getParameter("btnLogin")!= null) {
               us.setUsuario(request.getParameter("txtUsu"));
               us.setClave(request.getParameter("txtPasw"));
               rol=usdao.validarUs(us);
               
               if(rol.equals("Medico")){
                  sesion.setAttribute("Medico", us.getUsuario());
                  response.sendRedirect("sitioweb/sitioes/medicos/iniciarsesion.jsp");
               }else if (rol.equals("Paciente")){
                 sesion.setAttribute("Paciente", us.getUsuario());
                 response.sendRedirect("sitioweb/sitioes/paciente/iniciarsesion.jsp");               
              }else if (rol.equals("Secretaria")){
                 sesion.setAttribute("Secretaria", us.getUsuario());
                 response.sendRedirect("sitioweb/sitioes/Secre/iniciarsesion.jsp");
                 
              }else{
                    response.sendRedirect("sitioweb/sitioes/index.jsp?msg=Usuario No existe!!");
               }
           }else{
               response.sendRedirect("sitioweb/sitioes/index.jsp?msg=Usuario No existe!!");
           } 
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
