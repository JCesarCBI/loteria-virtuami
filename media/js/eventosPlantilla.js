
function presionaEnterPlantilla(evt, op) {
	
	
	var charCode = (evt.which) ? evt.which : event.keyCode
	
	var restaLong = document.getElementById('vallongitudAyuda').value;
	var longitudchar = document.getElementById('vallong').value;
	longitud= parseInt(longitudchar);
	restarLong= parseInt(restaLong);
	
	if(charCode==8 && (restarLong<longitud)){
		restarLong++;	
		document.getElementById('vallongitudAyuda').value=restarLong;
	}
	else{
		if((restarLong <= longitud) && (charCode!=8))
		restarLong--;
		document.getElementById('vallongitudAyuda').value=restarLong;
	};
	
	$('#longitudAyuda').html(restarLong);
	
	indice = document.getElementById('cartaClickPlantilla').value;
	$('#plantilla-' + indice).removeAttr("onclick");

	
	if (charCode == 13) {
		//Presiond enter obtengo la respuesta escrita
		var respuesta = document.getElementById('respuestaBaraja').value;
		respuesta = $.trim(respuesta);
		respuesta = respuesta.toLowerCase();
		id = obternerIdPlantilla(indice);

		var vOf = ajax_validarRespuesta(id, respuesta)

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
				$('#plantilla-' + indice).addClass("cartaError");
			}
		} else {
			puntos();
			borrarInputCambiarCarta();
			cartaCorrecta(indice);
			cartasLoteria(indice);
		}

	}
}

function clickPlantilla(indice) {

	var respuesta = validaPlantillaBaraja(indice);

	if (respuesta > 0) {
		//Escribo el input en el cual se escribirá la respuesta
		$('#respuestaInput').html('<input type="text" name="respuestaBaraja" id="respuestaBaraja" value="" onkeydown="javascript:return presionaEnterPlantilla(event, 1)">');
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

