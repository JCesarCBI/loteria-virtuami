$(document).ready(function() {	
	inicio();
	muestraPerfil();
	eligeTipoUsuario();
	
	$("#usuario_comunidadUniversitaria").change(function(){	eligeTipoUsuario();	});
	$("#usuario_gradoActivo").change(function(){ evaluaGradoActivo(); });
	
	desenmascaraPass();
	
	//Seguridad
	$("#BtnEditar").click(function(){
		$('#contrasenaActual').show();
		$('#usuario_contrasenaActual').val("");
	})
	
	//Eventos del botón cancelar cambiar contraseña
	$("#BtnCancelarEditar").click(function(){
		muestraPerfil();
	})
	
	//Confirmamos contraseña
	$("#BtnConfirmContrasena").click(function(){
		if($("#usuario_contrasenaActual").val()==""){
			alert("campo vacío");
		}else{
			
			datos = new Array();
			datos[0]=$("#usuario_contrasenaActual").val()
			datos[1] = $("#usuario_id").val()
			//Enviará la contraseña vía AJAX para validarla
			$.ajax({
				//Se conectará al siguiente controlador, enviando como parámetros contraseñaActual / usuarioId
				url: base+'index.php/cExtras/confirmaContrasena',
				data: {data :  datos.join(",")},
				dataType: "json",
				type: "POST",
				success:function(correcto){ //Si el dominio no es correcto, mostrará la clase incorrecto y el mensaje de alerta
					console.log(correcto)
					if(correcto == 0){
						editaPerfil();
					}else{
						alert("Contraseña incorrecta");
					}
				}
			})	
		}
	})
	
	//Eventos que abren la galería de avatares para editar la imágen de perfil
	$("#editarFoto").click(function(){
		$("#galeriaEditarFoto").css({ "opacity": "10", "z-index": "4" }) 
	})
	$("#closeGaleriaEditarFoto").click(function(){
		$("#galeriaEditarFoto").css({"opacity":"0","z-index":"-4"});
	})
	
	//Evento para cerrar el popup-carrusel de trofeos
	$(".close").click(function(){
		$("#lightbox").hide();
	})	
	
	//Evento para cancelar la edición de información del perfil de usuario
	$("#cancelarGuardaCambios").click(function(){
		muestraPerfil();
	})	

	//Navegación del usuario
	//Evento para ver la sección del perfil
	$("#nav-informacion").click(function(){
		$("#informacion, #foto-nombreUsr, #lnombreUsr").show();
		$("#nombreUsuario>h1").addClass("underline");
		$("#estadisticas, #galeria").hide();
	})	
	
	//Evento para ver la sección de estadísticas
	$("#nav-estadistica").click(function(){
		$("#informacion, #galeria, #foto-nombreUsr").hide();
		$("#estadisticas, #foto-nombreUsr").show();
		$("#lnombreUsr, #lightbox").hide()
		$("#nombreUsuario>h1").removeClass("underline").css("color","#fff");
		
	})

	var inicioG;
	var finG;

	//Evento para ver la sección de galería
	$("#nav-galeria").click(function(){
		$("#informacion, #estadisticas, #foto-nombreUsr").hide();
		$("#galeria").show();
		inicioG=1;
		finG = 5;
		console.log("inicio "+inicioG)
		console.log("fin "+finG)
		$("#carrusel>span:not(.recorre)").hide();
		for(i=inicioG; i<=finG; i++){
			$("#carrusel-img"+i).show();
		}
		$("#carrusel-sig, #carrusel-ant, #logoLoteria").show();
	})	


	$("#carrusel>span:not(.recorre) >img").bind({
		click: function(){
			$(this).unbind('mouseleave');
			$(this).removeClass('carrusel-apaga').addClass('borde-amarillo');
			$('.imgCarrusel').not(this).addClass('carrusel-apaga').removeClass('borde-amarillo');
		},
		mouseenter:function(){
			$(this).removeClass('carrusel-apaga');
		},
		mouseleave: function(){
			$(this).addClass('carrusel-apaga');
		}
	})
	//Navegación del carrusel
	$("#carrusel-ant").click(function(){
		$("#carrusel>span:not(.recorre)").hide();
		if(inicioG>1){
			inicioG = inicioG-1;
			finG = finG-1;
		}else{
			inicioG=1;
			finG=5;
		}		
		console.log("inicio "+inicioG)
		console.log("fin "+finG)
		for(i=inicioG; i<=finG; i++){
			$("#carrusel-img"+i).show();
		}
	})

	$("#carrusel-sig").click(function(){
		$("#carrusel>span:not(.recorre)").hide();
		if(finG<54){
			inicioG = inicioG+1;
			finG = finG+1;
		}else{
			inicioG=50;
			finG=54;			
		}
		console.log("inicio "+inicioG)
		console.log("fin "+finG)
		for(i=inicioG; i<=finG; i++){
			$("#carrusel-img"+i).show();
		}
	})

	//Evento para guardar los cambios realizados en perfil	
	$("#BtnGuardaCambios").click(function(){
		if(validaCampos()){
		}else{
			alert("Datos incorrectos");
		}
	})

}); //Fin Document Ready


