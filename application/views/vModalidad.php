<html>
	<head>
		<meta charset="utf-8">
	
		<title>Principal</title>
		<script src="<?=base_url(); ?>media/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script>var base = "<?=base_url(); ?>"</script> 
		<script src="<?=base_url(); ?>media/js/modalidadJuego.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">

	</head>	
	
	<body>
		<input type="hidden" id="vPartida" value="0" />
		<input type="hidden" id="vNivel" value="0" />
		<input type="hidden" id="vModalidad" value="0" />
		
		<h2>Principal</h2>
		
		<center> SELECCIONA UNO	 <br />
		<a href="#" id="pCompleta" class="button round">PARTIDA COMPLETA</a>	
		<a href="#" id="pRapida" class="button round">PARTIDA RÁPIDA</a> <br /> <br />
		SELECCIONA UN NIVEL	 <br />
		<a href="#" id="nBasico" class="button round">Básico</a>	
		<a href="#" id="nIntermedio" class="button round">Intermedio</a>
		<a href="#" id="nAvanzado" class="button round">Avanzado</a>
		<a href="#" id="nExperto" class="button round">Experto</a> <br /> <br />
		SELECCIONA UNA MODALIDAD	 <br />
		<a href="#" id="mJL" class="button round">Juego Libre</a>	
		<a href="#" id="mDiminutivo" class="button round">Diminutivo</a>
		<a href="#" id="mDyA" class="button round">Derivados y adjetivos</a>	
		<a href="#" id="mSinonimos" class="button round">Sinonimos</a><br /> <br />
		
		<a href="<?=base_url()?>index.php/cDatosPerfil/PerfilUsuario/<?=$idJuego=1?>/<?=$idUsuario=-1?>" id="bPerfil" class="large button round">Perfil</a>
		<a id="bJuego" class="large button round">Juego</a>
		 </center>
		 
		 	
	</body>
</html>