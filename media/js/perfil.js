$(document).ready(function() {	
	comunidad = $('#usuario_comunidadUniversitaria').val()
	$('#usuario_contrasenaActual, #BtnCancelarCambiarContrasena, #BtnConfirmContrasena').hide()
	switch(comunidad){
		case "1":
			// alert("Es alumno")
			$('#cargo, #area,#posgrado,#division').hide()
			$('#gradoActivo').show()
			grado = $('#usuario_gradoActivo').val()
			switch(grado){
				case "1":
					$('#division').show()
					$('#posgrado').hide()
					break;
				case "2":
					$('#posgrado').show()
					$('#division').hide()
					break;
			}
			$('#usuario_gradoActivo').change(function(){
					grado = $('#usuario_gradoActivo').val()
					switch(grado){
						case "1":
							$('#division').show()
							$('#posgrado').hide()
							break;
						case "2":
							$('#posgrado').show()
							$('#division').hide()
							break;
					}	
				}
			
			)
			break;
		case "2":
			// alert("Es profe")
			$('#gradoActivo, #posgrado,#division').hide()
			$('#area, #cargo').show()
			break;
		case "3":
			// alert("Es admin")
			$('#gradoActivo, #posgrado,#division').hide()
			$('#area, #cargo').show()
			break;
		case "4":
			// alert("Es otro")
			$('#gradoActivo, #posgrado, #division, #cargo, #area').hide()
	}
	
	$('#usuario_comunidadUniversitaria').change(function(){
		comunidad = $(this).val()
		switch(comunidad){
			case "1":
				// alert("Es alumno")
				$('#cargo, #area,#posgrado,#division').hide()
				$('#gradoActivo').show()
				grado = $('#usuario_gradoActivo').val()
				switch(grado){
					case "1":
						$('#division').show()
						$('#posgrado').hide()
						break;
					case "2":
						$('#posgrado').show()
						$('#division').hide()
						break;
				}
				$('#usuario_gradoActivo').change(function(){
						grado = $('#usuario_gradoActivo').val()
						switch(grado){
							case "1":
								$('#division').show()
								$('#posgrado').hide()
								break;
							case "2":
								$('#posgrado').show()
								$('#division').hide()
								break;
						}	
					}
				)
				break;
			case "2":
				// alert("Es profe")
				$('#gradoActivo, #posgrado,#division').hide()
				$('#area, #cargo').show()
				break;
			case "3":
				// alert("Es admin")
				$('#gradoActivo, #posgrado,#division').hide()
				$('#area, #cargo').show()
				break;
			case "4":
				// alert("Es otro")
				$('#gradoActivo, #posgrado, #division, #cargo, #area').hide()
		}
	})
	
	//Eventos del botón cambiar contraseña
	$("#BtnCambiarContrasena").click(function(){
		$('#usuario_contrasenaActual, #BtnCancelarCambiarContrasena, #BtnConfirmContrasena').show()
		$('#usuario_contrasenaActual, #usuario_nuevaContrasena').val("")
		$('#usuario_nuevaContrasena').removeAttr('placeholder').attr('placeholder','Confirma contraseña').removeAttr('id').attr('id','usuario_contrasenaActual')
	})
	
	//Eventos del botón cancelar cambiar contraseña
	$("#BtnCancelarCambiarContrasena").click(function(){
		$('#usuario_contrasenaActual, #BtnCancelarCambiarContrasena, #BtnConfirmContrasena, #usuario_nuevaContrasena').hide()
		$('#usuario_nuevaContrasena').removeAttr('id placeholder name').attr('id', 'usuario_contrasenaActual').attr('placeholder', 'Confirma contraseña')
	})
	$("#BtnConfirmContrasena").click(function(){
		if($("#usuario_contrasenaActual").val()==""){
			alert("campo vacío")
		}else{
			//Enviará la contraseña vía AJAX para validarla
			$.ajax({
				url: base+'index.php/cpruebasNaye/confirmaContrasena/'+$("#usuario_contrasenaActual").val(),
				dataType: "json",
				type: "POST",
				success:function(correcto){ //Si el dominio no es correcto, mostrará la clase incorrecto y el mensaje de alerta
					if(correcto == 0){
						$("#usuario_contrasenaActual").val("").removeAttr('id placeholder').attr('id','usuario_nuevaContrasena').attr('placeholder', 'Ingresa nueva contraseña').attr('name', 'usuario_nuevaContrasena')
						$("#BtnConfirmContrasena").hide()
					}else{
						alert("contraseña incorrecta")
					}
				}
			})	
		}
	})

	
}); //Fin Document Ready

// function abreCambiarContrasena(){
	// liga=base+'index.php/cpruebasNaye/cambiarContrasena/1';
	// window.open(liga, 'Cambiar contraseña', 'status=1,width=410,height=410, resizable=0') 
	// return 0;
// }	