$(document).ready(function() {	
	//prepara campos para mostrar la primera parte del formulario
	$('.cajonLateral-abierto, .cajonSuperior-abierto, .ok, .recuperarContrasena, .error_validation').hide();
	$('#usuario_nombreUsr, #usuario_correo, #usuario_contrasena, #usuario_nombre, #usuario_aPaterno, #usuario_aMaterno,#usuario_edad, #usuario_comunidadUniversitaria, #usuario_division, #Lusuario_nombreUsr, #Lusuario_contrasena, #usuario_correo_recuperarContrena').val("");
	$("#sig1, #sig2, #enviar").attr("disabled","disabled")
	$("#paso2, #paso3, #sig2, #atras2, #atras1, #enviar").hide()

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
	$('#paso2, #paso3').hide();
		
	//Primera parte
	$("#sig1").click(function() { $('#sig1, #paso1').hide();
		$("#amarillo-lat").css('margin-top',"-169px")
		$('#sig2, #atras1, #paso2').show();
	
	});	
	
	//Segunda parte
	$("#sig2").click(function(){
		$('#amarillo-lat').css('margin-top',"-177px")
		$('#paso1, #paso2, #sig1, #atras1, #sig2').hide();
		$('#paso3, #atras2, #enviar').show();
		if($('#usuario_edad').val()== ""){
			$('#usuario_comunidadUniversitaria').attr('disabled','disabled')
		}
			
		if($("#usuario_comunidadUniversitaria").val() == 1){
			$('#usuario_gradoActivo').show();
			if($("#usuario_gradoActivo").val() == 1){
				$("#usuario_division").show()
			}
			if($("#usuario_gradoActivo").val() == 2){
				$("#usuario_posgrado").show()
			}	
		}
		if($("#usuario_comunidadUniversitaria").val() == 1){ //Alumno
			$("#usuario_area").show()
			$("#usuario_cargo").show()		
		}
		if($("#usuario_comunidadUniversitaria").val() == 2){
			$("#usuario_area").show()
			$("#usuario_cargo").show()
		
		}
	});	

	$('#atras1').click(function(){
		$("#amarillo-lat").css('margin-top',"-138px")
		$('#sig1, #paso1').show();
		$('#sig2, #atras1, #enviar, #paso2, #paso3').hide();
	})
	
	//Tercera parte	
	$("#atras2").click(function() {
		$("#amarillo-lat").css('margin-top',"-169px")
		$('#paso2, #atras1, #sig2').show();
		$('#amarillo-lat').removeClass('amarillo-lat2').addClass('amarillo-lat')
		$('#paso1, #paso3, #atras2, #enviar').hide();
	});
			
	//FUNCIONES AJAX
	
	//Validación de la existencia o no existencia del usuario y correo en la BD
	//Validación de la primera parte del formulario	
    $('#usuario_nombreUsr, #usuario_correo, #usuario_contrasena').keyup(function(){
		var usr = $('#usuario_nombreUsr').val();
		var correo = $('#usuario_correo').val();
		var pass = $('#usuario_contrasena').val();
		var usr_ok = $('#usr_ok').val();
		var email_ok = $('#email_ok').val();

		if(usr == ""){
			$('#usuario_nombreUsr').removeClass("correcto incorrecto").addClass("vacio")
			$('#usrError').hide();
			$('#usr_ok').val(0)
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
					$('#usrError').show();
				}else{//Si el usuario no existe 
					if(usr != ""){ //se verifica primero que el campo no esté vacío para añadir la clase correcto
						$('#usuario_nombreUsr').removeClass("vacio incorrecto").addClass("correcto")
						$('#usr_ok').val(1)
						$('#usrError').hide();
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

		if(correo == ""){
			$('#email_ok').val(0)
			$('#usuario_correo').removeClass("correcto incorrecto").addClass("vacio")
			$('#emailDominioError').hide()
		}else{	   		
			//Se comprueba el dominio
			$.ajax({
				url: base+'index.php/cpruebasNaye/dominio',
				data: { correo: $('#usuario_correo').val() },
				dataType: "json",
				type: "POST",
				success:function(correcto){ //Si el dominio no es correcto, mostrará la clase incorrecto y el mensaje de alerta
					if(correcto == 0){
						$('#usuario_correo').removeClass("vacio correcto").addClass("incorrecto")
						$('#email_ok').val(0)
						$('#emailExisteError').hide()
						$('#emailDominioError').show()
						$('#email_ok').val(0)
					}else{
						//Si el deominio es correcto, comprobará que el correo no exista
						$.ajax({
							url:base+'index.php/cpruebasNaye/correo',
							data:{ correo: $('#usuario_correo').val() },
							dataType: "json",
							type: "POST",							
							success:function(existe){
								if(existe == 1){
									$('#usuario_correo').removeClass("vacio correcto").addClass("incorrecto")
									$('#emailExisteError').show()
									$('#emailDominioError').hide()
									$('#email_ok').val(0)
									
									var pass = $('#usuario_contrasena').val();
									var usr_ok = $('#usr_ok').val();
									var email_ok = $('#email_ok').val();
					        		if(usr_ok == '1' && email_ok == '1' && pass != ''){
										$("#sig1").removeAttr("disabled")
									}else{
										$("#sig1").attr("disabled","disabled")
									}
								}else{ 	//si el correo no existe, verifica que el campo no esté vacío para añadir la clase correcto
									if(correo != ""){
										$('#usuario_correo').removeClass("vacio incorrecto").addClass("correcto")
										$('#email_ok').val(1)
										$('#emailExisteError, #emailDominioError').hide()
										var pass = $('#usuario_contrasena').val();
										var usr_ok = $('#usr_ok').val();
										var email_ok = $('#email_ok').val();
						        		if(usr_ok == '1' && email_ok == '1' && pass != ''){
											$("#sig1").removeAttr("disabled")
										}else{
											$("#sig1").attr("disabled","disabled")
										}
									}else{
										$('#email_ok').val(0)
										$('#emailExisteError, #emailDominioError').hide()
									}									
								}
							}
						})
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
		}
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
	
	$('#usuario_gradoActivo, #usuario_cargo, #usuario_area, #usuario_division, #usuario_posgrado').hide()
	//Validación de la tercera parte del formulario
	$('#usuario_comunidadUniversitaria').change(function(){ //Valida que se seleccione una comunidad
		$('#usuario_gradoActivo, #usuario_division').val(-1)
		if($('#usuario_comunidadUniversitaria').val() != -1){
			var comunidad = $('#usuario_comunidadUniversitaria').val()
			switch(comunidad){
				case "1": //Alumno
					$("#enviar").attr("disabled","disabled")
					$('#usuario_cargo, #usuario_area, #usuario_posgrado').hide().removeAttr('required').val("")
					$('#usuario_gradoActivo').show().val(-1);
					$('#usuario_gradoActivo').change(function(){
						if($('#usuario_gradoActivo').val()!=-1){
							if($('#usuario_gradoActivo').val()==1){ //El alumno pertenece a licenciatura
								$('#usuario_division').show().val(-1)
								$('#usuario_posgrado').hide();
								$("#enviar").attr("disabled","disabled")
								
								$('#usuario_division').change(function(){
									if($('#usuario_division').val()!=-1){
										$("#enviar").removeAttr("disabled","disabled")
									}else{
										$("#enviar").attr("disabled","disabled")
									}	
								})
								
							}
							if($('#usuario_gradoActivo').val()==2){ //El alumno pertenece a posgrado
								$('#usuario_posgrado').show().val(-1);
								$("#enviar").attr("disabled","disabled")
							}
							
							$('#usuario_posgrado').change(function(){
								if($('#usuario_posgrado').val()!=-1){
									$("#enviar").removeAttr("disabled","disabled")
								}else{
									$("#enviar").attr("disabled","disabled")

								}
							})

						}else{
							$("#enviar").attr("disabled","disabled")
							$('#usuario_division, #usuario_posgrado').hide()
						}
					})
					break;
				case "2": //Profesor
					$("#enviar").attr("disabled","disabled")
					$('#usuario_area, #usuario_cargo').show().val("").attr('required','required')
					$('#usuario_gradoActivo, #usuario_division, #usuario_posgrado').hide()
					$('#usuario_area, #usuario_cargo').keyup(function(){
						if($('#usuario_area').val()!= "" && $('#usuario_cargo').val() != ""){
							$("#enviar").removeAttr("disabled")
						}else{
							$("#enviar").attr("disabled","disabled")
						}
					})
					break;
				case "3": //Administrativo
				 	$("#enviar").attr("disabled","disabled")
					$('#usuario_area, #usuario_cargo').show().val("").attr('required','required')
					$('#usuario_gradoActivo, #usuario_division, #usuario_posgrado').hide()
					$('#usuario_area, #usuario_cargo').keyup(function(){
						if($('#usuario_area').val()!= "" && $('#usuario_cargo').val() != ""){
							$("#enviar").removeAttr("disabled")
						}else{
							$("#enviar").attr("disabled","disabled")
						}
					})					
					break;
				case "4": //Otro
					$('#usuario_gradoActivo, #usuario_division, #usuario_posgrado, #usuario_cargo, #usuario_area').hide().removeAttr('required').val("")
					$("#enviar").removeAttr("disabled")
					break;				
			}
			var division = $('#usuario_division').val()
			//Desbloqueo del segundo botón siguiente
			if(edad != "" && !(isNaN(edad)) && comunidad != -1 && division != -1){
				$("#enviar").removeAttr("disabled")
				$("#edadError").hide();
	
			}else{//Si el usuario no elige alguna comunidad universitaria, no se habilitará el botón enviar
				
				$("#enviar").attr("disabled","disabled")
			}
		}else{
			$('#usuario_gradoActivo, #usuario_cargo, #usuario_area, #usuario_division, #usuario_posgrado').hide()
			$("#enviar").attr("disabled","disabled")
		}
	});	
	
	$('#usuario_edad').keyup(function(){ //Valida que el campo edad esté correctamente lleno
		var edad = $('#usuario_edad').val()
		if(isNaN(edad)){$("#edadError").show(); $("#enviar").attr("disabled","disabled")}else{$("#edadError").hide()}
		if(edad == ""){	$("#edadError").hide();	}
		//Desbloqueo del segundo botón siguiente
		if(edad != "" && !(isNaN(edad))){
			$("#usuario_comunidadUniversitaria").removeAttr("disabled")
			$("#edadError").hide();
		}else{
			$('#usuario_gradoActivo, #usuario_cargo, #usuario_area, #usuario_division, #usuario_posgrado').hide()
			$("#usuario_comunidadUniversitaria").attr("disabled", "disabled").val(-1)
		}
	});

	$('#usuario_correo_recuperarContrena').keyup(function(){ //Valida que el campo edad esté correctamente lleno
		var correo = $('#usuario_correo_recuperarContrena').val()
		var titlani = /^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]xanum[.]uam[.]mx$/;
		var xanum = /^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]titlani[.]uam[.]mx$/;
		var docencia = /^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]docencia[.]uam[.]mx$/;
		
		if ((correo.match(titlani)||correo.match(xanum)||correo.match(docencia)) && correo !=''){
			$('#recuperaContrasena-boton').removeAttr('disabled')
		}else{
			$('#recuperaContrasena-boton').attr('disabled','disabled')
		}
	});
		
	$('#recuperaContrasena-boton').click(function(){
		$.ajax({
			url: base+'index.php/cpruebasNaye/recuperarContrasena',
			data: { correo: $('#usuario_correo_recuperarContrena').val() },
			dataType: "json",
			type: "POST",
			success:function(exito){ 
				if(exito == 1){
					alert("Tu contraseña ha sido enviada a tu correo :D")
					$('#Lusuario_nombreUsr, #Lusuario_contrasena, #recuperaContrasena, #iSesion-boton').show();
					$('#usuario_correo_recuperarContrena').val('');
					$('.recuperarContrasena').hide();
				}else{ 
					alert("Este correo no está registrado! >.<")
        		}
			}
		})
	})

	//LOGIN
	
	$('#recuperaContrasena-boton').click(function(){
			$.ajax({
				url: base+'index.php/cpruebasNaye/recuperarContrasena',
				data: { correo: $('#usuario_correo_recuperarContrena').val() },
				dataType: "json",
				type: "POST",
				success:function(exito){ 
					if(exito == 1){
						alert("Tu contraseña ha sido enviada a tu correo :D")
						$('#Lusuario_nombreUsr, #Lusuario_contrasena, #recuperaContrasena, #iSesion-boton').show();
						$('#usuario_correo_recuperarContrena').val('');
						$('.recuperarContrasena').hide();
					}else{ 
						alert("Este correo no está registrado! >.<")
	        		}
				}
			})
		})	
		
});