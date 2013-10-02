//Esta funcion se encarga de escribir la rima del elemento
function ajax_escribeRima(id) {
	var audioTipo=document.getElementById('tipoDeAudio').value;
	var url = base + 'index.php/cpruebasLuisa/descripcion/' + id+'/'+audioTipo;

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
	var url = base + 'index.php/cpruebasLuisa/audio/' + id+'/'+tipoAudio;

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
	var url = base + 'index.php/cpruebasLuisa/respuestaCorrecta/'+ id;
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


function ajax_validarRespuesta2(id, respuesta) {
	
	var modalidad=2;
	var respuestaCorrecta = 1;
	var url = base + 'index.php/cSinonimos/seleccionarPosibleRespuesta/'+id+'/'+modalidad;
	var data = 'respuesta='+respuesta;

	$.ajax({

		url : url,
	    data: data,
	    type: 'POST',
		async : false,

		success : function(data) {
			
			respuestaCorrecta = data;
			$('#contenido').html(data);

		},

		error : function() {
			alert("Error al traer la respuesta");
		}
	});

	return respuestaCorrecta;

}