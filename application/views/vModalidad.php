<html>
	<head>
		<meta charset="utf-8">
	
		<title>Principal</title>
		<script src="<?=base_url(); ?>media/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script>var base = "<?=base_url(); ?>"</script> 
		<script src="<?=base_url(); ?>media/js/modalidadJuego.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/general.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/modalidadN.css">

	</head>	
	
	<body>
		
		<div class="twelve columns">
			<!-- sección donde el usuario elegirá la modalidad a jugar -->
			<div class="row">
				<div class="two columns"></div>
				<div id="modalidadCaja" class="eight columns"> 
					<h3>Selecciona tipo de partida</h3>	 <br />
					<center>
						<a href="#" id="pCompleta" class="button round">PARTIDA COMPLETA</a>	
						<a href="#" id="pRapida" class="button round">PARTIDA RÁPIDA</a> <br /> <br />
						<h3>Selecciona nivel</h3><br />
						<a href="#" id="nBasico" class="button round">Básico</a>	
						<a href="#" id="nIntermedio" class="button round">Intermedio</a>
						<a href="#" id="nAvanzado" class="button round">Avanzado</a>
						<a href="#" id="nExperto" class="button round">Experto</a> <br /> <br />
						<h3>Selecciona modalidad</h3> <br />
						<a href="#" id="mJL" class="button round">Juego Libre</a>	
						<a href="#" id="mDiminutivo" class="button round">Diminutivo</a>
						<a href="#" id="mDyA" class="button round">Derivados y adjetivos</a>	
						<a href="#" id="mSinonimos" class="button round">Sinonimos</a><br /> <br />
						
						<form method="post" action="<?=base_url(); ?>index.php/cpruebasLuisa/juegoLibre2" >
							<input type="hidden" id="vPartida" name="vPartida" value="0" />
							<input type="hidden" id="vNivel" name="vNivel" value="0" />
							<input type="hidden" id="vModalidad" name="vModalidad" value="0" />
					    	<input  type="submit" value="Juego" class="large button round" id="bJuego"/>
					    </form>	
		      		</center>
				</div>
				<div class="two columns"></div>
			</div>
		</div>
	</body>
</html>