$(document).ready(function(){
   	
   	$("#nBasico").attr("disabled", "disabled");
   	$("#nIntermedio").attr("disabled", "disabled");
   	$("#nAvanzado").attr("disabled", "disabled");
   	$("#nExperto").attr("disabled", "disabled");
   	$("#mJL").attr("disabled", "disabled");
   	$("#mDiminutivo").attr("disabled", "disabled");
   	$("#mDyA").attr("disabled", "disabled");
   	$("#mSinonimos").attr("disabled", "disabled");
   	$("#bJuego").attr("disabled", "disabled");


    //Habilita las opciones posibles de la partida rápida
	$("#pRapida").click(function() {
   		$("#nBasico").removeAttr("disabled");
   		$("#nAvanzado").removeAttr("disabled");
		$("#vPartida").val(2);
   		
	});
	
    //Habilita las opciones posibles de la partida completa
	$("#pCompleta").click(function() {
   		$("#nBasico").removeAttr("disabled");
   		$("#nAvanzado").removeAttr("disabled");
		$("#vPartida").val(1);
   		
	});
    

    //Habilita las opciones posibles de la partida básica
	$("#nBasico").click(function() {
   		$("#mJL").removeAttr("disabled");
   		$("#mDiminutivo").attr("disabled", "disabled");
	   	$("#mDyA").attr("disabled", "disabled");
	   	$("#mSinonimos").attr("disabled", "disabled");
	   	$("#bJuego").attr("disabled", "disabled");
		$("#vNivel").val(1)
	});
	
    //Habilita las opciones posibles de la partida rápida
	$("#nAvanzado").click(function() {
		$("#vNivel").val(3)
   		$("#mJL").removeAttr("disabled");
   		$("#mDiminutivo").removeAttr("disabled");
   		$("#mSinonimos").removeAttr("disabled");
   		$("#mDyA").removeAttr("disabled");
   		$("#bJuego").attr("disabled", "disabled");
	});
	
	$("#mJL").click(function() {
		$("#vModalidad").val(1);
		$("#bJuego").removeAttr("disabled");
	});
	
	$("#mDiminutivo").click(function() {
		$("#vModalidad").val(2);
		$("#bJuego").removeAttr("disabled");
	});
	
	$("#mDyA").click(function() {
		$("#vModalidad").val(3);
		$("#bJuego").removeAttr("disabled");
	});
	
	$("#mSinonimos").click(function() {
		$("#vModalidad").val(5);
		$("#bJuego").removeAttr("disabled");
	});
	
	$("#bJuego").click(function() {
		var m=$("#vModalidad").val();
		var n=$("#vNivel").val();
		var p=$("#vPartida").val();
		$("#bJuego").attr("href", base+"index.php/cJuego/configuracionJuego/"+p+"/"+n+"/"+m);
	});
	
/*****************************************************/
	desactivaNiveles();
	desactivaTipoJuego();
	$("#inicioConfig").click(function(){
		mostrarCartasTipojuego();
		activaTipoJuego();
		$("#inicioConfig").hide();
	})
	
	$("#cPartCompleta, #partidaRapida").click(function(){
		ocultarCartasTipoJuego()
		activaNiveles()
		mostrarCartasNivelJuego()
	})
	$("#nBasico").click(function(){
		ocultarCartasNivelJuego()
	})
	$("#tipoJuegoRegresar").click(function(){
		ocultarCartasTipoJuego()
		desactivaNiveles();
		$("#inicioConfig").show();
	})
	$("#nivelJuegoRegresar").click(function(){
		limpiarClasesNivel()
		activaTipoJuego()
		mostrarCartasTipojuego();
	})
	$("#cPartCompleta").click(function(){
		$("#juego").html('partida completa')
	})
	$("#partidaRapida").click(function(){
		$("#juego").html('partida rápida')
	})
	$("#nBasico").click(function(){
		$("#nivel").html('Básico')
		ocultarCartasNivelJuego()
	})
});

function desactivaNiveles(){
	$("#cNivelJuego, #nBasico, #nAvanzado, #nExperto").hide();
}

function activaNiveles(){
	desactivaTipoJuego();
	$("#cNivelJuego, #nBasico, #nAvanzado, #nExperto").show();
}

function activaTipoJuego(){
	$("#cPartCompleta, #cPartRapida, #cTipoJuego").show();
	desactivaNiveles();
}

function desactivaTipoJuego(){
	$("#cPartCompleta, #cPartRapida, #cTipoJuego").hide();
}
function ocultarCartasTipoJuego(){
	$("#cPartCompleta").removeClass('slideRight').addClass('slideRightRetourn').css({'z-index':'-1'});
	$("#cPartRapida").removeClass('slideRight').addClass('slideRightRetourn ultima2');
	$("#cTipoJuego").removeClass('slideRight').addClass('slideRightRetourn clase3').css('z-index','-1');
	$("#cPartCompleta").addClass('clase1');
	$("#cPartRapida").addClass('clase2');
}

function mostrarCartasTipojuego(){
	$("#cTipoJuego, #cPartCompleta, #cPartRapida").removeClass('slideRightRetourn ultima2 clase1 clase2 clase3').addClass('magictime slideRight').css({'opacity':'1', 'z-index':'1'});
	$("#cTipoJuego").addClass('cartasAbiertas');
}

function mostrarCartasNivelJuego(){
	$("#cNivelJuego").removeClass('nJuegoOculta').addClass('nJuegoAparece nJuegoInicio2 magictime slideRight');
	$("#nBasico").removeClass('nJuegoOculta basicoInicio').addClass('nJuegoAparece basico2 magictime slideRight');
	$("#nAvanzado").removeClass('nJuegoOculta').addClass('nJuegoAparece magictime slideRight');
	$("#nExperto").removeClass('nJuegoOculta').addClass('nJuegoAparece magictime slideRight');

}

function ocultarCartasNivelJuego(){
	$("#nBasico").removeClass('slideRight basico2').addClass('slideRightRetourn regresa');
	$("#nAvanzado").removeClass('slideRight basico2').addClass('slideRightRetourn regresa2');
	$("#nExperto").removeClass('slideRight basico3').addClass('slideRightRetourn regresa2');

}

function limpiarClasesNivel(){
	$("#cNivelJuego").removeClass('magictime slideRight nJuegoInicio2').addClass('nJuegoAparece');
	$("#nBasico").removeClass('nJuegoAparece basico2 magictime slideRight slideRightRetourn regresa').addClass('nJuegoOculta basicoInicio basicoInicio nJuegoOculta');
	$("#nAvanzado").removeClass('nJuegoAparece regresa2 magictime slideRight').addClass('nJuegoOculta');
	$("#nExperto").removeClass('nJuegoAparece regresa3 magictime slideRight').addClass('nJuegoOculta');
}




