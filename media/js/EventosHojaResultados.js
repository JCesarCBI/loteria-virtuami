$(document).ready(function() {

	$("#bNuevoJuego").click(function(){
		window.location.href=base+'index.php/cJuego/opcionesJuego';
	})
	
	$("#trofeo").click(function(){
		window.location.href=base+'index.php/cDatosPerfil/PerfilUsuario/1/-1';
	})
	
	$("#carta").click(function(){
		window.location.href=base+'index.php/cDatosPerfil/PerfilUsuario/1/-1';
	})

});



function hojaResultados(puntos){
	
	estadoPartida=document.getElementById('estadoPartida').value;
	
	
	if ((estadoPartida=="3" || estadoPartida=="4")) {
		ajax_guardaScorePierde(0, estadoPartida);
		
	} else{		
		if ((document.getElementById('seguro').value==0)) {
			ajax_guardaScore(puntos, estadoPartida);
		};
	};
	
	
	switch(estadoPartida)
		{
			case "1":
				estado="¡GANASTE!";	
			  break;
			case "2":
				estado="¡PERFECTO!";	
			  break;
			case "3":
				estado="PERDISTE";
			  break;
			default:
			estado="ABANDONADO";		
					  
		}
	self.location="#loteria-FancyBox";

	botonNuevo='<button class="small button" onclick="nuevoJuego()" type="button">Nuevo Juego</button>'
	botonFace='<button class="small button" onclick="reintentar()" type="button">Reintentar</button>'
	
	if (estadoPartida=="3") {		
		$('#resultadosJuego').html('<h2>'+estado+'</h2>' +
			'<label id="puntuacion">Puntuación:<br><br>'+'0'+'</label><br/><br/>'
		);
		
	} else{		
		$('#resultadosJuego').html('<h2>'+estado+'<h2/>'+
			'<label id="puntuacion">Puntuación:<br><br>'+puntos+'</label><br/><br/>'
		);
			
	}
	$( "#cartaReversaClick" ).attr( "onclick", "regresarJuego()" );
	$( "#botonLoteria" ).attr( "onclick", "regresarJuego()" );
	
}

