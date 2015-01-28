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
	  return this.optional(element) || /^[a-zA-ZáéíóúàèìòùÀÈÌÒÙÁÉÍÓÚñÑüÜ_\s]+$/i.test(value);
	   }, "Digite solo caracteres");

	    // sirver para validar los campos del formulario
	    $('#form1').validate({
	    	rules:{
	    		NombreCompleto:{
	    			required: true,
	       			minlength:5,
	    			maxlength:25
	    		},
	    		ApellidoCompleto:{
	    			required: true,
	       			minlength:8,
	    			maxlength:25

	    		},
	    		Cedula:{
	    			required: true,
	    			number: true,
	    			minlength:8,
	    			maxlength:13
	    		},
	    		TipoAlergia:{
	    			required: true,
	       			minlength:8,
	    			maxlength:20
	    		},
	    		FechaNacimiento:{
	    			required: true,
	       			
	    		},
	    		LugardeNacimiento:{
	    			required: true,
	       			minlength:4,
	    			maxlength:15
	    		},
	    		Teléfono:{
	    			required: true,
	    			number: true,
	    			minlength:8,
	    			maxlength:10
	    		},
	    		Direccion:{
	    			required: true,
	       			minlength:8,
	    			maxlength:30
	    		}
	    	},
	    	messages:{
	    		NombreCompleto:{
	    			required: "Este campo es Requerido",
	       			minlength:"Son {0} digitos Mínimo  ",
	    			maxlength:"Son {0} digitos Máximo"
	    		},
	    		ApellidoCompleto:{
	    			required: "Este campo es Requerido",
	       			minlength:"Son {0} digitos Mínimo  ",
	    			maxlength:"Son {0} digitos Máximo"
	    		},
	    		TipoAlergia:{
	    			required: "Este campo es Requerido",
	       			minlength:"Son {0} digitos Mínimo  ",
	    			maxlength:"Son {0} digitos Máximo"
	    		},
	    		Cedula:{
					required: "Este campo es Requerido",
					number: "El  campo debe ser Numérico ",
					minlength:"Son {0} digitos Mínimo  ",
	    			maxlength:"Son {0} digitos Máximo"
				},
				FechaNacimiento:{
					required: "El campo es Requerido"
	       			
				},
				LugardeNacimiento:{
					required: "Este campo es Requerido",
	       			minlength:"Son {0} digitos Mínimo  ",
	    			maxlength:"Son {0} digitos Máximo"
				},
				Teléfono:{
	    			required: "Este campo es Requerido",
	    			number: "El campo debe ser Numérico ",
	    			minlength:"Son {0} digitos Mínimo  ",
	    			maxlength:"Son {0} digitos Máximo"
	    		},
	    		email:{
	    			email: "Dirección de correo invalida"
	    		},
	    		Direccion:{
	    			required: "Este campo es Requerido",
	    			minlength:"Son {0} digitos Mínimo  ",
	    			maxlength:"Son {0} digitos Máximo"

	    		}

	    	},
	    	submitHandler: function(form) {
			    alert('Los datos fueron registrados Correctamente ');
			    $('input[type="text"],textarea,date').val('');
			    $("select").prop('selectedIndex', 0);
			  }
	    });
	});
	</script>
