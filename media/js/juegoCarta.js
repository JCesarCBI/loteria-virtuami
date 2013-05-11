var cantidad=54;
function cambiarCarta() {
	 
	//Obtengo el id de la carta que volteare por medio del value --(el value tiene el formato baraja-IdQueCambiar)--   
	var carta=document.getElementById('IdCartaReversa').value;
	var contenido=document.getElementById(carta);	
	
	
	//Organizo en un arreglo el id que cambiare quitando el -
	var n=carta.split("-");
		
	//Convierto el id del value de char a int
	var id=parseInt(n[1]);
  	var id2=id;
	if (id>1){
		
		//Obtengo el id anterior
		var idAnt=id-1;
		
		//Quito la clase Escondido a la carta que me indiquen el id
		$('#baraja-'+idAnt).addClass("Escondido");
		
		//Escondo la carta que estaba antes a la vists
		$("#"+carta).removeClass("Escondido");
		
		
	} else{
		
		$('#baraja-'+cantidad).addClass("Escondido");
		
		//si es la primer carta la muestro
		$("#"+carta).removeClass("Escondido");
			
	}
	
        $(carta).html(contenido);
		//Aumento el id para dejar preparado el value con la siguiente carta
		if(id>=cantidad){
			id=0
			}
					
			id=id+1;
		
		document.getElementById('IdCartaReversa').value="baraja-"+id;

	
		//Cambia la carta cada segundo
		if (id2<cantidad) {
						
			setTimeout("cambiarCarta()",10);	
			
		} else
			$('#baraja-'+cantidad).addClass("Escondido");
	
}
