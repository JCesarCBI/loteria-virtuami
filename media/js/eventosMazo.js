    
function obternerId(indice) {

	//Obtengo todos los id de las cartas dey los guardo en una arreglo
	var cartasArreglo = document.getElementById('IdCartaReversa').value;
	cartasId = cartasArreglo.split("*");
	return cartasId[indice];
}


function presionaEnter(evt, op) {

	var charCode = (evt.which) ? evt.which : event.keyCode
	var respuesta2 = document.getElementById('respuestaBaraja').value;
	var idNivel=document.getElementById('idNivel').value;
	var idPartida=document.getElementById('idPartida').value;
	var idModalidad=document.getElementById('idModalidad').value;
	
	var restarLong = respuesta2.length;
	var longitudchar = document.getElementById('vallong').value;
	longitud= parseInt(longitudchar);	
	restarLong=longitud-restarLong;
		
	if (restarLong >=0) {
		$('#longitudAyuda').html("Long: "+restarLong);
		
	};
	
	indice = document.getElementById('cartaVisible').value;
	$('#baraja-' + indice).removeAttr("onclick");

	if (charCode == 13) {
		//Presiond enter obtengo la respuesta escrita
		var respuesta = document.getElementById('respuestaBaraja').value;
		respuesta = $.trim(respuesta);
		respuesta = respuesta.toLowerCase();
		id = obternerId(indice);

		var vOf = ajax_validarRespuesta(id, respuesta)
		if (vOf == 1) {
			//rompo cadenas
			rompeCadenas();
			//Reescribo el input e indico que la siguiente vez que presione enter sera la ultima
			$('#respuestaInput').html('<input type="text" name="respuestaBaraja" id="respuestaBaraja" value="" onkeydown="javascript:return presionaEnter(event, 2)" >');

			//pongo el curso en el input
			$('#respuestaBaraja').focus();

			if (op == 2) {
				borrarInputCambiarCarta();
				rompeCadenas();
			}
		} else {
			//Incremento multiplicador
			borrarInputCambiarCarta();
			multiplicadores();

		}
	}

}


function clickBaraja(indice) {

	id = obternerId(indice)
	resultado = barajaPlantilla(id);

	if (resultado == 0) {
		//Escribo el input en el cual se escribirá la respuesta
		$('#respuestaInput').html('<input type="text" name="respuestaBaraja" id="respuestaBaraja" value="" onkeyup="javascript:return presionaEnter(event, 1)">');
		//pongo el curso en el input
		$('#respuestaBaraja').focus();

	} else {
		errores(indice);
		rompeCadenas();
	};

}
