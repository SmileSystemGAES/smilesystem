<html>
<head>
<meta charset="utf-8" />
<title>Smile System</title>
<link rel="shortcut icon"  href="../imagenes/favicon.ico" />
<script src="js/jquery.js"></script>
<script src="js/jquery.PrintArea.js"></script>
<script src="js/jquery-ui-1.11.1/jquery-ui.js"></script>
<link rel="stylesheet" href="js/jquery-ui-1.11.1/jquery-ui.css">
<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
<link href="../estilos/footer.css" rel="stylesheet" type="text/css">
<link href="../estilos/secre.css" rel="stylesheet" type="text/css">
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
		<a href="../../sitioes/Secre/historial.jsp">Spanish</a> // <a href="../../sitioen/Secre/historial.jsp">English</a>
		</div>
		<img src="../imagenes/banner-enviar.jpg" height="210" width="1200">
   </div>
	<div class="menu">
		<div class="tags">
                <a href="iniciarsesion.jsp"><strong>Log in</strong></a>
                <a href="ingresarhistorial.jsp"><strong>Enter History</strong></a>
                <a href="#"><strong>History Micromachining</strong></a>
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
			     <li><a href=""><img class="vector" src="imagenes/vector.png " width"70"	height="70"> </a></li>	
				<li><a href="perfil.jsp">Profile Secretary</a></li>	
				 <li><a href="registro.jsp">Patient Register</a></li>									
			    <li><a href="citas.jsp">Patient Appointments</a></li>
			    <li><a href="ingresarhistorial.jsp">History Micromachining</a></li>
			
		     </ul>
		</div>
	    <div class="mesa mesa-overflow">
	    	<h1>Dental History  </h1>
	    	<h2>Dental Chart </h2>
			<div class="lado1" style="text-align: center;">
				<img src="imagenes/cartadental.jpg" style="height: 390px;">				
			</div>
			<div class="lado2">
				<table class="Tdientes">
					<tbody>
						<tr>
							<td><input type="checkbox" class="check-1" onChange="mostrar(1);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #18</td>
							<td><input type="checkbox" class="check-2" onChange="mostrar(2);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #28</td>
							<td><input type="checkbox" class="check-3" onChange="mostrar(3);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #48</td>
							<td><input type="checkbox" class="check-4" onChange="mostrar(4);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #38</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check-5" onChange="mostrar(5);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #17</td>
							<td><input type="checkbox" class="check-6" onChange="mostrar(6);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #27</td>
							<td><input type="checkbox" class="check-7" onChange="mostrar(7);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #47</td>
							<td><input type="checkbox" class="check-8" onChange="mostrar(8);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #37</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check-9" onChange="mostrar(9);"   value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #16</td>
							<td><input type="checkbox" class="check-10" onChange="mostrar(10);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal.">Tooth #26</td>
							<td><input type="checkbox" class="check-11" onChange="mostrar(11);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #46</td>
							<td><input type="checkbox" class="check-12" onChange="mostrar(12);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #36</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check-13" onChange="mostrar(13);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #15</td>
							<td><input type="checkbox" class="check-14" onChange="mostrar(14);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #25</td>
							<td><input type="checkbox" class="check-15" onChange="mostrar(14);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #45</td>
							<td><input type="checkbox" class="check-16" onChange="mostrar(16);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #35</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check-17" onChange="mostrar(17);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #14</td>
							<td><input type="checkbox" class="check-18" onChange="mostrar(18);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #24</td>
							<td><input type="checkbox" class="check-19" onChange="mostrar(19);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #44</td>
							<td><input type="checkbox" class="check-20" onChange="mostrar(20);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #34</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check-21" onChange="mostrar(21);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #13</td>
							<td><input type="checkbox" class="check-22" onChange="mostrar(22);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #23</td>
							<td><input type="checkbox" class="check-23" onChange="mostrar(23);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #43</td>
							<td><input type="checkbox" class="check-24" onChange="mostrar(24);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #33</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check-25" onChange="mostrar(25);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #12</td>
							<td><input type="checkbox" class="check-26" onChange="mostrar(26);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #22</td>
							<td><input type="checkbox" class="check-27" onChange="mostrar(27);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal.">Tooth #42</td>
							<td><input type="checkbox" class="check-28" onChange="mostrar(28);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #32</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check-29" onChange="mostrar(29);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal.">Tooth #11</td>
							<td><input type="checkbox" class="check-30" onChange="mostrar(30);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #21</td>
							<td><input type="checkbox" class="check-31" onChange="mostrar(31);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #41</td>
							<td><input type="checkbox" class="check-32" onChange="mostrar(32);" value="Descripción: el diente presenta una  abfracción dental es la pérdida de tejidos dentarios duros producida por fuerzas de carga biomecánica, como por ejemplo, las fuerzas producidas por sobrecarga oclusal."> Tooth #31</td>
						</tr>
					
					</tbody>
				</table>	
			</div>
			<div class="mesa">	
			<div class ="nombre">
					<span style="color: ">patient: </span> 
	                <span style="color: ">José  Fabián  López  Giraldo </span>                                  
               </div>		
				<div class="Divprint">
						<table>
							<thead>
						        <tr>
									<td> Document </td> 									
									<td> Date Quote </td> 
									<td> Time </td> 
									<td> Professional </td> 
									<td> Procedure </td> 
									<td> Actions </td>
			                    </tr>
		                    </thead>
		                    <tbody>
			                    <tr>
									<td> 1081407291</td>									
									<td> 15/08/2014</td>
									<td> 9:00 am</td>
									<td> Alberto Hernández</td>
									<td> orthodontics</td>
									<td> attended </td>	
								</tr>
			                    <tr>
			                        <td> 1081407291</td>									
									<td> 27/09/2014</td>
									<td> 1:00 pm</td>
									<td> Alberto Hernández</td>
									<td> orthodontics</td>
									<td> attended</td>	
			                    </tr>
			                     <tr>
			                        <td> 1081407291</td>							
									<td> 1/10/2014</td>
									<td> 3:00 pm</td>
									<td> Alberto Hernández</td>
									<td> orthodontics</td>
								    <td> attended </td>										
			                    </tr>
			                     <tr>
			                        <td> 1081407291</td>									
									<td> 1/11/2014</td>
									<td> 8:00 am</td>
									<td> Alberto Hernández</td>
									<td> orthodontics</td>
									<td> attended </td>										
			                    </tr>
			                     <tr>
			                        <td> 1081407291</td>									
									<td> 25/11/2014</td>
									<td> 1:00 pm</td>
									<td> Alberto Hernández</td>
									<td> orthodontics</td>
								    <td> attended</td>	
																			
			                    </tr>
			                     <tr>
			                        <td> 1081407291</td>									
									<td> 1/12/2014</td>
									<td> 10:00 am</td>
									<td> Alberto Hernández</td>
									<td> orthodontics</td>
									<td> attended </td>									
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
            <a  href="../sitio.jsp">Site Design</a><br>
            <a href="../diccionario/diccionario" target='_blank'>Data Dictionary</a>
        </li>
    </ul>
</div>
</body>
</html>
