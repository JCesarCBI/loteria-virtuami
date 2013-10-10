$(document).ready(function(){
	inicio();
	$("#inicioConfig").click(function(){
		elijeTipoJuego();
	})
	$("#tipoJuegoRegresar").click(function(){
		ocultaTipoJuego();
	})

	//PARTIDA
	$("#cPartCompleta").click(function(){
		ocultaTipoJuego();
		$("#juego").html("Partida Completa");
		$("#vPartida").val(1)
		elijeNivel();

	})
	$("#cPartRapida").click(function(){
		ocultaTipoJuego();
		$("#juego").html("Partida Rapida");
		$("#vPartida").val(2)
		elijeNivel();

	})
	
	//NIVEL
	$("#nivelJuegoRegresar").click(function(){
		ocultaNivelJuego();
		elijeTipoJuego();
	});
	$("#nBasico").click(function(){
		if($(this).hasClass("bloqueado")){
			alert("elemento bloqueado")
		}else{
			ocultaNivelJuego();
			$("#nivel").html("Nivel Básico");
			$("#vNivel").val(1)
			$("#diminutivo, #der-adj, #sinonimo").addClass("bloqueado");
			elijeModalidad();
		}
	});
	$("#nAvanzado").click(function(){
		if($(this).hasClass("bloqueado")){
			alert("elemento bloqueado")
		}else{
			ocultaNivelJuego();
			$("#nivel").html("Nivel Avanzado");
			$("#vNivel").val(2)
			$("#diminutivo, #der-adj, #sinonimo").removeClass("bloqueado");
			elijeModalidad();
		}

	});
	
	$("#nExperto").click(function(){
		if($(this).hasClass("bloqueado")){
			alert("elemento bloqueado")
		}else{
			ocultaNivelJuego();
			$("#nivel").html("Nivel Experto");
			$("#vNivel").val(3)
			elijeModalidad();
		}
	});	
	
	
	//MODALIDAD
	$("#modalidadJuegoRegresar").click(function(){
		ocultaModalidad();
		elijeNivel();
	});
	$("#libre").click(function(){
		if($(this).hasClass("bloqueado")){
			alert("elemento bloqueado")
		}else{
			ocultaModalidad();
			$("#vModalidad").val(1)
			$("#modalidad").html("Juego libre");		
			jugar()
		}
	})
	$("#diminutivo").click(function(){
		if($(this).hasClass("bloqueado")){
			alert("elemento bloqueado")
		}else{		
			ocultaModalidad();
			$("#vModalidad").val(2)
			$("#modalidad").html("Diminutivos");
			jugar()
		}
	})	
	$("#der-adj").click(function(){
		if($(this).hasClass("bloqueado")){
			alert("elemento bloqueado")
		}else{
			ocultaModalidad();
			$("#vModalidad").val(3)
			$("#modalidad").html("Derivados y adjetivos");
			jugar()
		}
	})
	$("#sinonimo").click(function(){
		if($(this).hasClass("bloqueado")){
			alert("elemento bloqueado")
		}else{
			ocultaModalidad();
			$("#modalidad").html("Sinónimos");
			$("#vModalidad").val(4)
			jugar()
		}
	})
	
	//COMENZAR A JUGAR!
	$("#jugarRegresar").click(function(){
		ocultaJugar();
		elijeModalidad();
	})
	$("#jugar").click(function(){
		ocultaJugar();
	})			
})

function inicio(){
	$("#tipoJuego, #nivelJuego, #modalidadJuego, #jugar, #tipo, #nivelc, #modalidadc").hide();
}

function jugar(){
	$("#cConfiguracion").css("height","100%");
	$("#tipoJuego, #nivelJuego, #modalidadJuego, #tipo, #nivelc, #modalidadc").hide();
	$("#jugar").show();
	tiempo("#jugar","magictime swashIn");
}
function elijeTipoJuego(){
	$("#cConfiguracion").css("height","auto");
	$("#nivelJuego, #modalidadJuego, #jugar, #nivelc, #modalidadc").hide();
	$("#tipo, #tipoJuego").show();
	tiempo("#tipo","magictime swashIn");
	tiempo("#cPartCompleta","magictime swashIn");
	tiempo("#cPartRapida","magictime swashIn");
}

function elijeNivel(){
	$("#tipoJuego, #modalidadJuego, #jugar, #tipo, #modalidadc").hide();
	$("#nivelc, #nivelJuego").show();
	tiempo("#nivelc","magictime swashIn");
	tiempo("#nBasico","magictime swashIn");
	tiempo("#nAvanzado","magictime swashIn");
	tiempo("#nExperto","magictime swashIn");
}

function elijeModalidad(){
	$("#tipoJuego, #nivelJuego, #jugar, #tipo, #nivelc").hide();
	$("#modalidadc, #modalidadJuego").show();
	tiempo("#modalidadc","magictime swashIn");
	tiempo("#libre","magictime swashIn");
	tiempo("#diminutivo","magictime swashIn");
	tiempo("#der-adj","magictime swashIn");
	tiempo("#sinonimo","magictime swashIn");

}

function ocultaModalidad(){
	tiempo2("#modalidadc","magictime swashOut");
	tiempo2("#libre","magictime swashOut");	
	tiempo2("#diminutivo","magictime swashOut");	
	tiempo2("#der-adj","magictime swashOut");	
	tiempo2("#sinonimo","magictime swashOut");	
}
function ocultaTipoJuego(){
	tiempo2("#cPartRapida","magictime swashOut");	
	tiempo2("#cPartCompleta","magictime swashOut");
	tiempo2("#tipo","magictime swashOut");

}

function ocultaNivelJuego(){
	tiempo2("#nivelc","magictime swashOut");
	tiempo2("#nBasico","magictime swashOut");
	tiempo2("#nAvanzado","magictime swashOut");
	tiempo2("#nExperto","magictime swashOut");
}

function ocultaJugar(){
	tiempo2("#jugar","magictime swashOut");
}

//Recibe #id, clase
function tiempo(x,y) {
	$(x).addClass(y);
	var wait = window.setTimeout( function(){
		$(x).removeClass(y)}, 1500 );
} 
function tiempo2(x,y) {
	$(x).addClass(y);
	// var wait = window.setTimeout( function(){
		// $(x).removeClass("nada")}, 1500 );
} 
