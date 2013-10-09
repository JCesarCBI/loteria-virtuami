jQuery(document).ready(function($) {

	$("#subtitulos").click(function () {		
		$('#contenido').toggleClass("Escondido");
		
		if ($(this).val()== "Activado") {
		
			$(this).attr( "value", "Desactivado" );
		
		} else{
			$(this).attr( "value", "Activado" );
		};
		$(this).toggleClass("seleccionado");
		
	});
	
	$("#audioBoton").click(function () {
		
		$('embed').remove();
		$('#audio').toggleClass("Escondido");
		
		if ($(this).val()== "Activado") {
			$('#audio').html('');
			$(this).attr( "value", "Desactivado" );
		}
		else{
			$(this).attr( "value", "Activado" );
			
			
		}
		$(this).toggleClass("seleccionado");
	});

});
    
function volteaCarta(){
	 
	$('#cartaEfecto').addClass('magictime rotateUp', 100, "easeOutQuart");
	
	
};
    
function cartaCorrecta(indice){
	$('#plantilla-frijolito-' + indice).addClass("frijolito");
}

function cartaRecuperada(indice){
	
	var clases = $('#plantilla-frijolito-' + indice).attr( "class" );
		
	if(clases!="frijolitoGris"){
			
		$('#plantilla-frijolito-' + indice).addClass("frijolitoDorado");
		
	} else{
	
		$('#plantilla-frijolito-' + indice).removeClass("frijolitoGris");
		$('#plantilla-frijolito-' + indice).addClass("frijolitoDorado");
		
	}
}

function cartaPasada(numCarta){
	
	 id=obternerId(numCarta);
 	var arregloCarta = document.getElementById('IdMazoReversa').value;
	cartasId = arregloCarta.split("*");
	var voF = cartasId.indexOf(id);
	id = id + "";
	
	if (voF>-1) {
		
		var clases = $('#plantilla-frijolito-' + voF).attr( "class" );
		

		if((clases!="frijolito") && (clases != "frijolitoDorado")){
		//Si pasa la carta la agrego al arreglo de cartas que se tienen que recuperar
		controlError.push(voF);
		//alert("cadena de control de error"+ controlError);
		//como tengo un error verifico si tengo comodines
		$('#plantilla-frijolito-' + voF).addClass("frijolitoGris");
		validarComodines()
			
		}
	};

	
}

function quitarMarco(indice){
	$('#plantilla-' + indice).removeClass("cartaClick", 105, "easeOutQuart");
}

function pintaComodines(cantidad) {
	$('#comodinesVisibles').removeClass('magictime puffIn');
	var comodines = "";
	for (var i = 0; i < cantidad; i++) {
		comodines = comodines + '<img class="estrella" src="' + base + 'media/img/star.png" />';
	};
	
	if (comodines == "") {
		comodines = 0;
	};
	
	$('#comodinesVisibles').html(comodines);
	$('#comodinesVisibles').addClass('magictime puffIn', 200, "");

}

function pintaErrores(cantidad) {
		$('#erroresVisibles').removeClass('magictime puffIn');
		$('#erroresVisibles').html(cantidad);
		$('#erroresVisibles').addClass('magictime puffIn', 200, "");
}

function multiplicadorCaso(cont){
	$('#erroresVisibles').removeClass('magictime puffIn');
	switch(cont)
	{
		case 2:
		  $('#multiplicadorVisible').html('x2');
		  document.getElementById('multiplicadorValor').value = 2;	
		  break;
		case 5:
		  $('#multiplicadorVisible').html('x3');
		  document.getElementById('multiplicadorValor').value = 3;	
		  break;
		case 8:
		  $('#multiplicadorVisible').html('x5');
		  document.getElementById('multiplicadorValor').value = 5;
		  break;
		default:		
				  
	}
	$('#multiplicadorVisible').addClass('magictime puffIn', 200, "");
};

function marcaBtonLoteria(){
	$('#botonLoteria').addClass("ayudaLoteria");
}

function iluminaCartaPlantilla(numCarta){
	 id=obternerId(numCarta);
 	var arregloCarta = document.getElementById('IdMazoReversa').value;
	cartasId = arregloCarta.split("*");
	var voF = cartasId.indexOf(id);
	id = id + "";
	
	if (voF>-1) {
		$('#plantilla-' + voF).addClass("cartaClick", 350, "easeOutQuart");
		setTimeout("quitarMarco(" + voF + ")", 1000);
	};

}