//Realiza todas las validaciones de los campos en perfil de usuario.
function validaCampos(){
	errorVacio = new Array();
	$(".error").hide();
	
	//Nombre
	if($("#usuario_nombre").val() != ""){
		usuarioLleno = true;
		if($("#usuario_nombre").val().length<3 || $("#usuario_nombre").val().length>25){
			longNombre = false;
			var label = $("<label>").text("Mínimo 3, Máx 25 carácteres").attr("id","longNombre").attr("class", "error ");
			$("#usuario_nombre").after(label)
		}else{
			longNombre = true;
		}
	}else{
		usuarioLleno = false;
		errorVacio[1]= "#nombreVacio";
	}	

	//Apellido paterno
	if($("#usuario_aPaterno").val() != ""){
		paternoLleno = true;
		if($("#usuario_aPaterno").val().length<3 || $("#usuario_aPaterno").val().length>25){
			longApat = false;
			var label = $("<label>").text("Mínimo 3, Máx 25 carácteres").attr("id","longApat").attr("class", "error ");
			$("#usuario_aPaterno").after(label)
		}else{
			longApat = true;
		}
	}else{
		paternoLleno = false;
		errorVacio[2]= "#apatVacio";
	}
	
	//Apellido materno
	if($("#usuario_aMaterno").val() != ""){
		maternoLleno = true;
		if($("#usuario_aMaterno").val().length<3 || $("#usuario_aMaterno").val().length>25){
			longMat = false;
			var label = $("<label>").text("Mínimo 3, Máx 25 carácteres").attr("id","longMat").attr("class", "error ");
			$("#usuario_aMaterno").after(label)
		}else{
			longMat = true;
		}
	}else{
		maternoLleno = false;
		errorVacio[3]= "#amatVacio";
	}

	//Correo.
	//Se revisará el si el correo es del dominio correcto. Además, si el correo existe o no. 
	if($("#usuario_correo").val() != ""){
		correoLleno = true;
		$.ajax({
			url:base+'index.php/cRegistro/correo',
			data:{ correo: $('#usuario_correo').val() },
			dataType: "json",
			async:false,					
			type: "POST",		
			success:function(existe){
				if(existe == 1){
					correoNoExiste = true;
					var label = $("<label>").text("El correo ya existe o el dominio es inválido (la cuenta debe ser de titlani/xanum/docencia)").attr({id:"emailExiste", class:"error"})
					// $("#usuario_correo").after(label);
				}else{ 	//si el correo no existe, verifica que el campo no esté vacío para añadir la clase correcto
					correoNoExiste = true;
				}
			}
		})
	}else{
		correoLleno = false;
		errorVacio[4]= "#emailVacio";
	}
	
	//Contrasena. La contrasena debe tener al menos 6 carácteres.
	if($("#usuario_contrasena").val() != ""){
		passLleno = true;
		if($("#usuario_contrasena").val().length < 6){
			var label = $("<label>").text("Por tu seguridad, tu contraseña debe contar con al menos 6 caracteres").attr("id","passLong").attr("class", "error ");
			$("#usuario_contrasena").after(label)
			passLong = false;
		}else{
			passLong = true;
		}
	}else{
		passLleno = false;
		errorVacio[5]= "#passVacio";
	}
	//Realiza validación 
	if(longNombre && usuarioLleno && correoLleno && passLleno && paternoLleno && maternoLleno && longApat && longMat && correoNoExiste &&passLong){
		$("#BtnGuardaCambios").attr('type','submit');
		return true;
	}else{
		$("#BtnGuardaCambios").attr('type','button');
		muestraErrores(errorVacio);
		return false;
	}


}

//Desenmascarar contraseña
function desenmascaraPass(){
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
}

function editaPerfil(){
	$("form").find(':input:disabled').prop('disabled',false);
	$("#BtnEditar,#contrasenaActual").hide()
	$("#guardaCambios, #editarFoto").show()
}

