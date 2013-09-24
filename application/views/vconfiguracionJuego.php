<html>
	<head>
		<meta charset="utf-8">
		<title>Configuración del juego</title>
		<script src="<?=base_url(); ?>media/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script>var base = "<?=base_url(); ?>"</script> 
		<script src="<?=base_url(); ?>media/js/configuracion.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/general.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/configuracion.css">
		<!-- <link rel="stylesheet" href="<?=base_url(); ?>media/css/magic.css"> -->
	</head>	
	
	<body>
		<div id="cConfiguracion" class="twelve columns">
			<!-- botón ver perfil -->
			<div class="row">
				<a href="<?=base_url()?>index.php/cDatosPerfil/PerfilUsuario/<?=$idJuego=1?>/<?=$idUsuario=-1?>" id="bPerfil" class="large button"> Ver perfil</a>
			</div>
			<!-- sección donde el usuario elegirá la modalidad a jugar -->
				<!--Carta que mostrará las opciones elegidas -->
				<span class="two columns carta" id="configuracion">
					<!-- <hr>
					<label id="configJuego" class="labelConf">Configuración del Juego</label>
					<hr> -->
					<div id="info">
						<label id="juego"></label>
						<label id="nivel"></label>
						<label id="modalidad"></label>
						<label></label>
					</div>
					<input type="button" class="twelve columns" value="inicio" id="inicioConfig">
				</span>
				
				<span id="tipoJuego" class="ten columns">
					<span id="tipo" class="two columns carta">
						<!-- <hr> -->
						<label id="tipodeJuego" class="labelConf negro"><hr>TIPO DE JUEGO<hr></label>
						<!-- <hr> -->
						<input type="button" class="twelve columns" value="regresar" id="tipoJuegoRegresar"/>
					</span>
					<span class="two columns carta" id="cPartCompleta">
						<label id="partidaCompleta" class="labelConf rojo">Partida Completa</label>
					</span>
					<span class="two columns carta ultima" id="cPartRapida">
						<label id="partidaRapida" class="labelConf rojo">Partida Rápida</label>
					</span>
				</span>
				
				<!--Cartas de nivel-->
				<span id="nivelJuego" class="ten columns">
					<span id="nivelc" class="two columns carta">
						<label id="nivelDelJuego" class="labelConf negro"><hr>Nivel de Juego<hr></label>
						<input type="button" class="twelve columns" value="regresar" id="nivelJuegoRegresar">
					</span>
					<span class="two columns carta" id="nBasico">
						<label id="basico" class="labelConf rojo">Básico</label>
					</span>
					<span class="two columns carta" id="nAvanzado">
						<label id="avanzado" class="labelConf rojo">Avanzado</label>
					</span>
					<span class="two columns carta ultima" id="nExperto">
						<label id="experto" class="labelConf rojo">Experto</label>
					</span>
				</span>
				
				<span id="modalidadJuego" class="ten columns">
					<span id="modalidadc" class="two columns carta">
						<label class="labelConf negro">
							<hr>Modalidad<hr>
						</label>
						<input type="button" class="twelve columns" value="regresar" id="modalidadJuegoRegresar">
					</span>
					<span class="two columns carta" id="libre">
						<label id="juegoLibre" class="labelConf rojo">Juego libre</label>
					</span>
					<span class="two columns carta" id="diminutivo">
						<label id="diminutivos" class="labelConf rojo">Diminutivos</label>
					</span>	
					<span class="two columns carta" id="der-adj">
						<label id="derivadosAdjetivos" class="labelConf rojo">Derivados y adjetivos</label>
					</span>					
					<span class="two columns carta ultima" id="sinonimo">
						<label id="sinonimos" class="labelConf rojo">Sinónimos</label>
					</span>					
				</span>
				
				<span id="jugarc" class="ten columns">
					<span id="jugar" class="two columns ultima carta">
						<label class="labelConf negro"><hr>¡Jugar!<hr></label>
						<input type="button" class="twelve columns" value="regresar" id="jugarRegresar">
					</span>
				</span>
			</div> 
	</body>
</html>