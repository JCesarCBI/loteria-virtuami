$(document).ready(function() {	
	//prepara campos para mostrar la primera parte del formulario
	$('.cajonLateral-abierto, .cajonSuperior-abierto, .ok, .recuperarContrasena, .error_validation').hide();
	$('#usuario_nombreUsr, #usuario_correo, #usuario_contrasena, #usuario_nombre, #usuario_aPaterno, #usuario_aMaterno,#usuario_edad, #usuario_comunidadUniversitaria, #usuario_division, #Lusuario_nombreUsr, #Lusuario_contrasena, #usuario_correo_recuperarContrena').val("");
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
	// $('.segundo, .tercero').hide();
	// $('#sig2, #atras1, #atras2, #enviar').hide();
// 		
	// //Primera parte
	// $("#sig1").click(function() { $('#sig1').hide();	$('.primero, p.sexo').hide();
		// $('#sig2, #atras1').show();	$('.segundo').show();	
	// });	
// 	
	// //Segunda parte
	// $("#sig2").click(function(){
		$('.segundo, #atras1, #sig1, #sig2, #usuario_nombreUsr, #usuario_contrasena, #usuario_correo,.sexo').hide();
		$('#amarillo-lat').addClass('amarillo-lat2')
		$('.tercero, #atras2, #enviar, #enviar').show();	
	// });	
// 
	// $('#atras1').click(function(){
		// $('#sig1').show(); $('.primero, p.sexo').show();
		// $('#sig2, #atras1, #enviar').hide(); $('.segundo, .tercero').hide();
	// })
// 	
	// //Tercera parte	
	// $("#atras2").click(function() {
		// $('.segundo, #atras1, #sig2').show();
		// $('#amarillo-lat').removeClass('amarillo-lat2').addClass('amarillo-lat')
		// $('.primero, .tercero, #atras2, #enviar, #sig1').hide();
		// $('p.sexo').hide();
	// });
			
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
				case "0":
					$("#enviar").attr("disabled","disabled")
					$('#usuario_cargo, #usuario_area, #usuario_posgrado').hide()
					$('#usuario_gradoActivo').show().val(-1);
					$('#usuario_gradoActivo').change(function(){
						if($('#usuario_gradoActivo').val()!=-1){
							if($('#usuario_gradoActivo').val()==1){ //El alumno pertenece a licenciatura
								$('#usuario_division').show().val(-1)
								$('#usuario_posgrado').hide();
								
								$('#usuario_division').change(function(){
									if($('#usuario_division').val()!=-1){
										$("#enviar").removeAttr("disabled","disabled")
									}else{
										$("#enviar").attr("disabled","disabled")
									}	
								})
								
							}
							if($('#usuario_gradoActivo').val()==2){ //El alumno pertenece a posgrado
								$('#usuario_posgrado').show().val(1);
									$("#enviar").removeAttr("disabled","disabled")

							}
						}else{
							$("#enviar").attr("disabled","disabled")
							$('#usuario_division, #usuario_posgrado').hide()
						}
					})
					break;
				case "1": 
					$("#enviar").attr("disabled","disabled")
					$('#usuario_area, #usuario_cargo').show().val("")
					$('#usuario_gradoActivo, #usuario_division, #usuario_posgrado').hide()
					$('#usuario_area, #usuario_cargo').keyup(function(){
						if($('#usuario_area').val()!= "" && $('#usuario_cargo').val() != ""){
							$("#enviar").removeAttr("disabled")
						}else{
							$("#enviar").attr("disabled","disabled")
						}
					})
					break;
				case "2": 
				 	$("#enviar").attr("disabled","disabled")
					$('#usuario_area, #usuario_cargo').show().val("")
					$('#usuario_gradoActivo, #usuario_division, #usuario_posgrado').hide()
					$('#usuario_area, #usuario_cargo').keyup(function(){
						if($('#usuario_area').val()!= "" && $('#usuario_cargo').val() != ""){
							$("#enviar").removeAttr("disabled")
						}else{
							$("#enviar").attr("disabled","disabled")
						}
					})					
					break;
				case "3":
					$('#usuario_gradoActivo, #usuario_division, #usuario_posgrado, #usuario_cargo, #usuario_area').hide()
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
		
});