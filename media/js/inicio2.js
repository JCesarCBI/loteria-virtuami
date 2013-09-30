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

	
