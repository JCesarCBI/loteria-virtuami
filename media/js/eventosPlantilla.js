
function presionaEnterPlantilla(evt, op) {
	
	
	var charCode = (evt.which) ? evt.which : event.keyCode
	var respuesta2 = document.getElementById('respuestaBaraja').value;
	
	var restarLong = respuesta2.length;
	var longitudchar = document.getElementById('vallong').value;
	longitud= parseInt(longitudchar);	
	restarLong=longitud-restarLong;
	
	if (restarLong >=0) {
		$('#longitudAyuda').html("Long: "+restarLong);
		
	};
	
	
	indice = document.getElementById('cartaClickPlantilla').value;
	$('#plantilla-' + indice).removeAttr("onclick");

	
	if (charCode == 13) {
		//Presiond enter obtengo la respuesta escrita
		var respuesta = document.getElementById('respuestaBaraja').value;
		respuesta = $.trim(respuesta);
		respuesta = respuesta.toLowerCase();
		id = obternerIdPlantilla(indice);

		var vOf = ajax_validarRespuesta(id, respuesta)
		
		//valido easterEgg para sinonimos
		if (document.getElementById('idModalidad').value == 5) {
			
			trofeosEE(id, respuesta)
			
		};

		if (vOf == 1) {
			//rompo cadenas
			rompeCadenas();
			//Reescribo el input e indico que la siguiente vez que presione enter sera la ultima
			$('#respuestaInput').html('<input type="text" name="respuestaBaraja" id="respuestaBaraja" value="" onkeydown="javascript:return presionaEnterPlantilla(event, 2)" >');

			//pongo el curso en el input
			$('#respuestaBaraja').focus();

			if (op == 2) {
				$('#respuestaInput').html(' ');
				errores(indice);
				rompeCadenas()
				//$('#plantilla-' + indice).addClass("cartaError");
				borrarInputCambiarCarta();
			}
		} else {
			puntos();
			cartaCorrecta(indice);
			cartasLoteria(indice);
			borrarInputCambiarCarta();
		}

	}
}

function clickPlantilla(indice) {
	pintaPuntos();
	var respuesta = validaPlantillaBaraja(indice);

	if (respuesta > 0) {
		//Escribo el input en el cual se escribirá la respuesta
		$('#respuestaInput').html('<input type="text" name="respuestaBaraja" id="respuestaBaraja" value="" onkeyup="javascript:return presionaEnterPlantilla(event, 1)">');
		//pongo el curso en el input
		$('#respuestaBaraja').focus();

	} else {
		errores(indice);
		rompeCadenas();
	}
	
	$('#plantilla-' + indice).addClass("cartaClick", 95, "easeOutQuart");
	setTimeout("quitarMarco(" + indice + ")", 1000);

}



function obternerIdPlantilla(indice) {

	//Obtengo todos los id de las cartas de la plantilla y los guardo en una arreglo
	var cartasArreglo = document.getElementById('IdMazoReversa').value;
	cartasId = cartasArreglo.split("*");
	return cartasId[indice];
}

function barajaPlantilla(num) {

	var cartasArreglo = document.getElementById('IdMazoReversa').value;
	cartasId = cartasArreglo.split("*");

	num = num + "";
	var voF = cartasId.indexOf(num);

	if (voF > -1) {

		return 1;

	} else {
		return 0;
	};
}

