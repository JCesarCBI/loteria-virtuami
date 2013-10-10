<html>
	<head>
		<meta charset="utf-8">
		<title>Configuración del juego</title>
		<script src="<?=base_url(); ?>media/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script>var base = "<?=base_url(); ?>"</script> 
		<script src="<?=base_url(); ?>media/js/configuracion.js" charset="utf-8"></script>
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/general.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/bordeBlanco.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/configuracion.css">
	</head>	
	
	<body>
		<div id="barraUsuario" class="twelve columns header sombra2">
			<img src="<?= base_url() ?><?= $icnAvatar ?>" title="avatar"/>
			<a href="#" id="usuario"><?=$nombreUsr?></a>
			<input id="usuario_id" name="usuario_id" type="hidden" value="<?= $idUsr ?>">
		</div>
		<div id="cajaMadre" class="twelve columns">
		<div id="cajaHija" class="twelve columns">
		<div id="cConfiguracion" class="twelve columns">
			<!-- sección donde el usuario elegirá la modalidad a jugar -->
				<!--Carta que mostrará las opciones elegidas -->
			<span class="three columns">
				<center><img src="<?= base_url()?>media/img/logo_loteria.png"></center>					
			</span>
			
			<span class="two columns carta" id="configuracion">
				<center><img src="<?= base_url() ?>/media/img/hr_nuevo.png"></center><hr>
				<center><span id="Configuracion_del_juego">Configuración del Juego</span></center><hr>

				<div id="info">
					<label id="juego"></label>
					<label id="nivel"></label>
					<label id="modalidad"></label>
					<label></label>
				</div>
				<input type="button" class="twelve columns" value="inicio" id="inicioConfig">
			</span> 
			<span class="one columns"></span>
			
			<span id="tipo" class="two columns carta">
				<label id="tipodeJuego" class="labelConf negro"><hr>TIPO DE JUEGO<hr></label>
				<input type="button" class="twelve columns" value="regresar" id="tipoJuegoRegresar"/>
			</span>
			<span id="nivelc" class="two columns carta">
				<label id="nivelDelJuego" class="labelConf negro"><hr>Nivel de Juego<hr></label>
				<input type="button" class="twelve columns" value="regresar" id="nivelJuegoRegresar">
			</span>
			<span id="modalidadc" class="two columns carta">
				<label class="labelConf negro">
					<hr>Modalidad<hr>
				</label>
				<input type="button" class="twelve columns" value="regresar" id="modalidadJuegoRegresar">
			</span>
	
			<!-- cartas tipo juego -->
			<span id="tipoJuego" class="twelve columns">
				<span class="three columns"></span>
				<span class="two columns carta" id="cPartCompleta">
					<label id="partidaCompleta" class="labelConf rojo">Partida Completa</label>
				</span>
				<span class="one columns"></span>
				<span class="two columns carta ultima" id="cPartRapida">
					<label id="partidaRapida" class="labelConf rojo">Partida Rápida</label>
				</span>
			</span>
			<!--Cartas de nivel-->
			<span id="nivelJuego" class="twelve columns">
				<span class="three columns"></span>
				<span class="two columns carta" id="nBasico">
					<label id="basico" class="labelConf rojo">Básico</label>
				</span>
				<span class="one columns"></span>
				<span class="two columns carta" id="nAvanzado">
					<label id="avanzado" class="labelConf rojo">Avanzado</label>
				</span>
				<span class="one columns"></span>
				<span class="two columns carta ultima bloqueado" id="nExperto">
					<label id="experto" class="labelConf rojo">Experto</label>
				</span>
			</span>
			
			<!--cartas modalidad-->
			<span id="modalidadJuego" class="twelve columns">
				<span class="two columns carta" id="libre">
					<label id="juegoLibre" class="labelConf rojo">Juego libre</label>
				</span>	<span class="one columns"></span>
				<span class="two columns carta" id="diminutivo">
					<label id="diminutivos" class="labelConf rojo">Diminutivos</label>
				</span>	<span class="one columns"></span>
				<span class="two columns carta" id="der-adj">
					<label id="derivadosAdjetivos" class="labelConf rojo">Derivados y adjetivos</label>
				</span><span class="one columns"></span>
				<span class="two columns carta ultima" id="sinonimo">
					<label id="sinonimos" class="labelConf rojo">Sinónimos</label>
				</span>					
			</span>
			<form method="post" action="<?=base_url(); ?>index.php/cpruebasLuisa/juegoLibre2" >
				<input type="hidden" id="vPartida" name="vPartida" value="0" />
				<input type="hidden" id="vNivel" name="vNivel" value="0" />
				<input type="hidden" id="vModalidad" name="vModalidad" value="0" />
				<span id="jugar" class="two columns carta">
					<input type="submit" class="twelve columns labelConf negro" value="¡Jugar!"></input>
					<input type="button" class="twelve columns" value="regresar" id="jugarRegresar">
				</span>	
		    </form>	
		</div> 
		</div> <!--caja hija-->
		</div> <!--caja madre -->
	</body>
</html>