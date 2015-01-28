<html>
<head>
	<title>Smile System</title>
    <meta charset="utf-8" />
    <link rel="shortcut icon" href="../imagenes/favicon.ico" />
    <link rel="stylesheet" href="../js/jquery-ui-1.11.1/jquery-ui.css">
    <link href="../estilos/footer.css" rel="stylesheet" type="text/css">
    <link href="../estilos/css.css" rel="stylesheet" type="text/css">
	<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Pathway+Gothic+One' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Abril+Fatface' rel='stylesheet' type='text/css'>
	<script src="../js/jquery.js"></script>
    <script src="../js/jquery.validate.js"></script>
    <script src="../js/jquery-ui-1.11.1/jquery-ui.js"></script>
<script type="text/javascript">
$(document).ready(function() {

	/*$(".printer").click(function(){
		$('.Divprint').printArea();
	});*/

	$( "#dialog" ).dialog({
		autoOpen: false,
		width: 400,
		height: 300,
		close: function() { $('input').prop('checked', false); }
	});
});

function mostrar(indentidad){

	if($(".check-"+indentidad).is(':checked')) {

        valor = $(".check-"+indentidad).val();
        $( "#dialog" ).html(valor);
        $( "#dialog" ).dialog("open");
    }
}

</script>
</head>
<body>
	<div class="logo">
		<div id="idiomas">
		<a href="../../sitioes/pacientes/historial.jsp">Espa駉l</a> // <a href="../../sitioen/paciente/historial.jsp">Ingles</a>
		</div>
		<img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
   </div>
	<div class="menu">
		<div class="tags">
                <a href="iniciarsesion.jsp"><strong>Iniciar Sesion</strong></a>
                <a href="#"><strong>Historial  Odontol韌ico</strong></a>
            </div>
		<div class ="menu-session">     
            <button type="button" onClick="javascript:window.location='../index.jsp'">Cerrar Sesi髇 </button>
         </div>
         <div class ="menu-session">
                <span style="color: white;"> -</span>
                 <span style="color: white;">Paciente </span>                  
        </div>
	</div>
	<div class="contenido">
		<div class="menu2">
			<ul id="submenu">
				 <li><img class="vector" src="imagenes/vector.png " width="50"	height="50"></li>					
							<li><a href="perfil.jsp">Perfil </a></li>										
							<li><a href="citas.jsp">Citaciones</a></li>
							<li><a href="historial.jsp">Historial  Odontol韌ico </a></li>
			     
			</ul>
		</div>
	    <div class="mesa mesa-overflow">
	    	<h1>Historial Odontol韌ico </h1>
	    	<h2>Carta Dental</h2>
			<div class="lado1" style="text-align: center;">
				<img src="imagenes/cartadental.jpg" style="height: 390px;">				
			</div>
			<div class="lado2">
				<table class="Tdientes">
					<tbody>
						<tr>
							<td><input type="checkbox" class="check-1" onChange="mostrar(1);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #18</td>
							<td><input type="checkbox" class="check-2" onChange="mostrar(2);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #28</td>
							<td><input type="checkbox" class="check-3" onChange="mostrar(3);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #48</td>
							<td><input type="checkbox" class="check-4" onChange="mostrar(4);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #38</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check-5" onChange="mostrar(5);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #17</td>
							<td><input type="checkbox" class="check-6" onChange="mostrar(6);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #27</td>
							<td><input type="checkbox" class="check-7" onChange="mostrar(7);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #47</td>
							<td><input type="checkbox" class="check-8" onChange="mostrar(8);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #37</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check-9" onChange="mostrar(9);"   value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #16</td>
							<td><input type="checkbox" class="check-10" onChange="mostrar(10);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #26</td>
							<td><input type="checkbox" class="check-11" onChange="mostrar(11);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #46</td>
							<td><input type="checkbox" class="check-12" onChange="mostrar(12);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #36</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check-13" onChange="mostrar(13);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #15</td>
							<td><input type="checkbox" class="check-14" onChange="mostrar(14);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #25</td>
							<td><input type="checkbox" class="check-15" onChange="mostrar(14);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #45</td>
							<td><input type="checkbox" class="check-16" onChange="mostrar(16);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #35</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check-17" onChange="mostrar(17);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #14</td>
							<td><input type="checkbox" class="check-18" onChange="mostrar(18);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #24</td>
							<td><input type="checkbox" class="check-19" onChange="mostrar(19);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #44</td>
							<td><input type="checkbox" class="check-20" onChange="mostrar(20);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #34</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check-21" onChange="mostrar(21);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #13</td>
							<td><input type="checkbox" class="check-22" onChange="mostrar(22);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #23</td>
							<td><input type="checkbox" class="check-23" onChange="mostrar(23);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #43</td>
							<td><input type="checkbox" class="check-24" onChange="mostrar(24);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #33</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check-25" onChange="mostrar(25);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #12</td>
							<td><input type="checkbox" class="check-26" onChange="mostrar(26);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #22</td>
							<td><input type="checkbox" class="check-27" onChange="mostrar(27);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #42</td>
							<td><input type="checkbox" class="check-28" onChange="mostrar(28);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #32</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check-29" onChange="mostrar(29);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #11</td>
							<td><input type="checkbox" class="check-30" onChange="mostrar(30);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #21</td>
							<td><input type="checkbox" class="check-31" onChange="mostrar(31);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #41</td>
							<td><input type="checkbox" class="check-32" onChange="mostrar(32);" value="Descripci贸n: el diente presenta una  abfracci贸n dental es la p茅rdida de tejidos dentarios duros producida por fuerzas de carga biomec谩nica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Diente #31</td>
						</tr>
					
					</tbody>
				</table>					
			</div>
			<div class="mesa">				
				
				<div class="Divprint">
					<table>
						<thead>
					        <tr>
								
								<td>No.Documento</td>								
								<td> Fecha Cita</td>
								<td> Hora</td>
								<td>Profesional</td>
								<td>Procedimiento</td>
								<td>Acciones</td>
		                    </tr>
	                    </thead>
	                    <tbody>
		                    <tr>							
								<td >1081407291 </td>								
								<td> 15/08/2014</td>
								<td> 9:00 am</td>
								<td> Alberto Hern谩ndez</td>
								<td> Exodencia</td>
								<td> Asisti贸 </td>	
							</tr>
		                    <tr>	                       
								<td >1081407291 </td>								
								<td> 27/09/2014</td>
								<td> 1:00 pm</td>
								<td> Alberto Hern谩ndez</td>
								<td> Endodoncias</td>
								<td> Asisti贸 </td>	
		                    </tr>
		                     <tr>
		                        <td >1081407291 </td>								
								<td> 1/10/2014</td>
								<td> 3:00 pm</td>
								<td> Alberto Hern谩ndez</td>
								<td> Exodencia</td>
							    <td> Asisti贸 </td>										
		                    </tr>
		                     <tr>
		                        <td >1081407291 </td>								
								<td> 1/11/2014</td>
								<td> 8:00 am</td>
								<td> Alberto Hern谩ndez</td>
								<td> Exodencia</td>
								<td> Asisti贸 </td>										
		                    </tr>
		                     <tr>
		                        <td >1081407291 </td>								
								<td> 25/11/2014</td>
								<td> 1:00 pm</td>
								<td> Alberto Hern谩ndez</td>
								<td> Exodencia</td>
							    <td> Asisti贸 </td>	
																		
		                    </tr>
		                     <tr>
		                        <td >1081407291 </td>								
								<td> 1/12/2014</td>
								<td> 10:00 am</td>
								<td> Alberto Hern谩ndez</td>
								<td> Exodencia</td>
								<td> Asisti贸 </td>									
		                    </tr>
	                    </tbody>
		            </table>
		        </div>
	            <a href="pdf/historial.pdf" target="_blank"><button  class="printer" type="button">Descargar</button></a>
            </div>
	    </div> 
	</div>
	<div id="dialog" title="Odontolgia" style="display:none">
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
            <a  href="../sitio.jsp">Dise帽o del sitio</a><br>
            <a href="../diccionario/diccionario" target='_blank'>Diccionario de datos</a>
        </li>
    </ul>
</div>
</body>
</html>
