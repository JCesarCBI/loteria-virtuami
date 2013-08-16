jQuery(document).ready(function($) {

	$("#subtitulos").click(function () {
		
		$('#contenido').toggleClass("Escondido");
	});
	
	$("#audioBoton").click(function () {
		
		$('embed').remove();
		$('#audio').toggleClass("Escondido");
	});

});
    
function volteaCarta(){
		 
	$('#cartaReversaClick').addClass('magictime rotateUp', 10, "easeOutQuart");
	$("#cartaReversaClick").removeClass('magictime rotateUp', 450, "easeOutQuart");
	
};
    
function cartaCorrecta(indice){
	$('#plantilla-frijolito-' + indice).addClass("frijolito");
}

function quitarMarco(indice){
	$('#plantilla-' + indice).removeClass("cartaClick", 105, "easeOutQuart");
}

function pintaComodines(cantidad) {

	var comodines = "";
	for (var i = 0; i < cantidad; i++) {
		comodines = comodines + '<img class="estrella" src="' + base + 'media/img/star.png" />';
	};
	if (comodines == "") {
		comodines = 0;
	};
	$('#comodinesVisibles').html(comodines);

}

function multiplicadorCaso(cont){
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
	
};
