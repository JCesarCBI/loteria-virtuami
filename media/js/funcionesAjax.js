//Esta funcion se encarga de escribir la rima del elemento
function ajax_escribeRima(id) {

	var url = base + 'index.php/cpruebasLuisa/descripcion/' + id;

	$.ajax({

		url : url,
		async : false,

		success : function(data) {

			$('#contenido').html(data);

		},

		error : function() {

			alert("Error al cargar la carta");
		}
	});

}

//Esta funcion se encarga de traerme la respuesta correcta dependiendo del Id
function ajax_validarRespuesta(id, respuesta) {

	var respuestaCorrecta = 1;
	var url = base + 'index.php/cpruebasLuisa/respuestaCorrecta/'+respuesta+ '/' + id;

	$.ajax({

		url : url,
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