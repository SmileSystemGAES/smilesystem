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

		// sirve para bloquear los campos input
	    $('.bloqueado').attr('disabled', 'disabled');

	    //sirve para desbloquear los campos input y ocultar el boton actualizar
	    $('#actualizar').click(function(){
	    	$('.bloqueado').removeAttr('disabled');
	    	$('#actualizar').hide();
	    	$('#guardar').show();
	    });

	    // sirver para validar los campos del formulario
	    $('#form1').validate({
	    	rules:{
	    		Documento:{
	    			required: true,
	    			number: true,
	    			minlength:8,
	    			maxlength:10
	    		}
	    	},
	    	messages:{
	    		Documento:{
					required: "Este campo es Requerido",
					number: "El campo debe ser Numérico ",
					minlength:"Son {0} digitos Mínimo  ",
	    			maxlength:"Son {0} digitos Máximo"
				}			
	    	},
	    	submitHandler: function(form) {
			    alert('La cita fue programada Correctamente ');
			    $('input[type="text"],textarea').val('');
			 }
	    });
	});
	</script>
</head>
<body>
 <div class="logo">
        <div id="idiomas">
        <a href="../../sitioes/Secre/citas.jsp">Espa�ol</a> // <a href="../../sitioen/Secre/citas.jsp">Ingles</a>
        </div>
        <img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
</div>
	<div class="menu">
		<div class="tags">
                <a href="iniciarsesion.jsp"><strong>Iniciar Sesi�n</strong></a>
                <a href="#"><strong>Citas Paciente</strong></a>
            </div>
		<div class ="menu-session">     
            <button type="button" onClick="javascript:window.location='../index.jsp'">Cerrar Sesi�n </button>
         </div>
         <div class ="menu-session">
                <span style="color: white;">Sandra Vargas  Giraldo  </span>
                 <span style="color: white;">"Secretaria "</span>                  
        </div>
	</div>
	<div class="contenido">
		<div class="menu2 menu2-citas">
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
						<H2>Datos de la Citas</H2>
					<div class="formulario">
						<label for ="cedula" class="InputRequired">Tipo Documento</label>
						<select for="cedula" class="centro" name="cedula" id="cedula" >
								<option> - Seleccione -</option>
								<option value="1">Documento de Identidad</option>
								<option value="2">Cedula Ciudadana</option>																	
					   </select>
					</div>
					<div class="formulario">
					   <label for ="Docuemento" class="InputRequired"> No. Documento </label>
					   <input type="text" id="Documento" name="Documento"  value=""  max-length="20" placeholder="1081407291"/>
					</div>
					 <div class="formulario">
					     <label for ="medico" class="InputRequired ">Médico</label>
					      <select for="Pais" name="medico" class="centro">
					      	<option>- Seleccione -</option>
						      <option value="1">Juan Carlos Martinez </option>
							  <option value="2">Miguel Alejandor Mendoza</option>
							  <option value="2">tatiana  Barbosa Valencia</option>
					     </select>	
					</div>
                   <div class="formulario">
					   <label for ="fechacita" class="InputRequired"> Fecha de Cita </label>
					   <input type="date" id="fechacita" name="fechacita"max-length="20" placeholder="Ingrese su usuario"/>
					   <select for="Pais" id="turno" class="hora" name="turno">
								<option value="1">09:00am </option>
								<option value="1">09:30am </option>
								<option value="2">10:00am</option>
								<option value="1">10:30am </option>
								<option value="1">11:00am </option>
								<option value="2">11:30am</option>
								<option value="1">12:00pm </option>
								<option value="1">12:30pm </option>
								<option value="2">01:00pm</option>
								<option value="1">01:30pm </option>
								<option value="1">02:00pm </option>
								<option value="2">02:30pm</option>
								<option value="2">03:00pm</option>
								<option value="1">03:30pm </option>
								<option value="1">04:00pm </option>
								<option value="2">04:30pm</option>
								<option value="2">05:00pm</option>
							   
					     </select>
					</div>
					 <div class="formulario">
                        <label for ="Especialidad" class="InputRequired " > Procedimientos </label>
                        <select name="select" name="Pais" id="Pais" required class="centro">
                        	<option>- Seleccione -</option>
                            <option value="1">Odontología</option>
                            <option value="2">Periodoncia </option>
                            <option value="3">Endodoncia </option>
                            <option value="4">Odontopediatría  </option>    
                            <option value="4">Ortodoncia </option>
                            <option value="4">Odontogeriatría </option>
                            <option value="4">Cirugía maxilofacial  </option>
                        </select>
                    </div>
				    <div class="formulario">
					 	<label for ="turno"> Observaciones</label>
					 	<textarea NAME="texto1" ROWS=5 COLS=50 ></textarea>				    
					    	
					</div>		
					   <p> Todos los campos mardacos con * son requeridos</p>	
					   <input type="submit"  class="botones" value="Guardar">
						 
					
				</div>
				<div class="lado2">
					
					  <img src="imagenes/atender.png" width="380" height="380" class="dibujo">                
				</div>
			</form>
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