<html>
<head>
 <%@page contentType="text/html" pageEncoding="UTF-8"%>
 <meta charset="utf-8" />
<link rel="shortcut icon" href="../imagenes/favicon.ico" />
<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
<title>Smile System</title>
<link href="../estilos/footer.css" rel="stylesheet" type="text/css">
<link href="../estilos/medico.css" rel="stylesheet" type="text/css">
<style type="text/css">
@font-face{
	font-family: angelina;
	src:url(../fuentes/angelina.TTF);

}
p {
font-family: 'Roboto Condensed', sans-serif;
margin-left: 21px;
margin-right: 21px;
color: #008080;
}
</style>

</head>

<body>
<div class="logo">
		<div id="idiomas">
		<a href="../../sitioes/medicos/iniciarsesion.jsp">Español</a> // <a href="../../sitioen/medicos/iniciarsesion.jsp">Ingles</a>
		</div>
		<img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
</div>
<div class="menu">
     <div class ="menu-session">     
        <button type="button" onClick="javascript:window.location='../indexout.jsp'">Cerrar Sesión </button>
     </div>
     <div class ="menu-session">
            <span style="color: white;">Juan Carlos Martinez -</span>
             <span style="color: white;">Médico</span>                  
    </div>
</div>
<div class="contenido">
	<div class="menu2">
	    <ul id="submenu">
	    	<li><img class="vector" src="imagenes/vector.png " width="50" height="50"></li>
			<li><a href="perfil.jsp">Perfil Médico </a></li>										
		    <li><a href="citas.jsp">Citar Paciente</a></li>
		    <li><a href="ingresarhistorial.jsp">Historial  Paciente </a></li>
		     <li><a href="agendamedico.jsp">Agenda del Médico</a></li>
	    </ul>
	</div>
   <div class="mesa">
			<div class="lado1"><h1 class="h1-session">Señores médicos Bienvenidos  </h1>
		       				<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estÃ¡ndar de las industrias desde el aÃ±o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usÃ³ una galerÃ­a de textos y los mezclÃ³ de tal manera que logrÃ³ hacer un libro de textos especimen. No sÃ³lo sobreviviÃ³ 500 aÃ±os, sino que tambien ingresÃ³ como texto de relleno en documentos electrÃ³nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaciÃ³n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y mÃ¡s recientemente con software de autoediciÃ³n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>
	   </div>
	   <div class="lado2">	       	
             <img src="imagenes/imagenes.png" width="400" height="400" class="dibujo"> 
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
