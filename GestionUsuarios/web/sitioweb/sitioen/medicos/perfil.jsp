<html>
<head>
<title>Smile System</title>
<meta charset="utf-8" />
<link rel="shortcut icon" href="../imagenes/favicon.ico" />
<script src="js/jquery.js"></script>
<script src="js/jquery.validate.js"></script>
 <link href="../estilos/footer.css" rel="stylesheet" type="text/css">
<link href="../estilos/medico.css" rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Slab' rel='stylesheet' type='text/css'>
	

<script type="text/javascript">

//codigo para validar que los campos solo sean letras
jQuery.validator.addMethod("lettersonly", function(value, element) {
  return this.optional(element) ||  /^[a-zA-Z·ÈÌÛ˙‡ËÏÚ˘¿»Ã“Ÿ¡…Õ”⁄Ò—¸‹_\s]+$/i.test(value);
}, "You can only enter letters");

$(document).ready(function() {

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
    		Direccion:{
    			required: true,
       			minlength:10,
    			maxlength:30
    		},
    		Telefono:{
    			required: true,
    			number: true,
    			minlength:10,
    			maxlength:10
    		}
    	},
    	messages:{
    		Direccion:{
			    required: "The field is required ",
    			minlength:"They are {0} digits minimum",
    			maxlength:"They are {0} digits maximum"
			},
			Tel√©fono:{
    			required: "The field is required ",
    			number: "The field must be numeric",
    			minlength:"They are {0} digits minimum",
    			maxlength:"They are {0} digits maximum"
    		},
    		email:{
                required: "The field is required ",
    			email: "Email invalidates"
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
        <a href="../../sitioes/medicos/perfil.jsp">Spanish</a> // <a href="../../sitioen/medicos/perfil.jsp">English</a>
        </div>
        <img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
   </div>
    <div class="menu">
        <div class="tags">
                <a href="iniciarsesion.jsp"><strong>Log in</strong></a>
                <a href="#"><strong>Physician Profile </strong></a>
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
            <form name="form1" id="form1" action="" method="POST">
                <div class="lado1">                     
                    <h1>Personal Information.  </h1>
                    
                    <div class="formulario">
                        <label for ="NombreCompleto">Names </label>
                        <input type="text" class="nobloqueado lettersonly" id="NombreCompleto" required name="NombreCompleto" value="" max-length="20" placeholder="Andr√©s Felipe"/>
                    </div>               
                    <div class="formulario">
                        <label for ="ApellidoCompleto">Surnames </label>
                        <input type="text" max-length="20" class="nobloqueado lettersonly" required id="ApellidoCompleto" value="" name="ApellidoCompleto" placeholder="Torres"/>
                    </div>               
                    
                    <div class="formulario">
                        <label for ="Cedula">Writ </label>
                        <input type="text" max-length="20" class="nobloqueado" required id="Cedula" value="" name="Cedula" placeholder="108140997"/>
                    </div>              
                                
                    <div class="formulario">
                        <label for ="FechaNacimiento">Date of birth</label>
                        <input type="date" max-length="20" class="nobloqueado" required id="FechaNacimiento" value="" name="FechaNacimiento" placeholder="18-09-1991"/>
                    </div>
                     <div class="formulario">
                        <label for ="LugardeNacimiento">Place of birth</label>
                        <input type="text" max-length="20" class="nobloqueado lettersonly" required id="LugardeNacimiento" value="" name="LugardeNacimiento" placeholder="Bogot√°"/>
                    </div>
                     <div class="formulario">
                        <label for ="Tel√©fono" class="InputRequired">TPhone </label>
                        <input type="text" class="bloqueado" id="Tel√©fono" required name="Tel√©fono" value="" max-length="20" placeholder="3132043564"/>
                    </div> 
                     <p> Mardacos All fields with * are required</p>
                    </div>

                <div class="lado2">
                    <h1>Contact data.</h1>             
                    <div class="formulario">
                 <div class="formulario">
                        <label for ="email" class="InputRequired">Email </label>
                        <input type="text"id="email" class="bloqueado email" name="email" required value="" max-length="20" placeholder="jmcarlos@correo.com"/>
                    </div>
                    
                        <label for ="Direccion" class="InputRequired"> Street address </label>
                        <input type="text" id="Direccion" class="bloqueado" name="Direccion" required value=""  max-length="20" placeholder="calle 58 # 89-90"/>
                    </div>
                    <div class="formulario">
                        <label for ="Ciudad" class="InputRequired"> City</label>
                        <select for="ciudad" name="Ciudad" id="Ciudad" required class="bloqueado">
                            <option> - Select -</option>
                            <option value="1">Bogot√°</option>
                            <option value="2">Cali</option>
                            <option value="3" selected> Medell√≠n </option>
                            <option value="4">Neiva</option>                                        
                        </select>
                    </div>
                    <div class="formulario">
                        <label for ="Especialidad"> Specialty </label>
                        <select name="select" name="Pais" id="Pais" required class="bloqueado">
                            <option value="1">Periodontics</option>
                            <option value="2">Endodontics </option>
                            <option value="3" selected>Dentistry </option>
                            <option value="4"> Orthodontics </option>    
                            <option value="4">Orthodontics </option>
                            <option value="4">Geriatric Dentistry</option>
                            <option value="4">Maxillofacial Surgery  </option>
                        </select>
                    </div>
                    <div class="formulario">
                        <label for ="No.TarjetaProfesional"> No. professional card </label>
                        <input type="text" id="No.TarjetaProfesional" class="nobloqueado" name="No.TarjetaProfesional" required value=""  max-length="20" placeholder="9032456"/>
                    </div>
                    <div class="formulario">
                            <label for ="Nombre"> Gender </label>
                            <div class="Genero">                        
                                <input type="radio" name="sexo" value="hombre" checked="checked" class="Genero " />Man
                            </div>
                            <div class="Genero">
                                <input type="radio" name="sexo" value="mujer" class="Genero "/> Women 
                            </div>
                            <div class="Genero">    
                                <input type="radio" name="sexo" value="otros" class="Genero "/>Other       
                            </div>                                                     
                    </div>     
                    <button type="button" class="boton" id="actualizar">Update </button>                 
                    <button type="submit" class="boton" style="display:none" id="guardar">Save</button>

                    
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
 