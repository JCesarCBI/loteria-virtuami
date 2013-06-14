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
	$('#reglas-txt ul>li').last().attr('id','final')
	
	$("#seccion").change(function(){
		seccion = $('#seccion').val();
		$('#final').removeAttr('id');
		$('.muestra').removeClass('muestra');
		$('#'+seccion+'-txt ul>li.uno').addClass('muestra');
		$('#'+seccion+'-txt ul>li').last().attr('id','final')
		$('#'+seccion+'-txt ul>li').not('.uno').hide();
	});
	
	$("#flecha-der").click(function(){
		$('.muestra').hide().addClass('ant');
		$('.muestra').next().show().addClass('muestra');
		$('.ant').removeClass('muestra');			
		
	});
	
	$("#flecha-izq").click(function() {
		$('.muestra').hide().addClass('ant');
		$('.muestra').prev().show().addClass('muestra');
		$('.ant').removeClass('muestra');
		
	});
});