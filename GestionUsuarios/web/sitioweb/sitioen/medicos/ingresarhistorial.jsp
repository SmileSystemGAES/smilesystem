<html>
<head>
<script src="js/jquery.js"></script>
<script src="js/jquery.validate.js"></script>
<title>Smile System</title>
<link rel="shortcut icon"  href="../imagenes/favicon.ico" />
<link href="../estilos/footer.css" rel="stylesheet" type="text/css">
<link href="../estilos/medico.css" rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Slab' rel='stylesheet' type='text/css'>
<meta charset="utf-8" />
	
<script type="text/javascript">

$(document).ready(function() {

	//codigo para validar que los campos solo sean letras
	jQuery.validator.addMethod("lettersonly", function(value, element) {
  return this.optional(element) || /^[a-zA-ZáéíóúàèìòùÀÈÌÒÙÁÉÍÓÚñÑüÜ_\s]+$/i.test(value);
   }, "You can only enter letters");	   

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
    		},
    		selectTipo:{

    			required: function () {
                   if ($("#selectTipo").val() == "" ) {
                       return false;
                   } else {
                       return true;
                   }
               }
    		}
    	},
    	messages:{
    		Nombre:{
				required: "The field is required ",
				minlength:"They are {0} digits minimum ",
    			maxlength:"They are {0} digits maximum "
			},
			password:{
    			required: "The field is required ",
    			number: "The field must be numeric ",
    			minlength:"They are {0} digits minimum ",
    			maxlength:"They are {0} digits maximum "
    		}
    	}/*,
    	submitHandler: function(form) {
            alert($("#selectTipo").val());
         }*/
    });
});
</script>


</head>
<body>
<div class="logo">
		<div id="idiomas">
		<a href="../../sitioes/medicos/ingresarhistorial.jsp">Spanish</a> // <a href="../../sitioen/medicos/ingresarhistorial.jsp">English</a>
		</div>
		<img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
 </div>
<div class="menu">
         <div class="tags">
                <a href="iniciarsesion.jsp"><strong>Log in</strong></a>
                <a href="#"><strong>Enter History</strong></a>               
              </div>
       <div class ="menu-session">     
            <button type="button" onClick="javascript:window.location='index.jsp'">Sign off </button>
         </div>
         <div class ="menu-session">
                <span style="color: white;">Juan Carlos Martinez  </span>
                 <span style="color: white;">"Medic "</span>                  
        </div>
</div>
	<div class="contenido">
			<div class="menu2">
				<ul id="submenu">
					 <li><img class="vector" src="imagenes/vector.png " width="50" height="50"></li>
                    <li><a href="perfil.jsp">Physician Profile </a></li>                                       
                    <li><a href="citas.jsp">Patient Quote </a></li>
                    <li><a href="ingresarhistorial.jsp">Patient History.</a></li>
                     <li><a href="agendamedico.jsp">Medical Calendar</a></li>
				</ul>
		</div>
	       <div class="mesa">
<div class="lado1">
	<div class="lado1">
		<div class="formulario-session form-gris">
					<form action="historial.jsp" id="form1" class="form-format1" method="POST"> 
						<h1 class="h1-session">Smile System</h1>	
						
						<div class="formularrioodonto">
							<label for ="Contraseña"> Document</label>
							<input type="password" name="password" id="Contraseña" required max-length="20" value=""  placeholder="1081407291"/>
						</div>
						<input type="submit" value="Sign In">
					</form>
		</div>
    </div>            

 </div> 
 <div class="lado2">	       	
		 <img src="imagenes/imagenes.png" width="400" height="400" class="dibujo"> 
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
