<html>
<head>
<title>trabajo nuevo</title>
<link rel="shortcut icon"  href="../imagenes/favicon.ico" />
<meta charset="utf-8" />
<script src="js/jquery.js"></script>
<script src="js/jquery.validate.js"></script>
<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Slab' rel='stylesheet' type='text/css'>
<link href="../estilos/footer.css" rel="stylesheet" type="text/css">
<link href="../estilos/secre.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

$(document).ready(function() {

	//codigo para validar que los campos solo sean letras
	jQuery.validator.addMethod("lettersonly", function(value, element) {
  return this.optional(element) || /^[a-zA-ZáéíóúàèìòùÀÈÌÒÙÁÉÍÓÚñÑüÜ_\s]+$/i.test(value);
   }, "You can only enter letters");

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
    			maxlength:10
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
    			required: "This field is required ",
       			minlength:"They are {0} digits minimum ",
    			maxlength:"They are {0} digits maximum "
    		},
    		ApellidoCompleto:{
    			required: "This field is required ",
       			minlength:"They are {0} digits minimum ",
    			maxlength:"They are {0} digits maximum "
    		},
    		TipoAlergia:{
    			required: "This field is required ",
       			minlength:"They are {0} digits minimum ",
    			maxlength:"They are {0} digits maximum "
    		},
    		Cedula:{
				required: "This field is required ",
				number: "This field is numeric ",
				minlength:"They are {0} digits minimum ",
    			maxlength:"They are {0} digits maximum "
			},
			FechaNacimiento:{
				required: "El campo es requerido"
       			
			},
			LugardeNacimiento:{
				required: "This field is required ",
       			minlength:"They are {0} digits minimum ",
    			maxlength:"They are {0} digits maximum "
			},
			Teléfono:{
    			required: "This field is required ",
    			number: "This field is numeric ",
    			minlength:"They are {0} digits minimum ",
    			maxlength:"They are {0} digits maximum "
    		},
    		email:{
    			required: "This field is required ",
    			email: "Email invalidates "
    		},
    		Direccion:{
    			required: "This field is required",
    			minlength:"They are {0} digits minimum ",
    			maxlength:"They are {0} digits maximum "

    		}

    	},
    	submitHandler: function(form) {
		    alert('Data were recorded correctly ');
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
		<a href="../../sitioes/Secre/registro.jsp">Spanish</a> // <a href="../../sitioen/Secre/registro.jsp">English</a>
		</div>
		<img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
   </div>
	<div class="menu">
		<div class="tags">
                <a href="iniciarsesion.jsp"><strong>Log in</strong></a>
                <a href="#"><strong>Patient Register</strong></a>
              </div>
		<div class ="menu-session">     
            <button type="button" onClick="javascript:window.location='index.jsp'">Sign off </button>
         </div>
         <div class ="menu-session">
                <span style="color: white;">Sandra Vargas  Giraldo  </span>
                 <span style="color: white;">"secretary "</span>                  
        </div>
	</div>
	<div class="contenido">
		<div class="menu2">
			 <ul id="submenu">
			     <li><a href=""><img class="vector" src="imagenes/vector.png " width="70"	height="70"> </a></li>	
				<li><a href="perfil.jsp">Profile Secretary</a></li>	
				 <li><a href="registro.jsp">Patient Register</a></li>									
			    <li><a href="citas.jsp">Patient Appointments</a></li>
			    <li><a href="ingresarhistorial.jsp">History Micromachining</a></li>
			
		     </ul>
		</div>
	   <div class="mesa">
	   		<form name="form1" id="form1" action="" method="POST">
				<div class="lado1">	       				
					<h1>Personal Data </h1>
					
					<div class="formulario">
						<label for ="NombreCompleto">Names</label>
						<input type="text" class="lettersonly limpiar" id="NombreCompleto" required name="NombreCompleto" max-length="20" placeholder="Juan Manuel"/>
					</div>               
					<div class="formulario">
						<label for ="ApellidoCompleto">Surnames</label>
						<input type="text" max-length="20" class="lettersonly limpiar" required id="ApellidoCompleto" name="ApellidoCompleto"placeholder="Lopez Vargas"/>
					</div>               
					
					<div class="formulario">
						<label for ="Cedula">writ </label>
						<input type="text" max-length="20" class="limpiar" required id="Cedula" name="Cedula" placeholder="1081407291"/>
					</div> 
					 <div class="formulario">
						<label for ="Grupo sanguíneo  "> Blood type </label>
						<select for="Grupo sanguíneo " name="Grupo sanguíneo  " id="Grupo sanguíneo  " required class="bloqueado">
							<option value="1"SELECTED> - Select -</option>
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
						<label for ="TipoAlergia">Allergies  </label>
						<input type="text" class="limpiar lettersonly " id="TipoAlergia" required name="TipoAlergia" max-length="20" placeholder="Respiratoria"/>
					</div> 					          
					<div class="formulario">
						<label for ="FechaNacimiento">Date of birth</label>
						<input type="date" max-length="20" class="limpiar" required id="FechaNacimiento" name="FechaNacimiento" placeholder=""/>
	                </div>
	                 <div class="formulario">
						<label for ="LugardeNacimiento">Place of birth </label>
	 					<input type="text" max-length="20" class="bloqueado lettersonly" required id="LugardeNacimiento" value="" name="LugardeNacimiento" placeholder="Bogotá"/>
	                </div>
	            </div>
	       		<div class="lado2">
	       		<h1>Datos de Contacto </h1>				
					<div class="formulario">
						<label for ="email">Email</label>
						<input type="text"id="email" class="email limpiar" name="email" required max-length="20" placeholder="jmarcos003@hotmail.com"/>
					</div>
					<div class="formulario">
						<label for ="Teléfono">Phone </label>
						<input type="text" class="limpiar" id="Teléfono" required name="Teléfono" max-length="20" placeholder="3102004343"/>
					</div>  
					<div class="formulario">
						<label for ="Direccion"> Address </label>
						<input type="text" id="Direccion" class="limpiar" name="Direccion" required  max-length="20" value="" placeholder="Cra 113 22i-71"/>
					</div>
					<div class="formulario">
						<label for ="Ciudad"> City </label>
						<select for="ciudad" name="Ciudad" id="Ciudad" required class="">
							<option> - select -</option>
							<option value="1">Bogotá</option>
							<option value="2">Cali</option>
							<option value="3"> Medellín </option>
							<option value="4">Neiva</option>										
						</select>
					</div>
					
					<div class="formulario">
							<label for ="Nombre"> gender </label>
							<div class="Genero">						
								<input type="radio" name="sexo" value="hombre" checked="checked" class="Genero " />Man
							</div>
							<div class="Genero">
								<input type="radio" name="sexo" value="mujer" class="Genero "/> Women
							</div>
							<div class="Genero">	
								<input type="radio" name="sexo" value="otros" class="Genero "/> Other
							</div>						                               
					</div>                
	                <button type="submit" class="boton" id="guardar">Save</button>
	                 <p> Mardacos All fields with * are required</p>
	               
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
            <a  href="../sitio.jsp">Site Design</a><br>
            <a href="../diccionario/diccionario" target='_blank'>Data Dictionary</a>
        </li>
    </ul>
</div>
</body>
</html>
 