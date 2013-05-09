$(document).ready(function() {
	$('.cajonLateral-abierto').hide();
	$('.cajonSuperior-abierto').hide();
	
	//Registro
	$('#usuario_nombre, #usuario_aPaterno, #usuario_aMaterno,#usuario_edad, #usuario_edad1, #usuario_edad2').hide();
	$('#sig2, #atras1, #atras2').hide();

	//Primera parte
	$("#sig1").click(function() {
		$('#usuario_nombreUsr, #usuario_correo, #usuario_contrasena, #sig1').hide();
		$('p.sexo').hide();
		$('#usuario_nombre, #usuario_aPaterno, #usuario_aMaterno, #sig2, #atras1').show();	
	});	
	
	//Segunda parte
	$("#sig2").click(function(){
		$('#sig2,#usuario_nombre,#usuario_aPaterno,#usuario_aMaterno, #atras1').hide();
		$('#usuario_edad, #usuario_edad1, #usuario_edad2, #atras2').show();	
	});	

	$('#atras1').click(function(){
		$('#usuario_nombreUsr, #usuario_correo, #usuario_contrasena, #sig1').show();
		$('p.sexo').show();
		$('#usuario_nombre, #usuario_aPaterno, #usuario_aMaterno, #sig2, #atras1').hide();	
	})
	
	//Tercera parte	
	$("#atras2").click(function() {
		$('#sig2,#usuario_nombre,#usuario_aPaterno,#usuario_aMaterno, #atras1').show();
		$('#usuario_edad, #usuario_edad1, #usuario_edad2, #atras2').hide();
		$('#usuario_nombreUsr, #usuario_correo, #usuario_contrasena').hide();
		$('p.sexo').hide();
	
	});		
	//Abrir y cerrar cajones
	$(".cajonSuperior-cerrado").click(function() {
		$(this).hide();
		$('.cajonSuperior-abierto, .cajonLateral-cerrado').show();
		$('.cajonLateral-abierto').hide();
	});

	$(".amarillo-sup").click(function() {
		$('.cajonSuperior-abierto').hide();
		$('.cajonSuperior-cerrado').show();
		
	});
	$(".cajonLateral-cerrado").click(function() {
		$(this).hide();
		$('.cajonLateral-abierto, .cajonSuperior-cerrado').show();
		$('.cajonSuperior-abierto').hide();
	});
	$(".amarillo-lat").click(function() {
		$('.cajonLateral-abierto').hide();
		$('.cajonLateral-cerrado').show();
	});
	
	//FUNCIONES AJAX
    $('#usuario_nombreUsr').change(function(){ 
    	liga = base+'index.php/cpruebasNaye/prueba'
		$.ajax({
			url: liga,
			data: { usuario: $('#usuario_nombreUsr').val() },
			dataType: "json",
			type: "POST",
			success:function(existe){
				if(existe == 1){
					alert("usuario ya existe")
				}else{
					alert("usuario no existe")
				}
			}
		})
	});
	
});