$(document).ready(function() {
	$('.cajonLateral-abierto').hide();
	$('.cajonSuperior-abierto').hide();
	
	//Registro
	$('#usuario_nombre').hide();
	$('#usuario_aPaterno').hide();
	$('#usuario_edad').hide();
	$('#sig2').hide();

	$("#sig1").click(function() {
		$('#usuario_nombreUsr').hide();
		$('#usuario_correo').hide();
		$('#usuario_contrasena').hide();
		$('#sig1').hide();
		$('p.sexo').hide();
		$('#usuario_nombre').show();
		$('#usuario_aPaterno').show();
		$('#usuario_edad').show();	
		$('#sig2').show();	
	});	
	
	
	//Abrir y cerrar cajones
	$(".cajonSuperior-cerrado").click(function() {
		$(this).hide();
		$('.cajonSuperior-abierto').show();
		$('.cajonLateral-abierto').hide();
		$('.cajonLateral-cerrado').show();
		
	});
	$(".amarillo-sup").click(function() {
		$('.cajonSuperior-abierto').hide();
		$('.cajonSuperior-cerrado').show();
		
	});
	$(".cajonLateral-cerrado").click(function() {
		$(this).hide();
		$('.cajonLateral-abierto').show();
		$('.cajonSuperior-abierto').hide();
		$('.cajonSuperior-cerrado').show();
	});
	$(".amarillo-lat").click(function() {
		$('.cajonLateral-abierto').hide();
		$('.cajonLateral-cerrado').show();
	});
});