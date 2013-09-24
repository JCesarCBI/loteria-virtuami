<html>
	<head>
		<meta charset="utf-8">
		<title>Configuración del juego</title>
		<script src="<?=base_url(); ?>media/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script>var base = "<?=base_url(); ?>"</script> 
		<script src="<?=base_url(); ?>media/js/eventosDeslizaCartaModalidad.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/general.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/modalidadN.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/magic.css">
	</head>	
	
	<body>
		<div class="twelve columns">
			<!-- botón ver perfil -->
			<div class="row">
				<a href="<?=base_url()?>index.php/cDatosPerfil/PerfilUsuario/<?=$idJuego=1?>/<?=$idUsuario=-1?>" id="bPerfil" class="large button"> Ver perfil</a>
			</div>
			<!-- sección donde el usuario elegirá la modalidad a jugar -->
			<div class="twelve columns " id="cConfiguracion">
				<span class="two columns carta" id="configuracion">
					<!-- <hr> -->
					<!-- <label id="configJuego" class="labelConf">Configuración del Juego</label> -->
					<!-- <hr> -->
					<div id="info">
						<label id="juego"></label>
						<label id="nivel"></label>
						<label id="modalidad"></label>
						<label></label>
					</div>
					<input type="button" value="inicio" id="inicioConfig">
				</span>
				<span class="two columns carta" id="cTipoJuego">
					<hr>
					<label id="tipoJuego" class="labelConf">TIPO DE JUEGO</label>
					<hr>
					<input type="button" class="twelve columns" value="regresar" id="tipoJuegoRegresar"/>
				</span>
				<span class="two columns carta" id="cPartCompleta">
					<label id="partidaCompleta" class="labelConf">Partida Completa</label>
				</span>
				<span class="six columns carta ultima" id="cPartRapida">
					<label id="partidaRapida" class="labelConf">Partida Rápida</label>
				</span>
				
				
				<!--Cartas de nivel-->
				<span class="two columns carta nJuegoInicio nJuegoOculta" id="cNivelJuego">
					<label id="nivelJuego" class="labelConf">Nivel de Juego</label>
					<input type="button" value="regresar" id="nivelJuegoRegresar">
				</span>
				<span class="two columns carta basicoInicio nJuegoOculta" id="nBasico">
					<label id="basico" class="labelConf">Básico</label>
				</span>
				<!-- <span class="two columns carta nJuegoOculta" id="nIntermedio">
					<label id="intermedio" class="labelConf">Intermedio</label>
				</span> -->
				<span class="two columns carta nJuegoOculta" id="nAvanzado">
					<label id="avanzado" class="labelConf">Avanzado</label>
				</span>
				<span class="two columns carta nJuegoOculta ultima" id="nExperto">
					<label id="experto" class="labelConf">Experto</label>
				</span>
			</div> 
		</div>
	</body>
</html>