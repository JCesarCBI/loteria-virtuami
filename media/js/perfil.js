$(document).ready(function() {	
	comunidad = $('#usuario_comunidadUniversitaria').val()
	$('#contrasenaActual, #guardaCambios, #estadisticas, #galeria').hide()
	$("form").find(':input:not(:disabled)').prop('disabled',true);
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
	
	//Desenmascarar contraseña
	checked=0;
	$("#desenmascarar").click(function(){
		if(checked==0){
			$("#usuario_contrasena").removeAttr("type").attr("type","text")
			checked=1
		}else{
			$("#usuario_contrasena").removeAttr("type").attr("type","password")
			checked=0;
		}	
	})
	
	//Seguridad
	$("#BtnEditar").click(function(){
		$('#contrasenaActual').show()
		$('#usuario_contrasenaActual').val("")
	})
	
	//Eventos del botón cancelar cambiar contraseña
	$("#BtnCancelarEditar").click(function(){
		$('#contrasenaActual').hide()
	})
	$("#BtnConfirmContrasena").click(function(){
		if($("#usuario_contrasenaActual").val()==""){
			alert("campo vacío")
		}else{
			//Enviará la contraseña vía AJAX para validarla
			$.ajax({
				url: base+'index.php/cDatosPerfil2/confirmaContrasena/'+$("#usuario_contrasenaActual").val()+'/'+$("#usuario_id").val(),
				dataType: "json",
				type: "POST",
				success:function(correcto){ //Si el dominio no es correcto, mostrará la clase incorrecto y el mensaje de alerta
					if(correcto == 0){
						$("form").find(':input:disabled').prop('disabled',false);
						$("#BtnEditar,#contrasenaActual").hide()
						$("#guardaCambios").show()
						
					}else{
						alert("contraseña incorrecta")
					}
				}
			})	
		}
	})
	$("#cancelarGuardaCambios").click(function(){
		$('#guardaCambios').hide()
		$('#BtnEditar').show()
		$("form").find(':input:not(:disabled)').prop('disabled',true);

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
		$("#carrusel-sig, #carrusel-ant").show()
	})	

	$("#carrusel>img").bind({
		click: function(){
			$(this).unbind('mouseleave');
			$(this).removeClass('carrusel-apaga').addClass('borde-amarillo')
			$('.imgCarrusel').not(this).addClass('carrusel-apaga').removeClass('borde-amarillo')
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
			$("#imgCarta").removeAttr('src').attr('src',base+correcto.imgMazo).addClass('fondo-amarillo')
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