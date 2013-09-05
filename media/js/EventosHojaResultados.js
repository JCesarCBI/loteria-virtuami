jQuery(document).ready(function($) {
   
	$("#bPerfil").click(function(){
		window.location.href=base+'index.php/cDatosPerfil/PerfilUsuario/1/1';
	});
	
	$("#bNuevoJuego").click(function(){
		window.location.href=base+'index.php/cpruebasLuisa/modalidad';
	})   
});

function hojaResultados(){
	clearInterval(NoClickLoteria);
	clearInterval(tiempo2);
	clearInterval(tiempo);
	bonus=document.getElementById('bonusCartasRestantes').value;
	var bonus = parseInt(bonus);
	bonus=54-bonus;
	bonus=bonus*10;
	puntos=document.getElementById('puntos').value;
	var puntos=parseInt(puntos);
	puntos=bonus+puntos;
	estadoPartida=document.getElementById('estadoPartida').value;
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
		$('#resultadosJuego').html('<h2>'+estado+'</h2>');
		
	} else{		
	$('#resultadosJuego').html('<h2>'+estado+'<h2/>'+
								'<label id="puntuacion">Puntación:<br>'+puntos+'</label><br/><br/>'
								// '<label id="bonus" >Bonus por cartas en el mazo: </label>'+bonus+'<br /><br />'
							)
		
	};
							
	

}