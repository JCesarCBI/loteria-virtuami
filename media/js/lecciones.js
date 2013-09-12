$(document).ready(function() {
	$('#lecciones-txt, #diminutivos-txt, #derivaciones-txt, #sinonimos-txt').hide();
		
	$("#lb-lecciones").click(function() {
		$('#lecciones-txt').show();
		$('#seccion').val('lecciones').trigger('change');
		$('#reglas-txt,#diminutivos-txt, #derivaciones-txt, #sinonimos-txt').hide();
	});
	
	$("#lb-reglas").click(function() {
		$('#reglas-txt').show();
		$('#seccion').val('reglas').trigger('change');
		$('#lecciones-txt,#diminutivos-txt, #derivaciones-txt, #sinonimos-txt').hide();
	});
	
	$("#lb-diminutivos").click(function() {
		$('#diminutivos-txt').show();
		$('#seccion').val('diminutivos').trigger('change');
		$('#reglas-txt, #lecciones-txt, #derivaciones-txt, #sinonimos-txt').hide();
	});
	
	$("#lb-derivaciones").click(function() {
		$('#derivaciones-txt').show();
		$('#seccion').val('derivaciones').trigger('change');
		$('#diminutivos-txt, #reglas-txt, #lecciones-txt, #sinonimos-txt').hide();
	});		
	
	$("#lb-sinonimos").click(function() {
		$('#sinonimos-txt').show();
		$('#seccion').val('sinonimos').trigger('change');
		$('#derivaciones-txt, #reglas-txt, #lecciones-txt, #derivaciones-txt').hide();
	});
	
	//Paginación
	$('#reglas-txt ul>li').not('.uno').hide();
	$('#reglas-txt ul>li.uno').addClass('muestra');
	$('#reglas-txt ul>li').first().attr('id','inicio')
	$('#reglas-txt ul>li').last().attr('id','final')

	
	$("#seccion").change(function(){
		seccion = $('#seccion').val();
		$('#final').removeAttr('id');
		$('#unaPag').removeAttr('id');

		$('.muestra').removeClass('muestra');
		$('#'+seccion+'-txt ul>li.uno').addClass('muestra');
		$('#'+seccion+'-txt ul>li').first().attr('id','inicio')
		$('#'+seccion+'-txt ul>li').last().attr('id','final')
		$('#'+seccion+'-txt ul>li').not('.uno').hide();
		var pags = $('#'+seccion+'-txt ul>li').size();
		if(pags == 1){
			$('#'+seccion+'-txt ul>li.uno').attr('id','unaPag');
		}
	});
	
	$("#flecha-der").click(function(){
		id = $('.muestra').attr('id')
		if(id != 'final' && id != 'unaPag'){
			$('.muestra').hide().addClass('ant');
			$('.muestra').next().show().addClass('muestra').removeClass('desp ant');
			$('.ant').removeClass('muestra');	
		}else{
			// alert("No puedo recorrer más hacia delante ¬¬")
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
	
	$("#flecha-der2").click(function(){
		id = $('.muestra').attr('id')
		if(id != 'final' && id != 'unaPag'){
			$('.muestra').hide().addClass('ant');
			$('.muestra').next().show().addClass('muestra').removeClass('desp ant');
			$('.ant').removeClass('muestra');	
		}else{
			// alert("No puedo recorrer más hacia delante ¬¬")
		}			
	});
	
	$("#flecha-izq2").click(function() {
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