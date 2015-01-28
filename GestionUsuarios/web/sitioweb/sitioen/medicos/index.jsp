<html>
<head>
<title>Smile System</title>
<meta charset="utf-8" />
<link rel="shortcut icon" href="../imagenes/favicon.ico" />
<link href="../estilos/footer.css" rel="stylesheet" type="text/css">
<link href="../estilos/css.css" rel="stylesheet" type="text/css">
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
   }, "You can only enter letters");

    // sirver para validar los campos del formulario
    $('#form1').validate({
    	rules:{
    		
    		password:{
    			required: true,
    			number: true,
    			minlength:8,
    			maxlength:10
    		},
    		Nombre:{
    			required: true,
       			minlength:8,
    			maxlength:15

    		}
    		
    	},
    	messages:{
    		
			password:{
    			required: "The field is required",
    			number: "The field must be numeric",
    			minlength:"They are {0} digits minimum",
    			maxlength:"They are {0} digits maximum"
    		},
    		Nombre:{
    			required: "The field is required",
       			minlength:"They are {0} digits minimum",
    			maxlength: "They are {0} digits maximum"

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
    			required: "The field is required",
    			email: "The Email is invalid"
    		}
    	},
        submitHandler: function(form) {
            alert('Your password has been sent to this email');
            OcultarForm('Recuperar','Formlogin');
        }
    });

});
</script>


</head>

<body>
	<div class="logo">
		<div id="idiomas">
		<a href="../../sitioes/medicos/index.jsp">Spanish</a> // <a href="../../sitioen/medicos/index.jsp">English</a>
		</div>
		<img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
   </div>
<div class="menu">
		<ul>
			    <li><a href="../inicio.jsp">Home </a></li>
			    <li><a href="../quienessomos.jsp">Who are we? </a></li>
			    <li><a href="../servicios.jsp"> Services </a></li>
			    <li><a href="../contactenos.jsp">Contáctenos</a></li>
			    <li><a href="#">Empledos </a>
			      <ul class="submenu">
			          <li><a href="../medicos/index.jsp">profesioonal </a></li>
			          <li><a href="../Secre/index.jsp">administrative </a></li>
			      </ul>
			    </li>
			    <li><a href="../paciente/index.jsp">Affiliate </a></li>
			     <li><a href="../preguntas.jsp">concerns.</a></li>
		</ul>
		 <div class ="menu-session">
		    <form>
		      <input type="text" placeholder="Buscador"/>
		      <button type="button">Search</button>
		    </form>
		  </div>
</div>
		<div class="contenido">
		  <div class="mesa mesa-session" >
		    <!-- formulario iniciar seccion-->			
			    <div class="formulario-session" id="Formlogin">						
						<form action="iniciarsesion.jsp" id="form1" class="formlogin" method="POST">
							<div class="avatar">
    								<img src="imagenes/avatar.png" width="150" style="border-radius: 5pc; padding-top:5px;">
    							</div>
							<h1 class="h1-session">Professional</h1>

							<div class="formularrioodonto">
								<label for ="Nombre">User</label>
								<input type="text" class="mover lettersonly " tabindex="1" id="Nombre" required name="Nombre" value="" max-length="20" placeholder="jmvargas"/>
					       </div>  
							
							<div class="formularrioodonto">
								<label for ="Nombre">Password</label>
								<input type="password" name="password" class="mover"required max-length="20" tabindex="2" value=""  placeholder="1081407291"/>
							</div>
							<div class="formularrioodonto">
								<label  class="ayuda"><a onClick="OcultarForm('Formlogin','Recuperar');" href="#">Remember Password ?</a></label>
							</div>
							<input type="submit" value="log in">
						</form>
			    </div>
			<!-- formulario recuperar contrasena-->
			    <div class="formulario-session" style="display:none;" id="Recuperar">						
						<form class="formlogin" id="form2"> 
							<h1 class="h1-session">Smile System</h1>							
							<div class="formularrioodonto">
								<label for ="correo">E-mail</label>
								<input type="text" name="correo" id="correo" class="mover"required max-length="20" tabindex="2" value=""  placeholder="m@correo.com"/>
							</div>
							<input type="submit" value="Send">
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