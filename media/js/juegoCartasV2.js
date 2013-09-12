jQuery(document).ready(function($) {

	document.getElementById('multiplicadorValor').value = 1;
	document.getElementById('multiplicadorValorAux').value = 1;
	document.getElementById('errorValor').value = 0;
	document.getElementById('numeroCarta').value = 1;
	document.getElementById('cartaClickPlantilla').value = "";
	document.getElementById('puntos').value = 0;
	document.getElementById('comodinesTotales').value = 0;
	document.getElementById('errorCadena').value = "";
	document.getElementById('loteriaCadena').value = "";
	document.getElementById('bonusCartasRestantes').value = 0;
	var reloj=document.getElementById('tiempoJuego').value;
	document.getElementById('tiempoReloj').value =reloj.slice(0,(reloj.length-3));
    	

});

	var tiempo = "";
	var tiempo2 = "";
	var NoClickLoteria=""
    var bPreguntar = true;
     
    window.onbeforeunload = preguntarAntesDeSalir;
     
function preguntarAntesDeSalir()
{	
	
	if (bPreguntar==true)
    return "¿Seguro que quieres salir?";
}
    

//Esta funcion se encarga de escribir las rimas y reproducir el audio de la carta que se muestr
function audioRima(indice) {

	document.getElementById('cartaVisible').value = indice;
	idCarta = obternerId(indice)
	//Cuando se llegue al ultimo elemento del arreglo se regresará una elemento vacio.
	if (idCarta != 'undefined') {

		//llamo a la función ajax_escribeRima() y le mando su correspondiente Id)
		ajax_escribeRima(cartasId[indice]);
		if (document.getElementById('tipoDeAudio').value=="2") {
			
		var sondioUrl=ajax_sonido(cartasId[indice]);
		$('embed').remove();
		$('#audio').html('<embed src="'+base+sondioUrl+'" autostart="true"  type="audio/mpeg" hidden="true" loop="false" />');
		};

		return 0;
	} else {

		return 1;

	};

}



function cambiaCarta(numCarta, mult) {
	if (mult != 1) {
		rompeCadenas();
		$("#cartaEfecto").removeClass('magictime rotateUp');
	};
	volteaCarta();
	//Temporizador
	tiempo2 = temporizador(document.getElementById('tiempoReloj').value);
	idCarta = obternerId(numCarta);
	
	//Ayudas del nivel básico
	if (document.getElementById('idNivel').value == "1") {
		longitudRespuesta(idCarta);
		iluminaCartaPlantilla(numCarta);
		
	};
	//Terminan ayudas nivel básico

	//elimino el input para que clickeen la nueva carta
	$('#respuestaInput').html("");
	document.getElementById('bonusCartasRestantes').value=numCarta;
	$('#cartaReversaClick').removeAttr("onclick");
	var continuar = audioRima(numCarta);
	
	if (continuar == 0) {
	//En esta función regreso 0 si la carta fue encontrada, en caso contrario regreso 0
	var url = document.getElementById('baraja-' + numCarta).value
	$("#baraja-" + numCarta).removeAttr("id");


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
		//Como se encontro la carta incremento numCarta para ir por la siguiente carta
		numCarta++;

		$('#cartaReversaClick').attr("onclick", "cambiaCarta(" + numCarta + ");");
		document.getElementById('numeroCarta').value = numCarta;
		tiempo = setTimeout("cambiaCarta(" + numCarta + ")", document.getElementById('tiempoJuego').value);

	} else {
		//Si no se encontro la cart solo escondo la última que se mostró
		clearInterval(tiempo2);
		numCarta--;
		$('#baraja-' + numCarta).addClass("Escondido");
		hojaResultados()
	};

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


function validarComodines() {
	var comodines = document.getElementById('comodinesTotales').value;
	var erroresTotales = document.getElementById('errorValor').value;

	if ((comodines > 0) && (erroresTotales > 0)) {

		comodines--;
		erroresTotales--
		document.getElementById('comodinesTotales').value = comodines;
		document.getElementById('errorValor').value = erroresTotales;
		pintaComodines(comodines);
		pintaErrores(erroresTotales);
		//alert(" errores= " + erroresTotales + " comodines = " + comodines);
		return erroresTotales;
	} else {
		return -1;
	}

}

function temporizador(tempo) {
		clearInterval(tiempo2);

	if (tempo >= 0) {	
		if (tempo < 10) {
	
			data = "0:0" + tempo;
	
		} else {
	
			data = "0:" + tempo;
		}
	};
	tempo--;

	$('#tiempo').html(data);

	tiempo2 = setTimeout("temporizador(" + tempo + ")", 1000);
}

function multiplicadores() {

	var cont = document.getElementById('multiplicadorValorAux').value;
		//alert("Ya casi tienes otro comodín :D");
	
	cont++;
	document.getElementById('multiplicadorValorAux').value = cont;

	multiplicadorCaso(cont);

	if (cont >= 4) {

		comodines(cont);
	}
}


function errores(id) {
	
	document.getElementById('estadoPartida').value=1;
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
		document.getElementById('estadoPartida').value=3;
		hojaResultados();	
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
	document.getElementById('estadoPartida').value=1;
	$('#multiplicadorVisible').html('x1');
	

}

function borrarInputCambiarCarta() {
	$('#respuestaInput').html(' ');
	var numCarta = document.getElementById('numeroCarta').value;
	cambiaCarta(numCarta, 1);

}

function cartasLoteria(indice){
	
	cartas=document.getElementById('loteriaCadena').value;
	cartas=cartas+indice+"*";
	document.getElementById('loteriaCadena').value=cartas;
	var ayuda=document.getElementById('idNivel').value;
	
	if (ayuda=="1") {
		cartas=document.getElementById('loteriaCadena').value;
		arreglo=cartas.split('*');
		
		if (arreglo.length==17) {
			marcaBtonLoteria();	
			pierdeNoLoteria(document.getElementById('bonusCartasRestantes').value);
		};	
	};
}
function pierdeNoLoteria(cartaActual){
		
		cartaActual=parseInt(cartaActual)
		document.getElementById('estadoPartida').value=3;
		carta=parseInt(document.getElementById('bonusCartasRestantes').value);
		
	if (cartaActual!=carta) {
		
		hojaResultados();

	} else{
		NoClickLoteria=setTimeout("pierdeNoLoteria("+carta+")", 1000);
		
	};
	
}
function loteria(){
	bPreguntar = false;	
	cartas=document.getElementById('loteriaCadena').value;
	estadoPartida=document.getElementById('estadoPartida').value;
	arreglo=cartas.split('*');
	
	if (arreglo.length == 17) {
		
		if (estadoPartida!=2) {
			document.getElementById('estadoPartida').value=1;
		};
		
	}else{
			document.getElementById('estadoPartida').value=3;
		
	};
	hojaResultados();	
}
