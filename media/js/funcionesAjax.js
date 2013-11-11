//Esta funcion se encarga de escribir la rima del elemento
function ajax_escribeRima(id) {
	var audioTipo=document.getElementById('tipoDeAudio').value;
	var url = base + 'index.php/cAjaxJuego/descripcion/' + id+'/'+audioTipo;

	$.ajax({

		url : url,
		async : false,

		success : function(data) {

			$('#contenido').html(data);

		},

		error : function() {

			$('#contenido').html("");
		}
	});

}

//Esta funcion se encarga de escribir la rima del elemento
function ajax_sonido(id, tipoAudio) {
	var sonido;
	var idNivel=document.getElementById('idNivel').value;
	var url = base + 'index.php/cAjaxJuego/audio/' + id+'/'+tipoAudio+'/'+idNivel;

	$.ajax({

		url : url,
		async : false,

		success : function(data) {
			sonido=data;	
		},

		error : function() {

			$('#contenido').html("");
		}
	});
	
	return sonido;
}


//Esta funcion se encarga de traerme la respuesta correcta dependiendo del Id
function ajax_validarRespuesta(id, respuesta) {

	var respuestaCorrecta = 1;
	var idModalidad=document.getElementById('idModalidad').value;
	var url = base + 'index.php/cSinonimos/seleccionarPosibleRespuesta/'+ id+'/'+idModalidad;
	var data = 'respuesta='+respuesta;

	$.ajax({

		url : url,
	    data: data,
	    type: 'POST',
		async : false,

		success : function(data) {
			
			respuestaCorrecta = data;

		},

		error : function() {
			alert("Error al traer la respuesta");
		}
	});

	return respuestaCorrecta;

}


function ajax_guardaScorePierde(score, edoPartida){
	var oFortuna=document.getElementById('oFortuna').value;
	var salinasEE=document.getElementById('salinasEE').value;
	var cthuluEE=document.getElementById('cthuluEE').value;


	var url = base + 'index.php/cJuego/guardarScorePerdida/' + score+'/'+edoPartida+'/'+cthuluEE+'/'+oFortuna+'/'+salinasEE;
	
	$.ajax({

		url : url,
		async : false,
		dataType:"json",
		success : function(data) {
			
			var trofeosAux =data.trofeos;
			var cartasAux = data.cartas;
			
				$('#trofeo').html("");
				$('#carta').html("");

		},

		error : function() {
			alert('Error')
		}
	});

}



function ajax_guardaScore(score, edoPartida) {
	var oFortuna=document.getElementById('oFortuna').value;
	var salinasEE=document.getElementById('salinasEE').value;
	var cthuluEE=document.getElementById('cthuluEE').value;


	var url = base + 'index.php/cJuego/guardarScore/' + score+'/'+edoPartida+'/'+cthuluEE+'/'+oFortuna+'/'+salinasEE;
	
	$.ajax({

		url : url,
		async : false,
		dataType:"json",
		success : function(data) {
			
			var trofeosAux =data.trofeos;
			var cartasAux = data.cartas;
			
			cont=0;
			cont2=0;
			
			if (trofeosAux!=-1) {
				
			
				for (i in trofeosAux){
					
					if (cont==0) {
						
					var imagenUrl= base+trofeosAux[i].imagen;
						
					};
	
					cont++;
				}
			
				$('#trofeo').html('<center><span class="six columns"><img src="'+imagenUrl+'"></span><span style="margin-top:10px !important;float:right;" clas="six columns" id="numTrofeos">+'+
								cont+'</span></center>' );
			

			}
			else{
				$('#trofeo').html("");
			};

			if (cartasAux != -1) {
				
				for (i in cartasAux){
					
					if (cont2==0) {
						
					var cartaUrl2= base+cartasAux[i].imgGaleria;
					};
	
					cont2++;
				}
				$('#carta').html('<center><span class="six columns"><img src="'+cartaUrl2+'"></span><span style="margin-top:10px !important; float:right;" clas="six columns" id="numTrofeos">+'+
								cont2+'</span></center>' );
			}
			else{
				$('#carta').html("");
			};

		},

		error : function() {
			alert('Error')
		}
	});

}