$(document).ready(function() {	
	//prepara campos para mostrar la primera parte del formulario
	inicio();	
	//REGISTRO
	$("#registroBtn, #irRegistro").click(function(){
		muestraPaso1();
	})
	$("#iniciarSesionBtn").click(function(){
		muestraIsesionForm();
	})
	$("#sig1").click(function(){
		if(validaPaso1()){
			$(".error").hide();
			muestraPaso2();
		}
	})
	$("#atras1").click(function(){
		muestraPaso1();
	})
	$("#sig2").click(function(){
		if(validaPaso2()){
			muestraPaso3();	
		}		
	})
	$("#atras2").click(function(){
		muestraPaso2();
	})
	$("#iniciarSesionBtn2").click(function(){
		muestraIsesionForm();
	})
	$("#usuario_comunidadUniversitaria").change(function(){
		eligeTipoUsuario();
	})
	$("#usuario_gradoActivo").change(function(){
		evaluaGradoActivo();
	})
});

function muestraCamposAlumno(){
	$("#prof-admin").hide();
	$("#alumno, #usuario_gradoActivo").show();
	$("#usuario_gradoActivo").val(1);
	$("#usuario_division,#usuario_posgrado, #lposgrado, #ldivision").hide();
	$("#usuario_area, #usuario_cargo").removeAttr("required");
	evaluaGradoActivo();
}
function evaluaGradoActivo(){
	grado = $("#usuario_gradoActivo").val();
	switch (grado){
		case "1": //Licenciatura
			$("#usuario_posgrado, #lposgrado").hide();
			$("#usuario_division, #ldivision").show();
			break;
		case "2": //Posgrado
			$("#usuario_division, #ldivision").hide();
			$("#usuario_posgrado, #lposgrado").show();			
	}
}
function muestraCamposProfAdmin(){
	$("#alumno").hide();
	$("#prof-admin > input[type='text']").val("");
	$("#prof-admin").show();
	$("#usuario_area, #usuario_cargo").attr("required","required");

}

function muestraPaso1(){
	$("#botones, #video,#formularioIsesion, #paso2, #paso3").hide();
	$("#formularioRegistro, #paso1, #sig1").show();
}

function muestraPaso2(){
	$("#paso1, #paso3, #sig1").hide();
	$("#formularioRegistro, #paso2").show();
}
function muestraPaso3(){
	$("#paso1, #paso2").hide();
	$("#formularioRegistro, #paso3").show();
	eligeTipoUsuario();	
}
function muestraIsesionForm(){
	$("#botones, #video, #formularioRegistro").hide();
	$("#formularioIsesion").show();
}
function inicio(){
	$("input[type='text'], input[type='password'], input[type='email']").val("");
	$("#formularioRegistro, #formularioIsesion, #paso1, #paso2, #paso3, #prof-admin, .error").hide();
}
function eligeTipoUsuario(){
	tipoUsuario = $("#usuario_comunidadUniversitaria").val()
	switch (tipoUsuario){
		case "1": //Alumno
			muestraCamposAlumno();
			break;
		case "2": //Profesor
			muestraCamposProfAdmin();
			break;
		case "3": //Administrativo
			muestraCamposProfAdmin();
			break;
		case "4": //Otro
			$("#alumno, #prof-admin").hide();
			break;
	}	
}
function validaPaso2(){
	$(".error").hide();
	var errorVacio = new Array();
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
	
	if(usuarioLleno && paternoLleno && maternoLleno && longNombre && longApat && longMat){
		return true;
	}else{
		muestraErrores(errorVacio);
		return false;
	}
	
}
function validaPaso1(){
	$(".error").hide();
	var errorVacio = new Array();

	//Usuario existente
	$.ajax({
		url: base+'index.php/cRegistro/usuario',
		data: { usuario: $('#usuario_nombreUsr').val() },
		dataType: "json",
		async: false,
		type: "POST",
		success:function(existe){ 
			if(existe == 1){
				usuarioNoExiste = false;
				var label = $("<label>").text("El usuario ya existe").attr({id:"usrError", class:"error"})
				$('#usuario_nombreUsr').after(label)
			}else{//Si el usuario no existe 
				usuarioNoExiste = true;
    		}
		}
	})

	//Usuario lleno
	if($("#usuario_nombreUsr").val() != ""){
		usuarioLleno = true;
		if($("#usuario_nombreUsr").val().length < 5){ //Verificamos la longitud
			var label = $("<label>").text("Mínimo 5 caracteres").attr({id:"usuarioLong", class:"error"})
			$("#usuario_nombreUsr").after(label);
			longUsuario = false;
		}else{
			longUsuario=true;
		}
	}else{
		usuarioLleno = false;
		errorVacio[0]= "#usuarioVacio";
	}
	
	//Correo vacío
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
					correoNoExiste = false;
					var label = $("<label>").text("El correo ya existe o el dominio es inválido (la cuenta debe ser de titlani/xanum/docencia)").attr({id:"emailExiste", class:"error"})
					$("#usuario_correo").after(label);
				}else{ 	//si el correo no existe, verifica que el campo no esté vacío para añadir la clase correcto
					correoNoExiste = true;
				}
			}
		})
	}else{
		correoLleno = false;
		errorVacio[1]= "#emailVacio";
	}
	
	//Contrasena vacía
	if($("#usuario_contrasena").val() != ""){
		passLleno = true;
		if($("#usuario_contrasena").val().length < 6){
			var label = $("<label>").text("Mínimo 6 carácteres").attr("id","passLong").attr("class", "error ");
			$("#usuario_contrasena").after(label)
			passLong = false;
		}else{
			passLong = true;
		}
	}else{
		passLleno = false;
		errorVacio[2]= "#passVacio";
	}	
	
	if(usuarioNoExiste && usuarioLleno && correoLleno && passLleno && correoNoExiste && longUsuario && passLong){
		return true;
	}else{
		muestraErrores(errorVacio);
		return false;
	}
}

function muestraErrores(cadena){ //Recibe un arreglo
	for ( i in cadena){
		console.log(cadena[i]);
		$(cadena[i]).html("Este campo no puede ser vacío");		
		$(cadena[i]).show();
	}
}
	
