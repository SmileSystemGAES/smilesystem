<html>
<head>
	<title>Smile System</title>
	<meta charset="utf-8" />
	<link rel="shortcut icon"  href="../imagenes/favicon.ico" />
	<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Pathway+Gothic+One' rel='stylesheet' type='text/css'>
	<link href="../estilos/footer.css" rel="stylesheet" type="text/css">
	<link href="../estilos/medico.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
	<script src="../js/jquery.js"></script>
    <script src="../js/jquery-ui-1.11.1/jquery-ui.js"></script>
<script type="text/javascript">
$(document).ready(function() {

    $("#tabs").tabs();
    // fix the classes
    $(".tabs-bottom .ui-tabs-nav, .tabs-bottom .ui-tabs-nav > *")
    .removeClass( "ui-corner-all ui-corner-top" )
    .addClass( "ui-corner-bottom" );

    // move the nav to the bottom
    $( ".tabs-bottom .ui-tabs-nav" ).appendTo( ".tabs-bottom" );

    $(".btnNext").click(function () {
        $( "#tabs" ).tabs( "option", "active", $("#tabs").tabs('option', 'active')+1 );
    });
    $(".btnPrev").click(function () {
        $( "#tabs" ).tabs( "option", "active", $("#tabs").tabs('option', 'active')-1 );
    });
});
</script>
<style type="text/css">
ul.pag li {
	list-style: none;
	width: 40px;
	margin: inherit;
}
ul.pag li .tabButton{
    line-height:40px;
    width:40px;
    background-color:#494949;
    color:#fff;
    float:left;
    text-align:center;
    font-weight: bolder;
    }
