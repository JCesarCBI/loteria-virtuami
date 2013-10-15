$(document).ready(function() {
	
	$("#carrusel>img:not(.recorre)").hide()
   	$("#bPerfil").click(function(){
		window.location.href=base+'index.php/cDatosPerfil/PerfilUsuario/1/-1';
	});
	
	$("#bNuevoJuego").click(function(){
		window.location.href=base+'index.php/cJuego/opcionesJuego';
	})
	
	inicio=$("#carrusel-inicio").val();
	fin = $("#carrusel-final").val();
	for(i=inicio; i<=fin; i++){
		$("#carrusel-img"+i).show()
	}

	//Navegación del carrusel
	$("#carrusel-ant").click(function(){
		$("#carrusel>img:not(.recorre)").hide()
		inicio = parseInt($("#carrusel-inicio").val())-1
		fin = parseInt($("#carrusel-final").val())-1
		if(inicio>0){
			$("#carrusel-inicio").val(inicio)
			$("#carrusel-final").val(fin)
			for(i=inicio; i<=fin; i++){
				$("#carrusel-img"+i).show()
			}
		}else{
			for(i=1; i<=$("#numTrofeosGanados").val(); i++){
				$("#carrusel-img"+i).show()
			}			
		}		
	})

	$("#carrusel-sig").click(function(){
		$("#carrusel>img:not(.recorre)").hide()
		inicio = parseInt($("#carrusel-inicio").val())+1
		fin = parseInt($("#carrusel-final").val())+1
		if(fin<=$("#numTrofeosGanados").val()){
			$("#carrusel-final").val(fin)
			$("#carrusel-inicio").val(inicio)
			for(i=inicio; i<=fin; i++){
				$("#carrusel-img"+i).show()
			}
		}else{
			for(i=$("#numTrofeosGanados").val()-3; i<=$("#numTrofeosGanados").val(); i++){
				$("#carrusel-img"+i).show()
			}				
		}
	})
});


function hojaResultados(puntos){
	estadoPartida=document.getElementById('estadoPartida').value;
	ajax_guardaScore(puntos, estadoPartida);
	
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
	
}

