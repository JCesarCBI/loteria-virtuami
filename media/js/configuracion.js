$(document).ready(function(){
	inicio();
	$("#inicioConfig").click(function(){
		elijeTipoJuego();
	})
	$("#tipoJuegoRegresar").click(function(){
		ocultaTipoJuego();
	})

	$("#cPartCompleta").click(function(){
		ocultaTipoJuego();
		$("#juego").html("Partida Completa");
		elijeNivel();

	})
	$("#cPartRapida").click(function(){
		ocultaTipoJuego();
		$("#juego").html("Partida Rapida");
		elijeNivel();

	})
	
	//NIVEL
	$("#nivelJuegoRegresar").click(function(){
		ocultaNivelJuego();
		elijeTipoJuego();
	});
	$("#nBasico").click(function(){
		ocultaNivelJuego();
		$("#nivel").html("Nivel Básico");
		elijeModalidad();
	});
	$("#nAvanzado").click(function(){
		ocultaNivelJuego();
		$("#nivel").html("Nivel Avanzado");
		elijeModalidad();

	});
	$("#nExperto").click(function(){
		ocultaNivelJuego();
		$("#nivel").html("Nivel Experto");
		elijeModalidad();
	});	
	
	
	//MODALIDAD
	$("#modalidadJuegoRegresar").click(function(){
		ocultaModalidad();
		elijeNivel();
	});
	$("#libre").click(function(){
		ocultaModalidad();
		$("#modalidad").html("Juego libre");
		jugar()
	})
	$("#diminutivo").click(function(){
		ocultaModalidad();
		$("#modalidad").html("Diminutivos");
		jugar()
	})	
	$("#der-adj").click(function(){
		ocultaModalidad();
		$("#modalidad").html("Derivados y adjetivos");
		jugar()
	})
	$("#sinonimo").click(function(){
		ocultaModalidad();
		$("#modalidad").html("Sinónimos");
		jugar()
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
	$("#tipoJuego, #nivelJuego, #modalidadJuego, #tipo, #nivelc, #modalidadc").hide();
	$("#jugar").show();
	tiempo("#jugar","magictime swashIn");
}
function elijeTipoJuego(){
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
