var numCartas=1;
function cambiarCarta() {
	 
	//Obtengo el id de la carta que volteare por medio del value --(el value tiene el formato baraja-IdQueCambiar)--   
	var carta=document.getElementById('IdCartaReversa').value;
		
	//Organizo en un arreglo el id que cambiare quitando el -
	var n=carta.split("-");
		
	//Convierto el id del value de char a int
	var id=parseInt(n[1]);
  	
	if (id>0){
		
		//Obtengo el id anterior
		var idAnt=id-1;
		
		//Quito la clase Escondido a la carta que me indiquen el id
		$('#baraja-'+idAnt).addClass("Escondido");
		
		//Escondo la carta que estaba antes a la vists
		$("#"+carta).removeClass("Escondido");
		
	} else{
		
		$('#baraja-45').addClass("Escondido");
		$("#"+carta).removeClass("Escondido");
		//si es la primer carta la muestro
			
	}
	
		//Aumento el id para dejar preparado el value con la siguiente carta
		id=id+1;
			if(id>=46)
				id=0			
		
		document.getElementById('IdCartaReversa').value="baraja-"+id;
		
		//Cambia la carta cada segundo
		if (numCartas<=46 ) {
			
			setTimeout("cambiarCarta()",1000);	
			numCartas++;
			
		} else
			numCartas=0;
}
