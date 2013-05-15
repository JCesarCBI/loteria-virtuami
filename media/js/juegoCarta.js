//Variables globales
var cantidad=54;
var ultimaCarta;
var cadenaId;

function ajax_escribeRima(id){
		
		var url = base+'index.php/cPruebaJuegoLibre2/descripcion/'+id;
	
			$.ajax({
	    
	        url: url,
	               
	        success: function(data){ 
	               
	          $('#contenido').html(data);  
	            
	        },
	        
	        error: function(){
	        
	           alert("Error al cargar la carta");
	        }
	    
	    });
	
}

function cambiarCarta() {
	 
	//Obtengo el id de la carta que volteare por medio del value --(el value tiene el formato baraja-IdQueCambiar)--   
	var carta=document.getElementById('IdCartaReversa').value;	

	//Organizo en un arreglo el id que cambiare quitando el -
	var n=carta.split("-");
	
	if(n[2]==1){
		cadenaId=n[1].split("*");
		document.getElementById('IdCartaReversa').value="baraja-"+id+"-2";
		$("#baraja-"+cadenaId[0]).removeClass("Escondido");
			
	} else{
			
		//Quito la clase Escondido a la carta que me indiquen el id
		$('#baraja-'+cadenaId[0]).addClass("Escondido");
		
		//Escondo la carta que estaba antes a la vists
		$("#baraja-"+cadenaId[1]).removeClass("Escondido");
		
		ultimaCarta=cadenaId[1];
		
		primero=cadenaId.shift();
		
	}
	
	var id=parseInt(cadenaId[0]);
	
	ajax_escribeRima(id);
	
	
		//Aumento el id para dejar preparado el value con la siguiente carta
		//Cambia la carta cada segundo
		if (id<cantidad) {
			
			setTimeout("cambiarCarta()",100);	
			
		} else
			$('#baraja-'+ultimaCarta).addClass("Escondido");
	
}


function compararCarta(id) {
   
	var carta=document.getElementById('IdloteReversa').value;
	 
	var	arreglo=carta.split("*");
		
	var busqueda=id.toString();
		
		arreglo.pop()
		
		
	if(arreglo.indexOf(busqueda)!= '-1'){
		
		alert("la carta esta en el mazo coño!!!")
		
	}else{
		
		alert("la carta no esta en el mazo")
	}
	
}
