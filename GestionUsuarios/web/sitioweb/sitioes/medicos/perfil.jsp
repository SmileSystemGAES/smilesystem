<html>
<head>
<title>Smile System</title>
<meta charset="utf-8" />
<link rel="shortcut icon" href="../imagenes/favicon.ico" />
<script src="../js/jquery.js"></script>
<script src="../js/jquery.validate.js"></script>
<link href="../estilos/footer.css" rel="stylesheet" type="text/css">
<link href="../estilos/medico.css" rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Slab' rel='stylesheet' type='text/css'>
<script type="text/javascript">

//codigo para validar que los campos solo sean letras
jQuery.validator.addMethod("lettersonly", function(value, element) {
  return this.optional(element) || /^[a-zA-ZáéíóúàèìòùÀÈÌÒÙÁÉÍÓÚñÑüÜ_\s]+$/i.test(value);
}, "Digite solo caracteres");

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
    		Teléfono:{
    			required: true,
    			number: true,
    			minlength:10,
    			maxlength:10
    		}
    	},
    	messages:{
    		Direccion:{
			    required: "Este campo es Requerido",
    			minlength:"Son {0} digitos Mínimo  ",
    			maxlength:"Son {0} digitos Máximo"
			},
			Teléfono:{
    			required: "Estecampo es Requerido",
    			number: "El campo debe ser Numérico ",
    			minlength:"Son {0} digitos Mínimo  ",
    			maxlength:"Son {0} digitos Máximo"
    		},
    		email:{
    			email: "Dirección de correo invalida"
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
        <a href="../../sitioes/medicos/perfil.jsp">Español</a> // <a href="../../sitioen/medicos/perfil.jsp">Ingles</a>
        </div>
        <img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
</div>
    <div class="menu">
            <div class="tags">
                <a href="iniciarsesion.jsp"><strong>Iniciar Sesión</strong></a>
                <a href="#"><strong>Perfil</strong></a>
            </div>
            <div class ="menu-session">         
                      
                    <button type="button" onClick="javascript:window.location='../index.jsp'">Cerrar Sesión </button>
                 
            </div>
            <div class ="menu-session">
                <span style="color: white;">Juan Carlos Martinez -</span>
                <span style="color: white;">Médico</span>
            </div>
    </div>
    <div class="contenido">
        <div class="menu2">
            <ul id="submenu">
                <li><img class="vector" src="imagenes/vector.png " width"50" height="50"></li>
                <li><a href="perfil.jsp">Perfil Médico </a></li>                                        
                <li><a href="citas.jsp">Citar Paciente</a></li>
                <li><a href="ingresarhistorial.jsp">Historial  Paciente </a></li>
                 <li><a href="agendamedico.jsp">Agenda del Médico</a></li>
            </ul>
        </div>
       <div class="mesa">
            <form name="form1" id="form1" action="" method="POST">
                <div class="lado1">                     
                    <h1>Datos Personales </h1>
                    
                    <div class="formulario">
                        <label for ="NombreCompleto">Nombres</label>
                        <input type="text" class="nobloqueado lettersonly" id="NombreCompleto" required name="NombreCompleto" value="" max-length="20" placeholder="Andrés Felipe"/>
                    </div>               
                    <div class="formulario">
                        <label for ="ApellidoCompleto">Apellidos</label>
                        <input type="text" max-length="20" class="nobloqueado lettersonly" required id="ApellidoCompleto" value="" name="ApellidoCompleto" placeholder="Torres"/>
                    </div>               
                    
                    <div class="formulario">
                        <label for ="Cedula">Cedula</label>
                        <input type="text" max-length="20" class="nobloqueado" required id="Cedula" value="" name="Cedula" placeholder="108140997"/>
                    </div>              
                                
                    <div class="formulario">
                        <label for ="FechaNacimiento">Fecha Nacimiento</label>
                        <input type="date" max-length="20" class="nobloqueado" required id="FechaNacimiento" value="" name="FechaNacimiento" placeholder="18-09-1991"/>
                    </div>
                     <div class="formulario">
                        <label for ="LugardeNacimiento">Lugar de Nacimiento</label>
                        <input type="text" max-length="20" class="nobloqueado lettersonly" required id="LugardeNacimiento" value="" name="LugardeNacimiento" placeholder="Bogotá"/>
                    </div>
                     <div class="formulario">
                        <label for ="Teléfono" class="InputRequired">Teléfono </label>
                        <input type="text" class="bloqueado" id="Teléfono" required name="Teléfono" value="" max-length="20" placeholder="3132043564"/>
                    </div> 
                     <p> Todos los campos mardacos con * son requeridos</p>
                    </div>

                <div class="lado2">
                    <h1>Datos de Contacto </h1>             
                    <div class="formulario">
                 <div class="formulario">
                        <label for ="email" class="InputRequired">Correo Electrónico</label>
                        <input type="text"id="email" class="bloqueado email" name="email" required value="" max-length="20" placeholder="jmcarlos@correo.com"/>
                    </div>
                    
                        <label for ="Direccion" class="InputRequired"> Dirección </label>
                        <input type="text" id="Direccion" class="bloqueado" name="Direccion" required value=""  max-length="20" placeholder="calle 58 # 89-90"/>
                    </div>
                    <div class="formulario">
                        <label for ="Ciudad" class="InputRequired"> Ciudad </label>
                        <select for="ciudad" name="Ciudad" id="Ciudad" required class="bloqueado">
                            <option> - seleccione -</option>
                            <option value="1">Bogotá</option>
                            <option value="2">Cali</option>
                            <option value="3" selected> Medellín </option>
                            <option value="4">Neiva</option>                                        
                        </select>
                    </div>
                    <div class="formulario">
                        <label for ="Especialidad"> Especialidad </label>
                        <select name="select" name="Pais" id="Pais" required class="bloqueado">
                            <option value="1">Odontología</option>
                            <option value="2">Periodoncia </option>
                            <option value="3" selected>Endodoncia </option>
                            <option value="4">Odontopediatría  </option>    
                            <option value="4">Ortodoncia </option>
                            <option value="4">Odontogeriatría </option>
                            <option value="4">Cirugía maxilofacial  </option>
                        </select>
                    </div>
                    <div class="formulario">
                        <label for ="No.TarjetaProfesional"> No.TarjetaProfesional</label>
                        <input type="text" id="No.TarjetaProfesional" class="nobloqueado" name="No.TarjetaProfesional" required value=""  max-length="20" placeholder="9032456"/>
                    </div>
                    <div class="formulario">
                            <label for ="Nombre"> Genero</label>
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
                    <input type="submit" class="boton" style="display:none" id="guardar" value="Guardar">
                    

                    
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
 