$(document).ready(function() {
	
	//prepara campos para mostrar la primera parte del formulario
	$('.cajonLateral-abierto, .cajonSuperior-abierto, .error, .ok, .recuperarContrasena').hide();
	$('#usuario_nombreUsr, #usuario_correo, #usuario_contrasena, #usuario_nombre, #usuario_aPaterno, #usuario_aMaterno,#usuario_edad, #usuario_comunidadUniversitaria, #usuario_division').val("");
	$("#sig1, #sig2, #enviar").attr("disabled","disabled")

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
	
	//INICIAR SESIÓN
	//Si el usuario elige "recuperar contraseña"
	$("#recuperaContrasena").click(function() {
		$('#Lusuario_nombreUsr, #Lusuario_contrasena, #recuperaContrasena, #iSesion-boton').hide();
		$('.recuperarContrasena').show();
	});	
	
	//Si el usuario elige "Iniciar sesión"
	$("#Isesion").click(function() {
		$('#Lusuario_nombreUsr, #Lusuario_contrasena, #recuperaContrasena, #iSesion-boton').show();
		$('.recuperarContrasena').hide();
	});
			
	//REGISTRO
	$('#usuario_nombre, #usuario_aPaterno, #usuario_aMaterno,#usuario_edad, #usuario_comunidadUniversitaria, #usuario_division,#sig2, #atras1, #atras2, #enviar').hide();
		
	//Primera parte
	$("#sig1").click(function() {
		$('#usuario_nombreUsr, #usuario_correo, #usuario_contrasena, #sig1').hide();
		$('p.sexo').hide();
		$('#usuario_nombre, #usuario_aPaterno, #usuario_aMaterno, #sig2, #atras1').show();	
	});	
	
	//Segunda parte
	$("#sig2").click(function(){
		$('#sig2,#usuario_nombre,#usuario_aPaterno,#usuario_aMaterno, #atras1').hide();
		$('#usuario_edad, #usuario_comunidadUniversitaria, #usuario_division, #atras2, #enviar').show();	
	});	

	$('#atras1').click(function(){
		$('#usuario_nombreUsr, #usuario_correo, #usuario_contrasena, #sig1').show();
		$('p.sexo').show();
		$('#usuario_nombre, #usuario_aPaterno, #usuario_aMaterno, #sig2, #atras1, #enviar').hide();	
	})
	
	//Tercera parte	
	$("#atras2").click(function() {
		$('#sig2,#usuario_nombre,#usuario_aPaterno,#usuario_aMaterno, #atras1').show();
		$('#usuario_edad, #usuario_comunidadUniversitaria, #usuario_division, #atras2, #enviar, #usuario_nombreUsr, #usuario_correo, #usuario_contrasena').hide();
		$('p.sexo').hide();
	});
			
	//FUNCIONES AJAX
	
	//Validación de la existencia o no existencia del usuario y correo en la BD
    $('#usuario_nombreUsr, #usuario_correo, #usuario_contrasena').keyup(function(){
		var usr = $('#usuario_nombreUsr').val();
		var correo = $('#usuario_correo').val();
		var pass = $('#usuario_contrasena').val();
		var usr_ok = $('#usr_ok').val();
		var email_ok = $('#email_ok').val();

		if(usr == ""){
			$('#usuario_nombreUsr').removeClass("correcto incorrecto").addClass("vacio")
			$('#usr_ok').val(0)
		}
		if(correo == ""){
			$('#usuario_correo').removeClass("correcto incorrecto").addClass("vacio")
			$('#email_ok').val(0)
		}     	
		$.ajax({
			url: base+'index.php/cpruebasNaye/usuario',
			data: { usuario: $('#usuario_nombreUsr').val() },
			dataType: "json",
			type: "POST",
			success:function(existe){ //Si el usuario existe, mostrará la clase incorrecto
				if(existe == 1){
					$('#usuario_nombreUsr').removeClass("vacio correcto").addClass("incorrecto")
					$('#usr_ok').val(0)
				}else{//Si el usuario no existe 
					if(usr != ""){ //se verifica primero que el campo no esté vacío para añadir la clase correcto
						$('#usuario_nombreUsr').removeClass("vacio incorrecto").addClass("correcto")
						$('#usr_ok').val(1)
					}else{
						$('#usr_ok').val(0)
					}
        		}
				//Desbloqueo del primer botón siguiente sólo si los 3 campos están llenos correctamente
				//Y si el usuario ni el correo existen en la BD        		
				var pass = $('#usuario_contrasena').val();
				var usr_ok = $('#usr_ok').val();
				var email_ok = $('#email_ok').val();
        		if(usr_ok == '1' && email_ok == '1' && pass != ''){
					$("#sig1").removeAttr("disabled")
				}else{
					$("#sig1").attr("disabled","disabled")
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
					$('#email_ok').val(0)
				}else{
					//Si el usuario no existe, se verifica primero que el campo no esté vacío para añadir la clase correcto
					if(correo != ""){
						$('#usuario_correo').removeClass("vacio incorrecto").addClass("correcto")
						$('#email_ok').val(1)
					}else{
						$('#email_ok').val(0)
					}
        		}
				//Desbloqueo del primer botón siguiente sólo si los 3 campos están llenos correctamente
				//Y si el usuario ni el correo existen en la BD
				var pass = $('#usuario_contrasena').val();
				var usr_ok = $('#usr_ok').val();
				var email_ok = $('#email_ok').val();
        		if(usr_ok == '1' && email_ok == '1' && pass != ''){
					$("#sig1").removeAttr("disabled")
				}else{
					$("#sig1").attr("disabled","disabled")
				}
			}
		})
	})	
	
	//Validación de la segunda parte del formulario
	$('#usuario_nombre, #usuario_aPaterno, #usuario_aMaterno').keyup(function(){
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
	
	//Validación de la tercera parte del formulario
	$('#usuario_edad, #usuario_comunidadUniversitaria, #usuario_division').change(function(){
		var edad = $('#usuario_edad').val()
		var comunidad = $('#usuario_comunidadUniversitaria').val()
		var division = $('#usuario_division').val()
		
		//Desbloqueo del segundo botón siguiente
		if(edad != '' && comunidad != 0 && division != 0){
			$("#enviar").removeAttr("disabled")
		}else{
			$("#enviar").attr("disabled","disabled")
		}
	});	
	
	

});
