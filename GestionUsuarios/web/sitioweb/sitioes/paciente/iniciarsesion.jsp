<%-- 
    Document   : iniciarsesion
    Created on : 25/01/2015, 25/01/2015 03:18:48 PM
    Author     : Administrador
--%>

<%@page import="Dtos.UsuariosDTO"%>
<%@page import="Daos.UsuariosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
<head>
     
	<title>Smile System</title>
    <meta charset="utf-8" />
    <link rel="shortcut icon" href="../imagenes/favicon.ico" />
    <link href="../estilos/footer.css" rel="stylesheet" type="text/css">
    <link href="../estilos/css.css" rel="stylesheet" type="text/css">
    <script src="../js/jquery.js"></script>
    <script src="../js/jquery.validate.js"></script>
  
	<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Abril+Fatface' rel='stylesheet' type='text/css'>
</head>
<body> 
  <%--  
      <%
            HttpSession sesion = request.getSession(false);

            if (sesion.getAttribute("Paciente") == null) {
                response.sendRedirect("../index.jsp?msg= Usuario no ha iniciado sesion");

            } else {
                UsuariosDTO pr = new UsuariosDTO();
                pr = (UsuariosDTO) sesion.getAttribute("Paciente");
        %>
   
    --%>
<div class="logo">
		<div id="idiomas">
		<a href="../../sitioes/paciente/iniciarsesion.jsp">Español</a> // <a href="../../sitioen/paciente/iniciarsesion.jsp">Ingles</a>
		</div>
		<img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
  </div>
<div class="menu">
       <div class ="menu-session">     
      <button type="button" onClick="javascript:window.location='../indexout.jsp'">Cerrar Sesión </button>
         </div>
         <div class ="menu-session">
                <span style="color:white;"> </span>
                 <span style="color:white;">Paciente </span>                  
        </div>
</div>





	<div class="contenido">
			<div class="menu2">
				    <ul id="submenu">
				    	    <li><img class="vector" src="imagenes/vector.png " width="50" height="50"></li>					
							<li><a href="perfil.jsp">Perfil </a></li>										
							<li><a href="citas.jsp">Citaciones</a></li>
							<li><a href="historial.jsp">Historial  Odontológico </a></li>
					
				    </ul>
			</div>
	       <div class="mesa">
	       			<div class="lado1"><h1>Bienvenidos</h1>
					       				<p>o Señor usuario bienvenido y gracia spor tomar nuestro servicos  en nuestra gran compañia de odontologia, en este principio observara los principles novedades que le muestra nuestro  sistema para su amplia mejoria con el servcio, como pude usted observar podra programar sus citas odontologicas como tambien podra revisar su historial medico.</p>
				   </div>
				   <div class="lado2">	       	
			             <img src="imagenes/imagen.png" width="442" height="380" class="dibujo"> 
			       </div>          


	       </div> 
	</div>     
  
	<div class="pie">
	  <ul>
        <li  >
            <a href="http://www.facebook.com" target='_blank'>
                <img src="../imagenes/face.png" alt="facebook" width="35" height="35"/>
            </a>
            <a href="http//:facebook.com" target='_blank'></a>
        </li>
        <li >
            <a href="http://www.youtube.com/" target='_blank'>
                <img  src="../imagenes/youtu.png" alt="youtube" width="35" height="35"/>
            </a>
            <a href="http//:youtube.com" target='_blank'></a>
        </li>
        <li>
            <a href="http://twitter.com/" target='_blank'>
                <img  src="../imagenes/tuiter.png" alt="twitter" width="35" height="35"/>
            </a>
            <a href="http//:Twitter.com" target='_blank'></a>
        </li>
        <li class="footerli">
            <a  href="../sitio.jsp">Diseño del sitio</a><br>
            <a href="../diccionario/diccionario" target='_blank'>Diccionario de datos</a>
        </li>
    </ul>
</div>
</body>
</html>
