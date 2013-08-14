function nuevoJuego(){	
	bPreguntar = false;
	window.location.href=base+'index.php/cLogin2/validarLogin';
}

function Perfil(){	
	bPreguntar = false;
	window.location.href=base+'index.php/cpruebasLuisa/juegoLibre2';
}
function reintentar(){
	bPreguntar = false;
	window.location.href=base+'index.php/cpruebasLuisa/juegoLibre2';
}

function hojaResultados(){
	bPreguntar = false;	
	puntos=document.getElementById('puntos').value;
	estadoPartida=document.getElementById('estadoPartida').value;
	
	switch(estadoPartida)
		{
			case "1":
				estado="GANASTE";	
			  break;
			case "2":
				estado="PERFECTO";	
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
	$('#resultadosJuego').html('<label>Puntuación: </label>'+puntos+'<br />'+
								'<label>Estado: </label>'+estado+'<br /><br />'+
								'<button class="small button" onclick="reintentar()" type="button">Reintentar</button>'+
								'<button class="small button" onclick="nuevoJuego()" type="button">Nuevo Juego</button>'+
								'<button class="small button" onclick="perfil()" type="button">Perfil</button>'
							)
	

}