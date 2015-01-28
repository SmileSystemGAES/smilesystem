<html>
<head>
    <title>Smile System</title>
     <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <link rel="shortcut icon" href="../imagenes/favicon.ico" />
    <link href="estilos/footer.css" rel="stylesheet" type="text/css">
    <link href="estilos/css.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.js"></script>
    <script src="js/jquery.validate.js"></script>
<script type="text/javascript">

//funcion para ocultar formularios
function OcultarForm(parm1,parm2){

	$('#'+parm2).show();
	$('#'+parm1).hide();


}

$(document).ready(function() {

	//codigo para validar que los campos solo sean letras
	jQuery.validator.addMethod("lettersonly", function(value, element) {
  return this.optional(element) || /^[a-zA-ZáéíóúàèìòùÀÈÌÒÙÁÉÍÓÚñÑüÜ_\s]+$/i.test(value);
   }, "Digite solo caracteres");

    // sirver para validar los campos del formulario
    $('#form1').validate({
    	rules:{
    		
    		password:{
    			required: true,
    			number: true,
    			minlength:8,
    			maxlength:13
    		},
    		Nombre:{
    			required: true,
       			minlength:8,
    			maxlength:15

    		}
    		
    	},
    	messages:{
    		
			password:{
    			required: "El campo es Requerido",
    			number: "El campo debe ser Numérico ",
    			minlength:"Son {0} digitos Mínimo  ",
    			maxlength:"Son {0} digitos Máximo"
    		},
    		Nombre:{
    			required: "El campo es Requerido",
       			minlength:"Son {0} digitos Mínimo  ",
    			maxlength:"Son {0} digitos Máximo"

    		}
    	}
    });

     // sirver para validar los campos del formulario
    $('#form2').validate({
    	rules:{
    		
    		correo:{
    			required: true,
    			email:true
    		}
    		
    	},
    	messages:{
    		
			correo:{
    			required: "El campo es requerido",
    			email: "El Correo es invalido"
    		}
    	},
        submitHandler: function(form) {
            alert('Su contraseña fue enviada a este  correo');
            OcultarForm('Recuperar','Formlogin');
        }
    });

});
</script>
  
</head>

<body>
	<div class="logo">
		<div id="idiomas">
		<a href="sitioes/paciente/index.jsp">Español</a> // <a href="../sitioen/paciente/index.jsp">Ingles</a>
		</div>
		<img src="imagenes/banner-enviar.jpg" height="210" width="1200">
   </div>
	
		<div class="menu">
<ul>
    <li><a href="inicio.jsp">Inicio</a></li>
    <li><a href="quienessomos.jsp">¿Quiénes somos?</a></li>
    <li><a href="servicios.jsp"> Servicios</a></li>
    <li><a href="contactenos.jsp">Contáctenos</a></li>
    
    <li><a href="index.jsp">Afiliados</a></li>
     <li><a href="preguntas.jsp">Inquietudes</a></li>
</ul>
<div class ="menu-session">
	<form>
	  <input type="text" placeholder="Buscador"/>
	  <button type="button">Buscar</button>
	</form>
</div>
	</div>
		<div class="contenido">
		  <div class="mesa mesa-session" >
		    <!-- formulario iniciar seccion-->			
			    <div class="formulario-session" id="Formlogin">						
						<form name="frmUsuario" action="../../usuariosServlet" id="form1" class="formlogin" method="POST">
							<div class="avatar">
    								<img src="paciente/imagenes/avatar.png" width="150" style="border-radius: 5pc; padding-top:5px;">
    							</div>
							<h1 class="h1-session">Iniciar Sesión</h1>

							<div class="formularrioodonto">
								<label for ="txtUsu">Usuario</label>
								<input type="text" class="mover lettersonly "  id="txtUsu" required name="txtUsu" value=""  placeholder=""/>
					       </div>  
							
							<div class="formularrioodonto">
								<label for ="txtPasw">Contraseña</label>
								<input type="password" name="txtPasw" id="txtPasw" class="mover"required  value=""  placeholder=""/>
							</div>
							<div class="formularrioodonto">
								<label  class="ayuda"><a onClick="OcultarForm('Formlogin','Recuperar');" href="#">Recordar Contraseña ?</a></label>
							</div>
							<input type="submit" name="btnLogin" value="Ingresar">
                                                              <div class="style3"><%if(request.getParameter("msg")!= null){  out.print(request.getParameter("msg")); } %>  </div>
						</form>
			    </div>
            <!-- formulario recuperar contrasena-->
                <div class="formulario-session" style="display:none;" id="Recuperar">                       
                        <form class="formlogin" id="form2"> 
                            <h1 class="h1-session">Smile System</h1>                            
                            <div class="formularrioodonto">
                                <label for ="correo">E-mail</label>
                                <input type="text" name="correo" id="correo" class="mover" required max-length="20" tabindex="2" value=""  placeholder="m@correo.com"/>
                            </div>
                            <input type="submit" value="Enviar">
                        </form>
                </div>
		  </div>   
</div>
<div class="pie">
	 <ul>
        <li  >
            <a href="http://www.facebook.com" target='_blank'>
                <img src="imagenes/face.png" alt="facebook" width="35" height="35"/>
            </a>
            <a href="http//:facebook.com" target='_blank'></a>
        </li>
        <li >
            <a href="http://www.youtube.com/" target='_blank'>
                <img  src="imagenes/youtu.png" alt="youtube" width="35" height="35"/>
            </a>
            <a href="http//:youtube.com" target='_blank'></a>
        </li>
        <li>
            <a href="http://twitter.com/" target='_blank'>
                <img  src="imagenes/tuiter.png" alt="twitter" width="35" height="35"/>
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