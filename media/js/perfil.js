$(document).ready(function() {	
	comunidad = $('#usuario_comunidadUniversitaria').val()
	$('#usuario_contrasenaActual, #BtnCancelarCambiarContrasena, #BtnConfirmContrasena, #estadisticas, #galeria').hide()
	$("#carrusel>img").hide()

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


	//Navegación del usuario
	$("#nav-informacion").click(function(){
		$("#informacion").show()
		$("#estadisticas, #galeria").hide()
	})	
	$("#nav-estadistica").click(function(){
		$("#informacion, #galeria").hide()
		$("#estadisticas").show()
	})
	$("#nav-galeria").click(function(){
		//Traigo galería de cartas con AJAX
		$("#informacion, #estadisticas").hide()
		$("#galeria").show()
		inicio=$("#carrusel-inicio").val();
		fin = $("#carrusel-final").val();
		for(i=inicio; i<=fin; i++){
			$("#carrusel-img"+i).show()
		}
	})	

	$("#carrusel>img").bind({
		click: function(){
			$(this).unbind('mouseleave');
			$(this).removeClass('carrusel-apaga')
			$('.imgCarrusel').not(this).addClass('carrusel-apaga')
		},
		mouseenter:function(){
			$(this).removeClass('carrusel-apaga')
		},
		mouseleave: function(){
			$(this).addClass('carrusel-apaga')
		}
	})
	//Navegación del carrusel
	$("#carrusel-ant").click(function(){
		$("#carrusel>img").hide()
		inicio = parseInt($("#carrusel-inicio").val())-1
		fin = parseInt($("#carrusel-final").val())-1
		if(inicio>0){
			$("#carrusel-inicio").val(inicio)
			$("#carrusel-final").val(fin)
			for(i=inicio; i<=fin; i++){
				$("#carrusel-img"+i).show()
			}
		}else{
			for(i=1; i<=8; i++){
				$("#carrusel-img"+i).show()
			}			
		}		
	})

	$("#carrusel-sig").click(function(){
		$("#carrusel>img").hide()
		inicio = parseInt($("#carrusel-inicio").val())+1
		fin = parseInt($("#carrusel-final").val())+1
		if(fin<=54){
			$("#carrusel-final").val(fin)
			$("#carrusel-inicio").val(inicio)
			for(i=inicio; i<=fin; i++){
				$("#carrusel-img"+i).show()
			}
		}else{
			for(i=47; i<=54; i++){
				$("#carrusel-img"+i).show()
			}				
		}
	})

}); //Fin Document Ready

function muestraInfoCarta($idcarta){
	//Llama al AJAX para traer la información de la carta
	$.ajax({
		url: base+'index.php/cDatosPerfil2/traeDatosCarta/'+$idcarta,
		dataType: "json",
		type: "POST",
		success:function(correcto){ //Si el dominio no es correcto, mostrará la clase incorrecto y el mensaje de alerta
			$("#imgCarta").removeAttr('src').attr('src',base+correcto.imgMazo)
			$("#nombreCarta").html(correcto.nombre)
			$("#descripcionCarta").html(correcto.descripcion)

		}
	})	
}

// function abreCambiarContrasena(){
	// liga=base+'index.php/cpruebasNaye/cambiarContrasena/1';
	// window.open(liga, 'Cambiar contraseña', 'status=1,width=410,height=410, resizable=0') 
	// return 0;
// }	