.ui-state-active a.tabButton{
	background-color: red !important;
}
a.tabButton:hover{
    background-color:#dc1f22;
}
</style>
</head>
<body>
	<div class="logo">
		<div id="idiomas">
		<a href="../../sitioes/medicos/agendamedico.jsp">Espa�ol</a> // <a href="../../sitioen/medicos/agendamedico.jsp">Ingles</a>
		</div>
		<img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
	</div>
	<div class="menu">
		<div class="tags">
                <a href="iniciarsesion.jsp"><strong>Iniciar Sesi�n</strong></a>
                <a href="#"><strong>Agenda M�dico </strong></a>
            </div>
		<div class ="menu-session">     
            <button type="button" onClick="javascript:window.location='../index.jsp'">Cerrar Sesi�n </button>
         </div>
         <div class ="menu-session">
                <span style="color: white;"> -</span>
                 <span style="color: white;">M�dico</span>                  
        </div>
	</div>
	<div class="contenido">
		<div class="menu2">
			<ul id="submenu">
			<li><img class="vector" src="imagenes/vector.png " width="50" height="50"></li>
			<li><a href="perfil.jsp">Perfil M�dico </a></li>										
		    <li><a href="citas.jsp">Citar Paciente</a></li>
		    <li><a href="ingresarhistorial.jsp">Historial  Paciente </a></li>
		     <li><a href="agendamedico.jsp">Agenda del M�dico</a></li>
			</ul>
		</div>
		 <div class="mesa" style="border: none;">
		 	<h1>Cita en el Calendario</h1>
		 	<div id="tabs" class="tabs-bottom">
			    <div id="tabs-1">
				    <h2>lunes</h2>		
					<table class="table-agenda">
						<thead>
					        <tr>
								<td>C�digo Paciente</td>
								<td>No. Cita</td>
								<td>Nombre</td>
								<td>Apellido</td>
								<td> Fecha Cita</td>
								<td> Hora</td>
								<td>Procedimieto</td>
								<td>Acciones</td>
		                    </tr>
	                    </thead>
	                    <tbody>
		                    <tr>
								<td> 101</td>
								<td >01 </td>
								<td >Carmen </td>
								<td> valencia </td>
								<td> 15/08/2014</td>
								<td> 09:00 am</td>
								<td> Odontopediatría</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>
							</tr>
		                    <tr>
		                        <td> 090</td>
								<td >02 </td>
								<td >Fabián Alejandro </td>
								<td> Ramos</td>
								<td> 15/08/2014</td>
								<td> 09:30 am</td>
								<td> Odontología</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>
		                    </tr>
		                     <tr>
		                        <td> 212</td>
								<td >03 </td>
								<td >José Carlos</td>
								<td> Hernández Gómez </td>
								<td> 15/08/2014</td>
								<td> 10:00 am</td>
							    <td> Endodoncia</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
		                     <tr>
		                        <td> 111</td>
								<td >04 </td>
								<td >Alejandra </td>
								<td> López </td>
								<td> 15/08/2014</td>
								<td> 10:30 am</td>
								<td> Endodoncia</td>
							     <td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
		                     <tr>
		                        <td> 056</td>
								<td >05 </td>
								<td >Enrique  </td>
								<td> Castañeda</td>
								<td> 15/08/2014</td>
								<td> 11:00 am</td>
								<td> Odontogeriatría</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
		                     <tr>
		                        <td> 345</td>
								<td >06 </td>
								<td >Juan Felipe </td>
								<td> Vargas López</td>
								<td> 15/08/2014</td>
								<td> 11:30 pm</td>
								<td> Periodoncia</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
	                    </tbody>
	                </table>
			    </div>
			    <div id="tabs-2">
			        <h2>Martes</h2>
	                <table class="table-agenda">
						<thead>
					        <tr>
								<td>Código Paciente</td>
								<td>No. Cita</td>
								<td>Nombre</td>
								<td>Apellido</td>
								<td> Fecha Cita</td>
								<td> Hora</td>
								<td>Procedimieto</td>
								<td>Acciones</td>
		                    </tr>
	                    </thead>
	                    <tbody>
		                    <tr>
								<td> 302</td>
								<td >01 </td>
								<td >Juan  Camilo  </td>
								<td> valencia </td>
								<td> 16/08/2014</td>
								<td> 1:00 pm</td>
								<td> Odontopediatría</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>
							</tr>
		                    <tr>
		                        <td> 411</td>
								<td >02 </td>
								<td >María Alejandra</td>
								<td> Valencia  Hernández</td>
								<td> 16/08/2014</td>
								<td> 1:30 pm</td>
								<td> Odontología</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>
		                    </tr>
		                     <tr>
		                        <td> 443</td>
								<td >03 </td>
								<td >Luisa </td>
								<td> García llanos</td>
								<td> 16/08/2014</td>
								<td> 2:00 pm</td>
							  	<td> Endodoncia</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
		                     <tr>
		                        <td> 087</td>
								<td >04 </td>
								<td>Marilyn </td>
								<td> Noguera Pérez</td>
								<td> 16/08/2014</td>
								<td> 2:30 pm</td>
								<td> Endodoncia</td>
							     <td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
		                     <tr>
		                        <td> 090</td>
								<td >05 </td>
								<td >Juan Manuel </td>
								<td> Vargas Liz</td>
								<td> 16/08/2014</td>
								<td> 3:00 pm</td>
								<td> Odontogeriatría</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
		                     <tr>
		                        <td> 345</td>
								<td >06 </td>
								<td >Jesús </td>
								<td> López González</td>
								<td> 16/08/2014</td>
								<td> 04:00 pm</td>
								<td> Periodoncia</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
	                    </tbody>
	                </table>
			    </div>
			    <div id="tabs-3">
			        <h2>Miércoles </h2>
	                <table class="table-agenda">
						<thead>
					        <tr>
								<td>Código Paciente</td>
								<td>No. Cita</td>
								<td>Nombre</td>
								<td>Apellido</td>
								<td> Fecha Cita</td>
								<td> Hora</td>
								<td>Procedimieto</td>
								<td>Acciones</td>
		                    </tr>
	                    </thead>
	                    <tbody>
		                    <tr>
								<td> 302</td>
								<td >01 </td>
								<td >Juan  Camilo  </td>
								<td> valencia </td>
								<td> 17/08/2014</td>
								<td> 1:00 pm</td>
								<td> Odontopediatría</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>
							</tr>
		                    <tr>
		                        <td> 411</td>
								<td >02 </td>
								<td >María Alejandra</td>
								<td> Valencia  Hernández</td>
								<td> 17/08/2014</td>
								<td> 1:30 pm</td>
								<td> Odontología</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>
		                    </tr>
		                     <tr>
		                        <td> 443</td>
								<td >03 </td>
								<td >Luisa </td>
								<td> García llanos</td>
								<td> 17/08/2014</td>
								<td> 2:00 pm</td>
							    <td> Endodoncia</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
		                     <tr>
		                        <td> 087</td>
								<td >04 </td>
								<td>Marilyn </td>
								<td> Noguera Pérez</td>
								<td> 17/08/2014</td>
								<td> 2:30 pm</td>
								<td> Endodoncia</td>
							     <td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
		                     <tr>
		                        <td> 090</td>
								<td >05 </td>
								<td >Juan Manuel </td>
								<td> Vargas Liz</td>
								<td> 17/08/2014</td>
								<td> 3:00 pm</td>
								<td> Odontogeriatría</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
		                     <tr>
		                        <td> 345</td>
								<td >06 </td>
								<td >Jesús </td>
								<td> López González</td>
								<td> 17/08/2014</td>
								<td> 04:00 pm</td>
								<td> Periodoncia</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
	                    </tbody>
	                </table>
			    </div>
			    <div id="tabs-4">
			        <h2>Jueves</h2>
	                <table class="table-agenda">
						<thead>
					        <tr>
								<td>Código Paciente</td>
								<td>No. Cita</td>
								<td>Nombre</td>
								<td>Apellido</td>
								<td> Fecha Cita</td>
								<td> Hora</td>
								<td>Procedimieto</td>
								<td>Acciones</td>
		                    </tr>
	                    </thead>
	                    <tbody>
		                    <tr>
								<td> 302</td>
								<td >01 </td>
								<td >Juan  Camilo  </td>
								<td> valencia </td>
								<td> 18/08/2014</td>
								<td> 1:00 pm</td>
								<td> Odontopediatría</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>
							</tr>
		                    <tr>
		                        <td> 411</td>
								<td >02 </td>
								<td >María Alejandra</td>
								<td> Valencia  Hernández</td>
								<td> 18/08/2014</td>
								<td> 1:30 pm</td>
						    	<td> Odontología</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>
		                    </tr>
		                     <tr>
		                        <td> 443</td>
								<td >03 </td>
								<td >Luisa </td>
								<td> García llanos</td>
								<td> 18/08/2014</td>
								<td> 2:00 pm</td>
							    <td> Endodoncia</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
		                     <tr>
		                        <td> 087</td>
								<td >04 </td>
								<td>Marilyn </td>
								<td> Noguera Pérez</td>
								<td> 18/08/2014</td>
								<td> 2:30 pm</td>
								<td> Endodoncia</td>
							     <td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
		                     <tr>
		                        <td> 090</td>
								<td >05 </td>
								<td >Juan Manuel </td>
								<td> Vargas Liz</td>
								<td> 18/08/2014</td>
								<td> 3:00 pm</td>
						    	<td> Odontogeriatría</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
		                     <tr>
		                        <td> 345</td>
								<td >06 </td>
								<td >Jesús </td>
								<td> López González</td>
								<td> 18/08/2014</td>
								<td> 04:00 pm</td>
								<td> Periodoncia</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
	                    </tbody>
	                </table>
			    </div>
			    <div id="tabs-5">
			        <h2>Viernes </h2>
	                <table class="table-agenda">
						<thead>
					        <tr>
								<td>Código Paciente</td>
								<td>No. Cita</td>
								<td>Nombre</td>
								<td>Apellido</td>
								<td> Fecha Cita</td>
								<td> Hora</td>
								<td>Procedimieto</td>
								<td>Acciones</td>
		                    </tr>
	                    </thead>
	                    <tbody>
		                    <tr>
								<td> 302</td>
								<td >01 </td>
								<td >Juan  Camilo  </td>
								<td> valencia </td>
								<td> 19/08/2014</td>
								<td> 1:00 pm</td>
								<td> Odontopediatría</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>
							</tr>
		                    <tr>
		                        <td> 411</td>
								<td >02 </td>
								<td >María Alejandra</td>
								<td> Valencia  Hernández</td>
								<td> 19/08/2014</td>
								<td> 1:30 pm</td>
								<td> Odontología</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>
		                    </tr>
		                     <tr>
		                        <td> 443</td>
								<td >03 </td>
								<td >Luisa </td>
								<td> García llanos</td>
								<td> 19/08/2014</td>
								<td> 2:00 pm</td>
							    <td> Endodoncia</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
		                     <tr>
		                        <td> 087</td>
								<td >04 </td>
								<td>Marilyn </td>
								<td> Noguera Pérez</td>
								<td> 19/08/2014</td>
								<td> 2:30 pm</td>
								<td> Endodoncia</td>
							     <td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
		                     <tr>
		                        <td> 090</td>
								<td >05 </td>
								<td >Juan Manuel </td>
								<td> Vargas Liz</td>
								<td> 19/08/2014</td>
								<td> 3:00 pm</td>
								<td> Odontogeriatría</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
		                     <tr>
		                        <td> 345</td>
								<td >06 </td>
								<td >Jesús </td>
								<td> López González</td>
								<td> 19/08/2014</td>
								<td> 04:00 pm</td>
								<td> Periodoncia</td>
								<td> 
									<select name="actiones">
										<option value="pendiente">Asistió </option>
										<option value="aprovado">No Asistió </option>
										<option value="candelar">Cancelado</option>
									</select>
								</td>									
		                    </tr>
	                    </tbody>
	                </table> 
			    </div>
			    <div class="tabs-spacer"></div>
			    <ul class="pag">
			        <li><a class="tabButton btnPrev">&lt;</a></li>
			        <li><a class="tabButton" href="#tabs-1">1</a></li>
			        <li><a class="tabButton" href="#tabs-2">2</a></li>
			        <li><a class="tabButton" href="#tabs-3">3</a></li>
			        <li><a class="tabButton" href="#tabs-4">4</a></li>
			        <li><a class="tabButton" href="#tabs-5">5</a></li>
			        <li><a class="tabButton btnNext">&gt;</a></li>
			    </ul>
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
