<html>
<head>
<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Slab' rel='stylesheet' type='text/css'>
<title>Smile System</title>
<link rel="shortcut icon" href="../imagenes/favicon.ico" />
<meta charset="utf-8" />
<script src="js/jquery.js"></script>
<script src="js/jquery.validate.js"></script>
<link href="../estilos/footer.css" rel="stylesheet" type="text/css">
<link href="../estilos/secre.css" rel="stylesheet" type="text/css">

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
				required: "The field is required ",
				number: "The field must be numeric ",
				minlength:"They are {0} digits minimum ",
    			maxlength:"They are {0} digits maximum "
			}
			
    	},
        submitHandler: function(form) {
            alert('The appointment was scheduled correctly ');
            $('input[type="text"],textarea').val('');
         }
    });
});
</script>

</head>
<body>
	<div class="logo">
		<div id="idiomas">
		<a href="../../sitioes/Secre/citas.jsp">Spanish</a> // <a href="../../sitioen/Secre/citas.jsp">English</a>
		</div>
		<img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
   </div>
    <div class="menu">
   <div class="tags">
                <a href="iniciarsesion.jsp"><strong>Log in</strong></a>
                <a href="#"><strong>Patient Appointments</strong></a>
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
		<div class="menu2 menu2-citas  ">
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
						<H2>Details Quotations </H2>
					<div class="formulario">
						<label for ="cedula" class="nobloqueado">Document Type </label>
						<select for="cedula" class="centro" name="cedula" id="cedula" >
								<option> - Select -</option>
								<option value="1">Identity Document </option>
								<option value="2">Writ  Citizen </option>																	
					   </select>
					</div>
					<div class="formulario">
					   <label for ="Documento" class=" InputRequired"> No. Docuement</label>
					   <input type="text" id="Documento" name="Documento"  value=""  max-length="20" placeholder="1081407291"/>
					</div>
					  <div class="formulario">
					     <label for ="medico" class="InputRequired"> Medic</label>
					      <select for="medico" name="medico">
					      	<option>- selecct -</option>
						      <option value="1">Juan Carlos Martinez </option>
							  <option value="2">Miguel Alejandor Mendoza</option>
							  <option value="3">tatiana  Barbosa Valencia</option>
					     </select>	
					</div>
                   <div class="formulario">
					   <label for ="fechacita" class="InputRequired"> Date of Appointment </label>
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
                        <label for ="Especialidad" class="InputRequired " >  Specialty </label>
                        <select name="select" name="Pais" id="Pais" required class="centro">
                        	<option>- Select -</option>
                            <option value="1">Dentistry </option>
                            <option value="2">periodontics  </option>
                            <option value="3">Endodontics  </option>
                            <option value="4">Pediatric Dentistry   </option>    
                            <option value="4">Orthodontics </option>
                            <option value="4">Geriatric Dentistry </option>
                            <option value="4">maxillofacial Surgery </option>
                        </select>
                    </div>
				    <div class="formulario">
					 	<label for ="turno"> Observations</label>
					 	<textarea NAME="texto1" ROWS=5 COLS=50 ></textarea>				    
					    	
					</div>		
					   <p> Mardacos All fields with * are required</p>	
					   <input type="submit"  class="botones" value="Save">	
						 
					
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
            <a  href="../sitio.jsp">Site Design</a><br>
            <a href="../diccionario/diccionario" target='_blank'>Data Dictionary</a>
        </li>
    </ul>
</div>
</body>
</html>