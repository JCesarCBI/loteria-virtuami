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
	var url = base + 'index.php/cpruebasLuisa/seleccionarPosibleRespuesta/'+ id+'/'+idModalidad;
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

//Esta funcion se encarga de escribir la rima del elemento
function ajax_guardaScore(score, edoPartida) {

	var url = base + 'index.php/cJuego/guardarScore/' + score+'/'+edoPartida;

	$.ajax({

		url : url,
		async : false,

		success : function(data) {

			alert(data);

		},

		error : function() {

			$('#contenido').html("");
		}
	});

}