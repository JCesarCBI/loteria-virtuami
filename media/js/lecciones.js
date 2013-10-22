$(document).ready(function() {

	$("#cajaLecciones div:not(#reglas-txt, #flechas)").hide();
	
	$("#lb-reglas").click(function() {
		$("#cajaLecciones > div").hide();
		$("#reglas-txt, #flechas").show();
	});
	
	$("#lb-diminutivos").click(function() {
		$("#cajaLecciones > div").hide();
		$("#diminutivos-txt").show();
	});
	
	$("#lb-derivaciones").click(function() {
		$("#cajaLecciones > div").hide();
		$('#derivaciones-txt').show();
	});		
	
	$("#lb-sinonimos").click(function() {
		$("#cajaLecciones > div").hide();
		$('#sinonimos-txt').show();
	});

	$("#lb-creditos").click(function() {
		$("#cajaLecciones > div").hide();
		$('#creditos-txt').show();
	});

	$("#lb-paginaLegal").click(function() {
		$("#cajaLecciones > div").hide();
		$('#paginaLegal-txt').show();
	});		

	//Paginación
	$('#reglas-txt ul>li').not('.uno').hide();
	$('#reglas-txt ul>li.uno').addClass('muestra');
	$('#reglas-txt ul>li').first().attr('id','inicio')
	$('#reglas-txt ul>li').last().attr('id','final')

	
	$("#flecha-der").click(function(){
		id = $('.muestra').attr('id')
		if(id != 'final' && id != 'unaPag'){
			$('.muestra').hide().addClass('ant');
			$('.muestra').next().show().addClass('muestra').removeClass('desp ant');
			$('.ant').removeClass('muestra');
		}			
	});
	
	$("#flecha-izq").click(function() {
		id = $('.muestra').attr('id')
		if(id != 'inicio' && id != 'unaPag'){
			$('.muestra').hide().addClass('desp');
			$('.muestra').prev().show().addClass('muestra').removeClass('desp ant');
			$('.desp').removeClass('muestra');
			id = $('.muestra').attr('id')
		}else{
			//alert("No puedo recorrer más hacia atrás ¬¬")
		}		
	});
});