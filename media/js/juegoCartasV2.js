jQuery(document).ready(function($) {

	document.getElementById('multiplicadorValor').value = 1;
	document.getElementById('multiplicadorValorAux').value = 1;
	document.getElementById('errorValor').value = 0;
	document.getElementById('numeroCarta').value = 1;
	document.getElementById('cartaClickPlantilla').value = "";
	document.getElementById('puntos').value = 0;
	document.getElementById('comodinesTotales').value = 0;
	document.getElementById('errorCadena').value = "";
});
var tiempo = "";
var tiempo2 = "";
function obternerId(indice) {

	//Obtengo todos los id de las cartas dey los guardo en una arreglo
	var cartasArreglo = document.getElementById('IdCartaReversa').value;
	cartasId = cartasArreglo.split("*");
	return cartasId[indice];
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

//Esta funcion se encarga de escribir las rimas y reproducir el audio de la carta que se muestr
function audioRima(indice) {

	document.getElementById('cartaVisible').value = indice;
	idCarta = obternerId(indice)
	//Cuando se llegue al ultimo elemento del arreglo se regresará una elemento vacio.
	if (idCarta != "") {

		//llamo a la función ajax_escribeRima() y le mando su correspondiente Id)
		ajax_escribeRima(cartasId[indice]);
		$('embed').remove();
		//$('#audio').html('<embed src="'+base+'media/audio/wa_wa_waaa.mp3" autostart="true" hidden="true" loop="false" />');

		return 0;
	} else {

		return 1;

	};

}

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
	var url = base + 'index.php/cpruebasLuisa/respuestaCorrecta/' + id;

	$.ajax({

		url : url,
		async : false,

		success : function(data) {

			if (data == respuesta) {

				respuestaCorrecta = 0;
			}

		},

		error : function() {
			alert("Error al traer la respuesta");
		}
	});

	return respuestaCorrecta;

}

function cambiaCarta(numCarta, mult) {

	if (mult != 1) {
		rompeCadenas();
	};
	//Temporizador
	tiempo2 = temporizador(10);

	//elimino el input para que clickeen la nueva carta
	$('#respuestaInput').html("");
	$('#cartaReversaClick').removeAttr("onclick");
	var url = document.getElementById('baraja-' + numCarta).value
	$("#baraja-" + numCarta).removeAttr("id");

	//En esta función regreso 0 si la carta fue encontrada, en caso contrario regreso 0
	var continuar = audioRima(numCarta);

	//si el numero de la carta es 0, quiere decir que es la primeravez que volteare una carta
	$("#cartaBvisible").html("<img id='baraja-" + numCarta + "' onclick='clickBaraja(" + numCarta + ")' class='Escondido barajaTemp'src='" + url + "' />");
	if (numCarta == 0) {
		$("#baraja-" + numCarta).removeClass("Escondido");

	} else {
		//Quito la clase Escondido a la carta que me indiquen el id
		var cartaAnt = numCarta - 1;
		$('#baraja-' + cartaAnt).addClass("Escondido");

		//Escondo la carta que estaba antes a la vista
		$("#baraja-" + numCarta).removeClass("Escondido");
		if (tiempo != "") {
			clearInterval(tiempo);
			tiempo = "";
		}

	}

	if (continuar == 0) {
		//Como se encontro la carta incremento numCarta para ir por la siguiente carta
		numCarta++;

		$('#cartaReversaClick').attr("onclick", "cambiaCarta(" + numCarta + ");");
		document.getElementById('numeroCarta').value = numCarta;
		tiempo = setTimeout("cambiaCarta(" + numCarta + ")", 10000);

	} else {
		//Si no se encontro la cart solo escondo la última que se mostró
		numCarta--;
		$('#baraja-' + numCarta).addClass("Escondido");
	};

}

function presionaEnter(evt, op) {
	indice = document.getElementById('cartaVisible').value;
	$('#baraja-' + indice).removeAttr("onclick");
	var charCode = (evt.which) ? evt.which : event.keyCode

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

function clickBaraja(id) {

	indice = obternerId(id)
	resultado = barajaPlantilla(indice);

	if (resultado == 0) {
		//Escribo el input en el cual se escribirá la respuesta
		$('#respuestaInput').html('<input type="text" name="respuestaBaraja" id="respuestaBaraja" value="" onkeydown="javascript:return presionaEnter(event, 1)">');
		//pongo el curso en el input
		$('#respuestaBaraja').focus();

	} else {
		errores(id);
		rompeCadenas();
	};

}

function presionaEnterPlantilla(evt, op) {

	indice = document.getElementById('cartaClickPlantilla').value;
	$('#plantilla-' + indice).removeAttr("onclick");

	var charCode = (evt.which) ? evt.which : event.keyCode

	if (charCode == 13) {
		//Presiond enter obtengo la respuesta escrita
		var respuesta = document.getElementById('respuestaBaraja').value;
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
		}

	}
}

