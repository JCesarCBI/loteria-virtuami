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
		$(".error").hide();
		muestraIsesionForm();
	})
	$("#usuario_comunidadUniversitaria").change(function(){
		eligeTipoUsuario();
	})
	$("#usuario_gradoActivo").change(function(){
		evaluaGradoActivo();
	})
	
	$("#Lusuario_nombreUsr, #Lusuario_contrasena").keyup(function(){
		$(".error").hide();
		if(validaLoginPass() && validaLoginUsr()){
			$("#iSesion-boton").attr("type","submit").removeAttr("disabled").removeClass("valError");
		}else{
			$("#iSesion-boton").attr("type","button").attr("disabled","disabled").addClass("valError");
			if(!validaLoginUsr()){
				var label = $("<label>").text("Este campo no debe quedar vacío.").attr("class", "error ");
				$("#Lusuario_nombreUsr").after(label)
			}
			if(!validaLoginPass()){
				var label = $("<label>").text("Este campo no debe quedar vacío.").attr("class", "error ");
				$("#Lusuario_contrasena").after(label)
			}


		}
	})
	
	//Muestra la sección para recuperar contraseña
	$("#recuperaContrasena-boton").click(function(){
		$("#formalarioRecuperarContrasena").show();
	})
	$(".close").click(function(){
		$("#formalarioRecuperarContrasena").hide();
	})
});


function validaLoginPass(){
	console.log("validoPass");
	if($("#Lusuario_contrasena").val() == ""){
		return false;	
	}else{
		return true;
	}
}
function validaLoginUsr(){
	console.log("validoLogin")
	if($("#Lusuario_nombreUsr").val() == ""){
		return false;
	}else{
		$("#iSesion-boton").attr("type","submit");
		return true;
	}
}

function muestraPaso1(){
	document.getElementById('vid').pause()	
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
	document.getElementById('vid').pause()	
	$("#botones, #video, #formularioRegistro").hide();
	$("#formularioIsesion").show();
}

function muestraRecuperaContrasenaForm(){
	$("#formularioRegistro, #formularioIsesion").hide();
	$("#formalarioRecuperarContrasena").show();
}
function inicio(){
	$("input[type='text'], input[type='password'], input[type='email']").val("");
	$("#formularioRegistro, #formularioIsesion, #formalarioRecuperarContrasena, #paso1, #paso2, #paso3, #prof-admin, .error").hide();
}

	
