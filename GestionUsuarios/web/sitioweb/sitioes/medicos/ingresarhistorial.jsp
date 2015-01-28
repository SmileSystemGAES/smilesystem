<html>
<head>
    <title>Smile System</title>
    <meta charset="utf-8" />
    <link rel="shortcut icon"  href="../imagenes/favicon.ico" />
    <link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab' rel='stylesheet' type='text/css'>
    <link href="../estilos/footer.css" rel="stylesheet" type="text/css">
    <link href="../estilos/medico.css" rel="stylesheet" type="text/css">
    <script src="../js/jquery.js"></script>
    <script src="../js/jquery.validate.js"></script>
    <script type="text/javascript">

    $(document).ready(function() {

    	//codigo para validar que los campos solo sean letras
    	jQuery.validator.addMethod("lettersonly", function(value, element) {
      return this.optional(element) || /^[a-zA-ZáéíóúàèìòùÀÈÌÒÙÁÉÍÓÚñÑüÜ_\s]+$/i.test(value);
       }, "Digite solo caracteres");	   

        // sirver para validar los campos del formulario
        $('#form1').validate({
        	rules:{
        		Nombre:{
        			required: true,
        			minlength:8,
        			maxlength:15
        		},
        		password:{
        			required: true,
        			number: true,
        			minlength:8,
        			maxlength:10
        		}
        	},
        	messages:{
        		Nombre:{
    				required: "este campo es Requerido",
    				minlength:"Son {0} digitos Mínimo  ",
        			maxlength:"Son {0} digitos Máximo"
    			},
    			password:{
        			required: "El campo es Requerido",
        			number: "El campo debe ser Numérico ",
        			minlength:"Son {0} digitos Mínimo  ",
        			maxlength:"Son {0} digitos Máximo"
        		}
        	}
        });
    });
    </script>
</head>
<body>
<div class="logo">
		<div id="idiomas">
		<a href="../../sitioes/medicos/ingresarhistorial.jsp">Espa�ol</a> // <a href="../../sitioen/medicos/ingresarhistorial.jsp">Ingles</a>
		</div>
		<img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
</div>
<div class="menu">
    <div class="tags">
                <a href="iniciarsesion.jsp"><strong>Iniciar Sesi�n</strong></a>
                <a href="#"><strong>Ingresar Historial</strong></a>
            </div>
	<div class ="menu-session">     
            <button type="button" onClick="javascript:window.location='../index.jsp'">Cerrar Sesi�n </button>
    </div>
         <div class ="menu-session">
                <span style="color: white;">Juan Carlos Martinez -</span>
                 <span style="color: white;">M�dico</span>                  
        </div>
</div>
	<div class="contenido">
			<div class="menu2">
		    <ul id="submenu">
                        <li><img class="vector" src="imagenes/vector.png " width="50" height="50"></li>
                        <li><a href="perfil.jsp">Perfil M�dico </a></li>                                        
                        <li><a href="citas.jsp">Citar Paciente</a></li>
                        <li><a href="ingresarhistorial.jsp">Historial  Paciente </a></li>
                         <li><a href="agendamedico.jsp">Agenda del M�dico</a></li>
            </ul>
			</div>
	       <div class="mesa">
<div class="lado1">
	<div class="formulario-session form-gris">
		<form action="historial.jsp" id="form1" class="form-format1" method="POST"> 
			<h1 class="h1-session">Smile System</h1>	
			
			<div class="formularrioodonto">
				<label for ="Contraseña"> Documento</label>
				<input type="password" name="password" id="Contraseña" required max-length="20" value=""  placeholder="1081407291"/>
			</div>
			<input type="submit" value="Ingresar">
		</form>
	</div>
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
            <a  href="../sitio.jsp">Dise�o del sitio</a><br>
            <a href="../diccionario/diccionario" target='_blank'>Diccionario de datos</a>
        </li>
    </ul>
</div>
</body>
</html>
