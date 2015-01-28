<html>
<head>
<script src="js/jquery.js"></script>
<script src="js/jquery.validate.js"></script>
<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Slab' rel='stylesheet' type='text/css'>
<link href="../estilos/footer.css" rel="stylesheet" type="text/css">
<link href="../estilos/secre.css" rel="stylesheet" type="text/css">
<title>Smile System</title>

<link rel="shortcut icon"  href="../imagenes/favicon.ico" />
<meta charset="utf-8" />
	
<script type="text/javascript">

$(document).ready(function() {

	//codigo para validar que los campos solo sean letras
	jQuery.validator.addMethod("lettersonly", function(value, element) {
	  return this.optional(element) || /^[a-z]+$/i.test(value);
	}, "You can only enter letters");

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
	    			number: true
	    		},
	    		Tel�fono:{
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
					required: "This field is required",
					number: "This field is numeric"
				},
				Tel�fono:{
	    			required: "This field is required",
	    			number: "This field is numeric",	    			
	    			minlength:"They are {0} digits minimum",
	    			maxlength:"They are {0} digits maximum"
	    		},
	    		email:{
	    			required: "This field is required",
	    			email: "Email invalidates"
	    		},
	    		Direccion:{
	    			required: "This field is required",
	    			minlength:"They are {0} digits minimum",
	    			maxlength:"They are {0} digits maximum"

	    		}
	    	},
	    	submitHandler: function(form) {
			    alert('Data were recorded correctly');
			    $('input').attr('disabled', 'disabled');
			    $('select').attr('disabled', 'disabled');
			  }
    });
});



</script>
</head>
<body>
	<div class="logo">
		<div id="idiomas">
		<a href="../../sitioes/Secre/perfil.jsp">Spanish</a> // <a href="../../sitioen/Secre/perfil.jsp">English</a>
		</div>
		<img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
   </div>
	<div class="menu">
		<div class="tags">
                <a href="iniciarsesion.jsp"><strong>Log in</strong></a>
                <a href="#"><strong>Profile Secretary</strong></a>
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
		<div class="menu2 menu2-perfil">
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
					<h1> Personal Data </h1>
					
					<div class="formulario">
						<label for ="Nombre Completo">Names</label>
						<input type="text" class="nobloqueado lettersonly" id="Nombre Completo" required name="Nombre Completo" value="" max-length="20" placeholder="Juan Carlos"/>
					</div>               
					<div class="formulario">
						<label for ="ApellidoCompleto">Sunames</label>
						<input type="text" max-length="20" class="nobloqueado lettersonly" required id="ApellidoCompleto" value="" name="ApellidoCompleto"placeholder="lopez Vargas"/>
					</div>               
					
					<div class="formulario">
						<label for ="Cedula">Writ</label>
						<input type="text" max-length="20" class="nobloqueado" required id="Cedula" value="" name="Cedula" placeholder="108140997"/>
					</div>              
					 <div class="formulario">
						<label for ="Grupo sanguíneo " class=""> Blood type</label>
						<select for="Grupo sanguíneo " name="Grupo sanguíneo  " id="Grupo sanguíneo  " required class="nobloqueado">
							<option value="1"> - select -</option>
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
						<label for ="TipoAlergia" class=""> Allergies</label>
						<input type="text" class="nobloqueado lettersonly " id="TipoAlergia" required name="TipoAlergia" value="" max-length="20" placeholder="Respiratorio"/>
					</div>             
					<div class="formulario">
						<label for ="FechaNacimiento" class="">Date of birth</label>
						<input type="date" max-length="20" class="nobloqueado" required id="FechaNacimiento" value="" name="FechaNacimiento" placeholder="18-09-1991"/>
	                </div>
	                <div class="formulario">
						<label for ="LugardeNacimiento" class="">Place of birth</label>
	 					<input type="text" max-length="20" class="lettersonly nobloqueado" required id="LugardeNacimiento" value="" name="LugardeNacimiento" placeholder="Bogotá "/>
	                </div>
	                                  
				</div>
	       		<div class="lado2">
	       		<h1> Contactol Data </h1>				
					<div class="formulario">
						<label for ="email" class="InputRequired">Email</label>
						<input type="text"id="email" class="bloqueado email" name="email" required value="" max-length="20" placeholder="usuario7@correo.com"/>
					</div>
					<div class="formulario">
						<label for ="Teléfono" class="InputRequired">Phone </label>
						<input type="text" class="bloqueado" id="Teléfono" required name="Teléfono" value="" max-length="20" placeholder="3214589900"/>
					</div>
					<div class="formulario">
						<label for ="Direccion" class="InputRequired"> Street address </label>
						<input type="text" id="Direccion" class="bloqueado" name="Direccion" required value=""  max-length="20" placeholder="calle 123 # 89-90"/>
					</div>
					<div class="formulario">
						<label for ="Ciudad" class="InputRequired"> City </label>
						<select for="ciudad" name="Ciudad" id="Ciudad" required class="bloqueado">
							<option> - select -</option>
							<option value="1">Bogotá</option>
							<option value="2">Cali</option>
							<option value="3" selected> Medellín </option>
							<option value="4">Neiva</option>										
						</select>
					</div>
					<div class="formulario">
						<label for ="Nombre" class="InputRequired"> Gender</label>
						<div class="Genero">						
							<input type="radio" name="sexo" value="hombre" checked="checked" class="Genero " /> Man
						</div>
						<div class="Genero">
							<input type="radio" name="sexo" value="mujer" class="Genero "/> Woman
						</div>
						<div class="Genero">	
							<input type="radio" name="sexo" value="otros" class="Genero "/> Other
						</div>						                               
					</div>
					<button type="button" class="boton" id="actualizar">Update</button>	                
	                <button type="submit" class="boton" style="display:none" id="guardar">Save</button>
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
