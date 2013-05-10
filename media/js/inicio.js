$(document).ready(function() {
	$('.cajonLateral-abierto, .cajonSuperior-abierto, .error, .ok').hide();
	$('.cajonLateral-abierto, .cajonSuperior-abierto').hide();
	
	//Registro
	$('#usuario_nombre, #usuario_aPaterno, #usuario_aMaterno,#usuario_edad, #usuario_edad1, #usuario_edad2,#sig2, #atras1, #atras2, #enviar').hide();
		
	//Primera parte
	$("#sig1").click(function() {
		$('#usuario_nombreUsr, #usuario_correo, #usuario_contrasena, #sig1').hide();
		$('p.sexo').hide();
		$('#usuario_nombre, #usuario_aPaterno, #usuario_aMaterno, #sig2, #atras1').show();	
	});	
	
	//Segunda parte
	$("#sig2").click(function(){
		$('#sig2,#usuario_nombre,#usuario_aPaterno,#usuario_aMaterno, #atras1').hide();
		$('#usuario_edad, #usuario_edad1, #usuario_edad2, #atras2, #enviar').show();	
	});	

	$('#atras1').click(function(){
		$('#usuario_nombreUsr, #usuario_correo, #usuario_contrasena, #sig1').show();
		$('p.sexo').show();
		$('#usuario_nombre, #usuario_aPaterno, #usuario_aMaterno, #sig2, #atras1, #enviar').hide();	
	})
	
	//Tercera parte	
	$("#atras2").click(function() {
		$('#sig2,#usuario_nombre,#usuario_aPaterno,#usuario_aMaterno, #atras1').show();
		$('#usuario_edad, #usuario_edad1, #usuario_edad2, #atras2, #enviar, #usuario_nombreUsr, #usuario_correo, #usuario_contrasena').hide();
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
	
	//Validación de la existencia o no existencia del usuario y correo en la BD
    $('#usuario_nombreUsr, #usuario_correo').change(function(){
		var usr = $('#usuario_nombreUsr').val()
		var correo = $('#usuario_correo').val()

		if(usr == ""){
			$('#usuario_nombreUsr').removeClass("correcto incorrecto").addClass("vacio")
		}
		if(correo == ""){
			$('#usuario_correo').removeClass("correcto incorrecto").addClass("vacio")
		}     	
		$.ajax({
			url: base+'index.php/cpruebasNaye/usuario',
			data: { usuario: $('#usuario_nombreUsr').val() },
			dataType: "json",
			type: "POST",
			success:function(existe){ //Si el usuario existe, mostrará la clase incorrecto
				if(existe == 1){
					$('#usuario_nombreUsr').removeClass("vacio correcto").addClass("incorrecto")
					$("#sig1").attr("disabled","disabled")
				}else{
					//Si el usuario no existe, se verifica primero que el campo no esté vacío para añadir la clase correcto
					if(usr != ""){
						$('#usuario_nombreUsr').removeClass("vacio incorrecto").addClass("correcto")
					}
        		}
			}
		})
		
		$.ajax({
			url: base+'index.php/cpruebasNaye/correo',
			data: { correo: $('#usuario_correo').val() },
			dataType: "json",
			type: "POST",
			success:function(existe){ //Si el usuario existe, mostrará la clase incorrecto
				if(existe == 1){
					$('#usuario_correo').removeClass("vacio correcto").addClass("incorrecto")
					$("#sig1").attr("disabled","disabled")
				}else{
					//Si el usuario no existe, se verifica primero que el campo no esté vacío para añadir la clase correcto
					if(correo != ""){
						$('#usuario_correo').removeClass("vacio incorrecto").addClass("correcto")

					}
        		}
			}
		})
	});

	//Validación de campos vacios en los formularios y desbloqueo de los botones sig y enviar
    $('#usuario_nombreUsr, #usuario_correo, #usuario_contrasena').change(function(){ 
		var usuario = $('#usuario_nombreUsr').val()
		var email = $('#usuario_correo').val()
		var pass = $('#usuario_contrasena').val()

		//Desbloqueo del primer botón siguiente sólo si los 3 campos están llenos correctamente
		//Y si el usuario ni el correo existen en la BD
		
		if(usuario != '' && email != '' && pass != ''){
			$("#sig1").removeAttr("disabled")
		}else{
			$("#sig1").attr("disabled","disabled")
		}
	});	
	
	$('#usuario_nombre, #usuario_aPaterno, #usuario_aMaterno').change(function(){
		var nombre = $('#usuario_nombre').val()
		var apat = $('#usuario_aPaterno').val()
		var amat = $('#usuario_aMaterno').val()
		
		//Desbloqueo del segundo botón siguiente
		if(nombre != '' && apat != '' && amat != ''){
			$("#sig2").removeAttr("disabled")
		}else{
			$("#sig2").attr("disabled","disabled")
		}
	});	
});