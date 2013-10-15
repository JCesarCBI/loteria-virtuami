$(document).ready(function(){
	//Oculta y muestra el menú cada vez que el usuario de click al nombre de usuario 
	//de la barra
	$("span ul > li:first-child").click(function(){
		$("#menu").toggleClass("ocultaMenu");
	})
	
	//Oculta el menú si el usuario da click en alguna parte del juego
	$("#cajaMadre, #cajaHija").click(function(){
		$("#menu").addClass("ocultaMenu");
	})
})