function validaPlantillaBaraja(indice) {
	document.getElementById('cartaClickPlantilla').value = indice;
	indiceBaraja = document.getElementById('cartaVisible').value;
	idCartaBaraja = obternerId(indiceBaraja);
	idCartaPlantilla = obternerIdPlantilla(indice);
	if (idCartaPlantilla == idCartaBaraja) {
		return idCartaBaraja;

	} else {

		return -1;
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
	$('#plantilla-' + indice).addClass("frijolito");
	setTimeout("quitarMarco(" + indice + ")", 1000);

}

function multiplicadores() {

	var cont = document.getElementById('multiplicadorValorAux').value;
		//alert("Ya casi tienes otro comodín :D");
	
	cont++;
	document.getElementById('multiplicadorValorAux').value = cont;

	multiplicadorPrueba(cont);

	if (cont >= 4) {

		comodines(cont);
	}
}

function validarComodines() {
	var comodines = document.getElementById('comodinesTotales').value;
	var erroresTotales = document.getElementById('errorValor').value;

	if ((comodines > 0) && (erroresTotales > 0)) {

		comodines--;
		erroresTotales--
		document.getElementById('comodinesTotales').value = comodines;
		document.getElementById('errorValor').value = erroresTotales;
		pintaComodines(comodines);
		$('#erroresVisibles').html(erroresTotales);
		//alert(" errores= " + erroresTotales + " comodines = " + comodines);
		return erroresTotales;
	} else {
		return -1;
	}

}

function pintaComodines(cantidad) {

	var comodines = "";
	for (var i = 0; i < cantidad; i++) {
		comodines = comodines + '<img src="' + base + 'media/img/star.png" />';
	};
	if (comodines == "") {
		comodines = 0;
	};
	$('#comodinesVisibles').html(comodines);

}

function errores(id) {

	cadena2 = document.getElementById('cartaVisible').value;
	cadena = document.getElementById('errorCadena').value;
	cadena = cadena + cadena2 + "*";
	document.getElementById('errorCadena').value = cadena;
	var errorTotal = document.getElementById('errorValor').value;
	errorTotal++;
	document.getElementById('errorValor').value = errorTotal;

	var cantidadErrores = validarComodines();
	//alert(cadena.split('*'));
	if (cantidadErrores == -1) {
		$('#erroresVisibles').html(errorTotal);
	}
	if (errorTotal == 5) {
		alert('fin del juego X-X');
	};

}

function puntos() {
	var valor = document.getElementById('puntajeCarta').value;
	var m = document.getElementById('multiplicadorValor').value;
	var cont = document.getElementById('puntos').value;
	var puntosTotales = parseInt(cont);
	var mult = parseInt(m)
	var puntos = valor * mult;
	var puntos = puntosTotales + puntos;
	document.getElementById('puntos').value = puntos;

	$('#puntosTotalesVisibles').html(puntos);
	

}

function comodines(cont) {

	var numComodines=document.getElementById('comodinesTotales').value;
	numComodines=parseInt(numComodines)
	
	if ((cont==4) || (cont==8) || (cont==10) || (cont==13)) {
			document.getElementById('comodinesTotales').value = numComodines+1;
			numComodines++;
			if (numComodines>5) {
				numComodines=5;
			};
			pintaComodines(numComodines);
			validarComodines();
	};

}

function rompeCadenas() {

	document.getElementById('multiplicadorValor').value = 1;
	document.getElementById('multiplicadorValorAux').value = 1;
	$('#multiplicadorVisible').html('1');

}

function borrarInputCambiarCarta() {
	$('#respuestaInput').html(' ');
	var numCarta = document.getElementById('numeroCarta').value;
	cambiaCarta(numCarta, 1);

}

function temporizador(tempo) {
	clearInterval(tiempo2);

	if (tempo < 10) {

		data = "0:0" + tempo;

	} else {

		data = "0:" + tempo;
	}
	tempo--;

	$('#tiempo').html(data);

	tiempo2 = setTimeout("temporizador(" + tempo + ")", 1000);
}

function cartaCorrecta(indice){
	$('#plantilla-' + indice).addClass("cartaCorrecta");
}

function quitarMarco(indice){
	$('#plantilla-' + indice).removeClass("cartaClick", 105, "easeOutQuart");
}
