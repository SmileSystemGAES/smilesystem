<%-- 
    Document   : indexout
    Created on : 27/01/2015, 11:33:48 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cerrar Sesión</title>
    </head>
    <body>
        <h1>Salir</h1>
        
        <%
         
            HttpSession sesion = request.getSession(false);
            
            if (sesion.getAttribute("Paciente") == null ) {
                response.sendRedirect("index.jsp?msg= redireccion desde indexout");

            } else {
                sesion.removeAttribute("Paciente");
                sesion.invalidate();
                 response.sendRedirect("index.jsp?msg= Sesion cerrada");
            }
        %>    
        
        
        
    </body>
</html>
