<html>
<head>
  
	<title>Smile System</title>
    <meta charset="utf-8" />
    <link rel="shortcut icon" href="../imagenes/favicon.ico" />
    <link href="../estilos/footer.css" rel="stylesheet" type="text/css">
    <link href="../estilos/secre.css" rel="stylesheet" type="text/css">
    <script src="../js/jquery.js"></script>
    <script src="../js/jquery.validate.js"></script>
	<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto+Slab' rel='stylesheet' type='text/css'>
	<script type="text/javascript">        
         $(document).ready(function() {

		//codigo para validar que los campos solo sean letras
		jQuery.validator.addMethod("lettersonly", function(value, element) {
		  return this.optional(element) || /^[a-z]+$/i.test(value);
		}, "Digite solo caracteres");

		// sirve para bloquear los campos input
	    $('.bloqueado').attr('disabled', 'disabled');
	    $('.nobloqueado').attr('disabled', 'disabled');

	    //sirve para desbloquear los campos input y ocultar el boton actualizar
	    $('#actualizar').click(function(){
	    	$('.bloqueado').removeAttr('disabled');
	    	$('#actualizar').hide();
	    	$('#guardar').show();
	    });

	    // sirver para validar los campos del formulario
	    $('#form1').validate({
	    	rules:{
	    		Cedula:{
	    			required: true,
	    			number: true,
	    			minlength:8,
	    			maxlength:10
	    		},
	    		Telefono:{
	    			required: true,
	    			number: true,
	    			minlength:8,
	    			maxlength:10
	    		},
	    		Direccion:{
	    			required: true,
	       			minlength:10,
	    			maxlength:30
	    		}
	    	},
	    	messages:{
	    		Cedula:{
			        required: "Este campo es Requerido",
			        number: "El campo debe ser NumÃ©rico ",
				minlength:"Son {0} digitos MÃ­nimo  ",
	    			maxlength:"Son {0} digitos MÃ¡ximo"
				},
				Telefono:{
	    			required: "Este campo es Requerido",
	    			number: "El campo debe ser NumÃ©rico ",    			
	    			minlength:"Son {0} digitos MÃ­nimo  ",
	    			maxlength:"Son {0} digitos MÃ¡ximo"
	    		},
	    		email:{
	    			email: "DirecciÃ³n de correo invalida"
	    		},
	    		Direccion:{
	    			required: "Este campo es Requerido",
	    			minlength:"Son {0} digitos MÃ­nimo  ",
	    			maxlength:"Son {0} digitos MÃ¡ximo"

	    		}
	    	},
	    	submitHandler: function(form) {
			    alert('Los datos fueron registrados Correctamente ');
			    $('.bloqueado').attr('disabled', 'disabled');
	            $('#guardar').hide();
	            $('#actualizar').show();
			  }
	    });
	});
	</script>
</head>
<body>
    
	<div class="logo">
        <div id="idiomas">
        <a href="../../sitioes/Secre/perfil.jsp">Español</a> // <a href="../../sitioen/Secre/perfil.jsp">Ingles</a>
        </div>
        <img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
