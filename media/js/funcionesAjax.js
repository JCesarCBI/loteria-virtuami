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
	
	var oFortuna=document.getElementById('oFortuna').value;
	var salinasEE=document.getElementById('salinasEE').value;
	var cthuluEE=document.getElementById('cthuluEE').value;

	//var url = base + 'index.php/cJuego/guardarScore/' + score+'/'+edoPartida+'/'+cthuluEE+'/'+oFortuna+'/'+salinasEE;
	var url = base + 'index.php/cJuego/guardarScore/' + score+'/'+edoPartida+'/1/1/1';

	$.ajax({

		url : url,
		async : false,
		dataType:"json",
		success : function(data) {
			console.log(data.trofeos)
			// alert(data+" data.cartas="+data.cartas+" cartas['cartas']="+data['cartas']);

		},

		error : function() {
			alert('Error')
		}
	});

}