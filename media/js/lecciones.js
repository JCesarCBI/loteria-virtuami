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
	
	$("#seccion").change(function(){
		seccion = $('#seccion').val();
		$('#'+seccion+'-txt ul>li').not('.uno').hide();	
	});
});