//Función para mostrar la información de la carta seleccionada en el carrusel de la sección galería. 
//La información es traída de la base de datos mediante AJAX y JSON.
function muestraInfoCarta(idcarta){
	$("#numRima").val(1)
	//Llama al AJAX para traer la información de la carta
	$.ajax({
		url: base+'index.php/cDatosPerfil/traeDatosCarta/'+idcarta,
		dataType: "json",
		type: "POST",
		success:function(correcto){
			$("#imgCarta").removeAttr('src').attr('src',base+correcto.imgGaleria).addClass('fondo-amarillo') //Agregando efecto
			$("#nombreCarta").html(correcto.nombre) //Se agrega el nombre de la carta
			$("#descripcionCarta").html(correcto.descripcion) //Se agrega su descripción
			//Preparo los datos para mostrar las rimas
			numRima = $("#numRima").val()
			//Creo botón siguiente para ver más información (rimas)
			$("#masInfoCarta").html("<input type='button' value='sig' id='infCartaSig' onclick='muestraRimas("+idcarta+")'/>")
			$("#incarat").html("")
		}
	})	
}

function inicio(){
	$('#contrasenaActual, #estadisticas, #galeria, #editarFoto').hide()
	$("#carrusel>span, #lightbox").hide(100)
}

//Función que se mandará a llamar si una de las cartas de la galería no ha sido desbloqueada.
function limpiaInfoCarta(){
	$("#imgCarta").removeAttr('src').attr('src',base+'media/img/galeria/g_reverso.jpg').removeClass('fondo-amarillo') //Agregando efecto
	$("#nombreCarta").html('Carta no desbloqueada') //Se agrega el nombre de la carta
	$("#descripcionCarta").html('Aún te faltan puntos para desbloquear esta carta. ¡Sigue adelante!') //Se agrega su descripción
	$("#incarat, #masInfoCarta"). hide()

}

function muestraPerfil(){
	$(".error").hide();
	$("#foto-nombreUsr").show();
	$("form").find(':input:not(:disabled)').prop('disabled','false');
	$("#editarSeccion input[type='button'], #contrasenaActual input[type = 'password']").removeAttr("disabled");
	$('#guardaCambios,#editarFoto, #contrasenaActual').hide()
	$('#BtnEditar').show()
}

function cambiaImagenFoto(idImagen, urlImagenG){
	urlG = base+urlImagenG;
	$(".foto").prop('src',urlG);
	traeUrlAvatar(idImagen);
	$("#id_avatar").val(idImagen);	
}

function traeUrlAvatar(idImagen){
	$.ajax({
		url: base+'index.php/cExtras/traeUrlAvatar/'+idImagen,
		dataType: "json",
		type: "POST",
		async:true,
		success:function(url){
			$("#avatarIcn > img").prop('src',base+url.icnAvatar);
			console.log(url.icnAvatar);			
		}
	});	
}

function muestraInfoTrofeo(idTrofeo){
	if(trofeos[idTrofeo].Estado == 0){
		$(".trofeo-grande").attr('src',base+"media/img/trofeo/gn_carbon.png");
		$(".descripcionTrofeo").html("trofeo no ganado");
		$(".condicionTrofeo").html("¿?");
	}else{
		$(".trofeo-grande").attr('src',base+trofeos[idTrofeo].imagen);
		$(".descripcionTrofeo").html(trofeos[idTrofeo].descripcion);
		$(".condicionTrofeo").html(trofeos[idTrofeo].condicion);
	}
	$(".nombreTrofeo").html(trofeos[idTrofeo].nombre);
	
	$("#lightbox").show();
	
	$("#rTizq").click(function(){
		if(idTrofeo>1 && idTrofeo <= 24){
			idTrofeo--;
			if(trofeos[idTrofeo].Estado == 0){
				$(".trofeo-grande").attr('src',base+"media/img/trofeo/gn_carbon.png");
				$(".descripcionTrofeo").html("trofeo no ganado");
				$(".condicionTrofeo").html("¿?");

			}else{
				$(".trofeo-grande").attr('src',base+trofeos[idTrofeo].imagen);
				$(".descripcionTrofeo").html(trofeos[idTrofeo].descripcion);
				$(".condicionTrofeo").html(trofeos[idTrofeo].condicion);
			}
			$(".nombreTrofeo").html(trofeos[idTrofeo].nombre);
		}
		
	})
	$("#rTder").click(function(){
		if(idTrofeo>=1 && idTrofeo < 24){
			idTrofeo++;
			if(trofeos[idTrofeo].Estado == 0){
				$(".trofeo-grande").attr('src',base+"media/img/trofeo/gn_carbon.png");
				$(".descripcionTrofeo").html("trofeo no ganado");
				$(".condicionTrofeo").html("¿?");
			}else{
				$(".trofeo-grande").attr('src',base+trofeos[idTrofeo].imagen);
				$(".descripcionTrofeo").html(trofeos[idTrofeo].descripcion);
				$(".condicionTrofeo").html(trofeos[idTrofeo].condicion);
			}	
			$(".nombreTrofeo").html(trofeos[idTrofeo].nombre);
		}
	})
}