</head>
<body>
	<div class="logo">
        <div id="idiomas">
        <a href="../../sitioes/Secre/registro.jsp">Espa�ol</a> // <a href="../../sitioen/Secre/registro.jsp">Ingles</a>
        </div>
        <img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
   </div>
	<div class="menu">
		<div class="tags">
                <a href="iniciarsesion.jsp"><strong>Iniciar Sesi�n</strong></a>
                <a href="#"><strong>Registrar Paciente</strong></a>
            </div>
		<div class ="menu-session">     
            <button type="button" onClick="javascript:window.location='../index.jsp'">Cerrar Sesi�n </button>
         </div>
         <div class ="menu-session">
                <span style="color: white;">Sandra Vargas  Giraldo  -</span>
                 <span style="color: white;">Secretaria </span>                  
        </div>
	</div>
	<div class="contenido">
		<div class="menu2">
			<ul id="submenu">
				<li><img class="vector" src="imagenes/vector.png " width ="70"	height="70"></li>	
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
						<label for ="NombreCompleto">Nombres</label>
						<input type="text" class="lettersonly limpiar" id="NombreCompleto" required name="NombreCompleto" max-length="20" placeholder="Juan Manuel"/>
					</div>               
					<div class="formulario">
						<label for ="ApellidoCompleto">Apellidos</label>
						<input type="text" max-length="20" class="lettersonly limpiar" required id="ApellidoCompleto" name="ApellidoCompleto" placeholder="Lopez Vargas"/>
					</div>               
					
					<div class="formulario">
						<label for ="Cedula">Cedula</label>
						<input type="text" max-length="20" class="limpiar" required id="Cedula" name="Cedula" placeholder="1081407291"/>
					</div> 
                                        <div class="formulario">
						<label for ="Tipo" >Tipo Documento</label>
						<select for="Tipo"  requerid class="bloqueado" name="Tipo" id="Tipo" >
								<option> - Seleccione -</option>
								<option value="1">Documento de Identidad</option>
								<option value="2">Cedula Ciudadana</option>																	
					   </select>
					</div>
                                        
					 <div class="formulario">
						<label for ="Grupo"> Grupo sangu�neo</label>
						<select for="Grupo " name="Grupo" id="Grupo" required class="bloqueado">
							<option value="1"SELECTED> - seleccione -</option>
							<option value="2">O+</option>
							<option value="3">O-</option>
							<option value="4">A+ </option>
							<option value="5">A-</option>
							<option value="6">B+</option>
							<option value="7">B-</option>
							<option value="8" > AB+</option>
							<option value="9">AB-</option>											
						</select>
                    </div>   
                    <div class="formulario">
						<label for ="TipoAlergia">Tipo Alergia </label>
						<input type="text" class="limpiar lettersonly " id="TipoAlergia" required name="TipoAlergia" max-length="20" placeholder="Respiratoria"/>
					</div> 					          
					<div class="formulario">
						<label for ="FechaNacimiento">Fecha Nacimiento</label>
						<input type="date" max-length="20" class="limpiar" required id="FechaNacimiento" name="FechaNacimiento" placeholder=""/>
	                </div>
	                 <div class="formulario">
						<label for ="LugardeNacimiento">Lugar de Nacimiento</label>
	 					<input type="text" max-length="20" class="bloqueado lettersonly" required id="LugardeNacimiento" value="" name="LugardeNacimiento" placeholder="Bogotá"/>
	                </div>
	            </div>
	       		<div class="lado2">
	       		<h1>Datos de Contacto </h1>				
					<div class="formulario">
						<label for ="email">Correo Electr�nico</label>
						<input type="text" id="email" class="email limpiar" name="email" required max-length="20" placeholder="jmarcos003@hotmail.com"/>
					</div>
					<div class="formulario">
						<label for ="Telefono">Tel�fono </label>
						<input type="text" class="limpiar" id="Telefono" required name="Telefono" max-length="20" placeholder="3102004343"/>
					</div>  
					<div class="formulario">
						<label for ="Direccion"> Direcci�n </label>
						<input type="text" id="Direccion" class="limpiar" name="Direccion" required  max-length="20" value="" placeholder="Cra 113 22i-71"/>
					</div>
					<div class="formulario">
						<label for ="Ciudad"> Ciudad </label>
						<select for="ciudad" name="Ciudad" id="Ciudad" required class="">
							<option> - seleccione -</option>
							<option value="1">Bogot�</option>
							<option value="2">Cali</option>
							<option value="3"> Medell�n </option>
							<option value="4">Neiva</option>										
						</select>
					</div>
					
					<div class="formulario">
							<label for ="Genero"> Genero</label>
							<div class="Genero">						
								<input type="radio" name="Genero" value="hombre" checked="checked" class="Genero " />Hombre
							</div>
							<div class="Genero">
								<input type="radio" name="Genero" value="mujer" class="Genero "/> Mujer
							</div>
							<div class="Genero">	
								<input type="radio" name="Genero" value="otros" class="Genero "/> Otro
							</div>						                               
					</div>                
	                
                        <input type="hidden" name="rUsuario" id="rUsuario" value="" />
                        <input type="submit"   class="boton"  id="guardar" value="Guardar" name="guardarUsuario" />
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
            <a  href="../sitio.jsp">Dise�o del sitio</a><br>
            <a href="../diccionario/diccionario" target='_blank'>Diccionario de datos</a>
        </li>
    </ul>
</div>
</body>
</html>
 