</div>
	<div class="menu">
		<div class="tags">
                <a href="iniciarsesion.jsp"><strong>Iniciar Sesión</strong></a>
                <a href="#"><strong>Perfil Secretaria</strong></a>
            </div>
		<div class ="menu-session">     
            <button type="button" onClick="javascript:window.location='../index.jsp'">Cerrar Sesión </button>
         </div>
         <div class ="menu-session">
                <span style="color: white;"> -</span>
                 <span style="color: white;">Secretaria </span>                  
        </div>
	</div>
	<div class="contenido">
		<div class="menu2 menu2-perfil">
			<ul id="submenu">
				<li><img class="vector" src="imagenes/vector.png " width="70"	height="70"></li>		
				<li><a href="perfil.jsp">Perfil Secretaria </a></li>	
				 <li><a href="registro.jsp">Registrar Paciente </a></li>									
			    <li><a href="citas.jsp">Citas Paciente</a></li>
			    <li><a href="ingresarhistorial.jsp">Historial Odontologico </a></li>
			</ul>
		</div>
	   <div class="mesa">
	   		<form name="form1" id="form1" action="" method="POST">
				<div class="lado1">	       				
					<h1>Datos Personales </h1>
					
					<div class="formulario">
						<label for ="Nombre Completo">Nombres</label>
						<input type="text" class="nobloqueado lettersonly" id="Nombre Completo" required name="Nombre Completo" value="" max-length="20" placeholder="Juan Carlos"/>
					</div>               
					<div class="formulario">
						<label for ="ApellidoCompleto">Apellidos</label>
						<input type="text" max-length="20" class="nobloqueado lettersonly" required id="ApellidoCompleto" value="" name="ApellidoCompleto"placeholder="lopez Vargas"/>
					</div>               
					
					<div class="formulario">
						<label for ="Cedula">Cedula</label>
						<input type="text" max-length="20" class="nobloqueado" required id="Cedula" value="" name="Cedula" placeholder="108140997"/>
					</div>              
					 <div class="formulario">
						<label for ="Grupo sanguineo " class=""> Grupo Sanguineo</label>
						<select for="Grupo sanguÃ­neo " name="Grupo sanguineo  " id="Grupo sanguineo  " required class="nobloqueado">
							<option value="1"> - Seleccione -</option>
							<option value="2">O+</option>
							<option value="3"SELECTED>O-</option>
							<option value="4">A+ </option>
							<option value="5">A-</option>
							<option value="6">B+</option>
							<option value="7">B-</option>
							<option value="8" > AB+</option>
							<option value="9">AB-</option>											
						</select>
                    </div> 
                    <div class="formulario">
						<label for ="TipoAlergia" class="">Tipo Alergia</label>
						<input type="text" class="nobloqueado lettersonly " id="TipoAlergia" required name="TipoAlergia" value="" max-length="20" placeholder="Respiratorio"/>
					</div>             
					<div class="formulario">
						<label for ="FechaNacimiento" class="">Fecha Nacimiento</label>
						<input type="date" max-length="20" class="nobloqueado" required id="FechaNacimiento" value="" name="FechaNacimiento" placeholder="18-09-1991"/>
	                </div>
	                <div class="formulario">
						<label for ="LugardeNacimiento" class="">Lugar de Nacimiento</label>
	 					<input type="text" max-length="20" class="lettersonly nobloqueado" required id="LugardeNacimiento" value="" name="LugardeNacimiento" placeholder="Bogotá "/>
	                </div>
	                                  
				</div>
	       		<div class="lado2">
	       		<h1>Datos de Contacto </h1>				
					<div class="formulario">
						<label for ="email" class="InputRequired">Correo Electrónico</label>
						<input type="text"id="email" class="bloqueado email" name="email" required value="" max-length="20" placeholder="usuario7@correo.com"/>
					</div>
					<div class="formulario">
						<label for ="Telefono" class="InputRequired">Teléfono </label>
						<input type="text" class="bloqueado" id="Telefono" required name="Teléfono" value="" max-length="20" placeholder="3214589900"/>
					</div>
					<div class="formulario">
						<label for ="Direccion" class="InputRequired"> Dirección </label>
						<input type="text" id="Direccion" class="bloqueado" name="Direccion" required value=""  max-length="20" placeholder="calle 123 # 89-90"/>
					</div>
					<div class="formulario">
						<label for ="Ciudad" class="InputRequired"> Ciudad </label>
						<select for="ciudad" name="Ciudad" id="Ciudad" required class="bloqueado">
							<option> - seleccione -</option>
							<option value="1">Bogotá</option>
							<option value="2">Cali</option>
							<option value="3" selected> Medellén </option>
							<option value="4">Neiva</option>										
						</select>
					</div>
					<div class="formulario">
						<label for ="Nombre" class="InputRequired"> Genero</label>
						<div class="Genero">						
							<input type="radio" name="sexo" value="hombre" checked="checked" class="Genero " />Hombre
						</div>
						<div class="Genero">
							<input type="radio" name="sexo" value="mujer" class="Genero "/> Mujer
						</div>
						<div class="Genero">	
							<input type="radio" name="sexo" value="otros" class="Genero "/> Otro
						</div>						                               
					</div>
					<button type="button" class="boton" id="actualizar">Actualizar</button>	                
	                <button type="submit" class="boton" style="display:none" id="guardar">Guardar</button>
	                <p> Todos los campos mardacos con * son requeridos</p>
	                 
			</form>			                     
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
