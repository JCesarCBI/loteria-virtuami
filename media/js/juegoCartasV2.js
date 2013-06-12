function obternerId(indice){
	
		//Obtengo todos los id de las cartas y los guardo en una arreglo
		 var cartasArreglo=document.getElementById('IdCartaReversa').value;
		 cartasId=cartasArreglo.split("*");
		 return	cartasId[indice]; 
}


//Esta funcion se encarga de escribir las rimas y reproducir el audio de la carta que se muestr
function audioRima(indice){
	
		document.getElementById('cartaVisible').value=indice;
		 idCarta=obternerId(indice)
		 //Cuando se llegue al ultimo elemento del arreglo se regresará una elemento vacio.
		if (idCarta != "") {
			
			//llamo a la función ajax_escribeRima() y le mando su correspondiente Id)
			ajax_escribeRima(cartasId[indice]);			
			$('embed').remove();
			//$('#audio').html('<embed src="'+base+'media/audio/wa_wa_waaa.mp3" autostart="true" hidden="true" loop="false" />');
				
			return 0; 
		} else{
		
			return 1;
		
		};
		 
	
}

//Esta funcion se encarga de escribir la rima del elemento
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

function cambiaCarta (numCarta) {
	//elimino el input para que clickeen la nueva carta
	$('#respuestaInput').html("");
	$('#cartaReversaClick').removeAttr("onclick");
	//En esta función regreso 0 si la carta fue encontrada, en caso contrario regreso 0
	var continuar= audioRima(numCarta);
  	
  	//si el numero de la carta es 0, quiere decir que es la primeravez que volteare una carta
  	if(numCarta==0){
		$("#baraja-"+numCarta).removeClass("Escondido");
		
	} else{
		
		//Quito la clase Escondido a la carta que me indiquen el id
		var cartaAnt=numCarta-1;
		$('#baraja-'+cartaAnt).addClass("Escondido");
		
		//Escondo la carta que estaba antes a la vista
		$("#baraja-"+numCarta).removeClass("Escondido");
						
	}
	
	
	if (continuar== 0) {
			//Como se encontro la carta incremento numCarta para ir por la siguiente carta
			numCarta++;
			setTimeout("cambiaCarta("+numCarta+")",100000);
		 
		} else{
			//Si no se encontro la cart solo escondo la última que se mostró
			numCarta--;
			$('#baraja-'+numCarta).addClass("Escondido");			
		};
			

}

function presionaEnter(evt, op) {

	 var charCode = (evt.which) ? evt.which : event.keyCode
	 
	 if (charCode == 13) {
	//Presiond enter obtengo la respuesta escrita
	 		 var respuesta=document.getElementById('respuestaBaraja').value;
			
			//Reescribo el input e indico que la siguiente vez que presione enter sera la ultima
			$('#respuestaInput').html('<input type="text" name="respuestaBaraja" id="respuestaBaraja" value="" onkeydown="javascript:return presionaEnter(event, 2)" >');
			
			//pongo el curso en el input
			$('#respuestaBaraja').focus();
		
			if (op ==2){
				indice=document.getElementById('cartaVisible').value;
				$('#respuestaInput').html(' ');
				$('#baraja-'+indice).removeAttr("onclick");
			}
	
		}

	
}

function clickBaraja(id) {
	//Escribo el input en el cual se escribirá la respuesta
    $('#respuestaInput').html('<input type="text" name="respuestaBaraja" id="respuestaBaraja" value="" onkeydown="javascript:return presionaEnter(event, 1)">');
	//pongo el curso en el input
    $('#respuestaBaraja').focus();
	
}

function clickPlantilla() {
	
}


function multiplicadores() {
	
}

function errores() {
	
}

function puntos() {
	
}

function comodines() {
	
}
