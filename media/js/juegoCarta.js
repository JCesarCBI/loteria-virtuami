//Variables globales
var cantidad=54;
var ultimaCarta;
var cadenaId;
var auxiliar=0;
function ajax_escribeRima(id){
		
		var url = base+'index.php/cpruebasLuisa/descripcion/'+id;
	
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
	$(cartaReversaClick).removeAttr("onclick");
	//Obtendre un arreglo con 2 cosas	
	var n=carta.split("-");
	
	if(n[1]==1){
		cadenaId=n[0].split("*");
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
	
		document.getElementById('cartaVisible').value=id;
		ajax_escribeRima(id);
	
	
		//Aumento el id para dejar preparado el value con la siguiente carta
		//Cambia la carta cada segundo
		if (id<cantidad) {
			
			if (auxiliar == 0) {
			var ahoraSonLas=setTimeout("cambiarCarta()",3000);
			};	
			
		} else
			$('#baraja-'+ultimaCarta).addClass("Escondido");
	
}


function compararCarta(id) {
   
	var carta=document.getElementById('IdMazoReversa').value;
	 
	document.getElementById('cartaVisible').value
	
	var	arreglo=carta.split("*");
		
	var busqueda=id.toString();
		
		arreglo.pop()
		
	if(arreglo.indexOf(busqueda)!= '-1'){
			
		alert("la carta esta en el mazo coño!!!"+ busqueda)
		
	}else{
		
		alert("la carta no esta en el mazo "+ busqueda)
	}
	
}

function compararCartaMazo(id) {
	
	auxiliar =1;
	var cartaVisible=document.getElementById('cartaVisible').value;
		
	alert(id + "  " +cartaVisible);
	if(cartaVisible==id){
		clearTimeout(ahoraSonLas);
		alert("Deberia detenerse");
		
	}
	else {
	}
	
}