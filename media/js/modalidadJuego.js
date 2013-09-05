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
		$("#vRapida").val(1)
   		
	});
	
    //Habilita las opciones posibles de la partida completa
	$("#pCompleta").click(function() {
   		$("#nBasico").removeAttr("disabled");
   		$("#nAvanzado").removeAttr("disabled");
		$("#vPartida").val(1)
   		
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
		$("#vModalidad").val(1)
		$("#bJuego").removeAttr("disabled");
	});
	
	$("#mDiminutivo").click(function() {
		$("#vModalidad").val(2)
		$("#bJuego").removeAttr("disabled");
	});
	
	$("#mDyA").click(function() {
		$("#vModalidad").val(3)
		$("#bJuego").removeAttr("disabled");
	});
	
	$("#mSinonimos").click(function() {
		$("#vModalidad").val(5)
		$("#bJuego").removeAttr("disabled");
	});
	
	$("#bJuego").click(function() {
		var m=$("#vModalidad").val()
		var n=$("#vNivel").val()
		var p=$("#vPartida").val()
		$("#bJuego").attr("href", base+"index.php/cJuego/configuracionJuego/"+p+"/"+n+"/"+m);
	});
	
});


