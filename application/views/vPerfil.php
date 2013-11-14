<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/general.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/perfil.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/bordeBlanco.css">
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
		<script src="<?= base_url()?>media/js/jquery-1.9.1.min.js"></script>
		<script> base = "<?= base_url() ?>"</script>
		<script src="<?= base_url()?>media/js/validaCampos.js"></script>
		<script src="<?= base_url()?>media/js/perfil.js"></script>
		<script src="<?= base_url()?>media/js/menu.js"></script>
	    <script type="text/javascript">
	      google.load("visualization", "1", {packages:["corechart"]});
	      google.setOnLoadCallback(drawChart);
	      function drawChart() {
			var data = google.visualization.arrayToDataTable([
			          ['Tipo Partida', 'Numero'],
			          ['basicoGanados',    <?= $estadisticas['basicoGanados'] ?>],
			          ['avanzadoGanados',  <?= $estadisticas['avanzadoGanados'] ?>],
			          ['partidasPerdidas',  <?= $estadisticas['partidasPerdidas'] ?>],
			          ['expertoGanados', <?= $estadisticas['expertoGanados'] ?>],
		        ]);
	        var options = {
				backgroundColor: '#17343C',
		       	legend: 'none',
		       	enableInteractivity:false,
		       	chartArea:{
		       		width:"auto"
		       	},
		       	width:"auto",			       	
	        };		
	        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
	        chart.draw(data, options);
		  }
    	</script>
	</head>
	<body>
		<script>		
			
			<?php
				$js_array = json_encode($trofeos);
				echo "var trofeos = ". $js_array . ";\n";
			?>			
		</script>						
		<title>Editar perfil</title>
	
		<!--sección de la barra de usuario en donde se encuentra el avatar y el menú para dirigirse a secciones como perfil, lecciones, juego, etc. -->
		<?= $barraUsuario ?>		
		<div id="cajaMadre" class="twelve columns">
			<div id="cajaHija" class="twelve columns">
				<div class="two columns"></div>
				<ul class="navegacion ten columns">
					<li class="three column"><a href="<?= base_url()?>index.php/cJuego/opcionesJuego"><img src="<?= base_url()?>media/img/_j.jpg">uego</a></li>
					<li id="nav-informacion" class="three column"><img src="<?= base_url()?>media/img/_i.jpg">nformación</li>
					<li id="nav-estadistica" class="three column"><img src="<?= base_url()?>media/img/_e.jpg">stadísticas</li>
					<li id="nav-galeria" class="three column"><img src="<?= base_url()?>media/img/_g.jpg">alería</li>
				</ul>
				<div id="foto-nombreUsr" class="twelve columns">
					<center><img class="two columns foto" src="<?= base_url() ?><?= $gdeAvatar ?>" title=""/></center>
					<div class="one columns"></div>
					<div id="nombreUsuario" class="nine columns">
						<h1 class="underline"><?= $nombreUsr?></h1>
						<center><label id="lnombreUsr">Nombre de usuario</label></center>
					</div>										

				</div>
				<div id="informacion" class="twelve columns">
					<form class="columns twelve" id="cjInformacion" action="<?=base_url()?>index.php/cEditarPerfilJugador/actualizarDatos" method="post">
						<hr><hr>
						<input id="id_avatar" name="id_avatar" type="hidden" value="<?= $idAvatar ?>"/>
						<input id="usuario_id" name="usuario_id" type="hidden" value="<?= $idUsr?>"/>
						
						<!-- primera columna -->
						<div id="c1" class="four columns">
							<center><img id="logoLoteria" src="<?= base_url()?>media/img/logo_loteria.png" /></center>
							<center><input type="button" id="editarFoto" value="Editar foto" class="six columns centered"/></center>
							<div id="galeriaEditarFoto">
								<?php
									foreach ($avatares as $avatar) { ?>
										<img src="<?php print_r(base_url().$avatar['icnAvatar'])?>" onclick="cambiaImagenFoto(<?=$avatar['idAvatar']?>,'<?= $trofeos[$avatar['idAvatar']]['imagen']?>')" />
										
								<?php }
								?>
								<label id="closeGaleriaEditarFoto" href="#"></label>
							</div>
							<center id="guardaCambios"> 
								<input class="six columns centered" type="submit" id="BtnGuardaCambios" value="Guardar"><br>
								<input class="six columns centered" type="button" id="cancelarGuardaCambios" value="Cancelar">
							</center>
							<center id="editarSeccion"> <!--Editar información-->
								<span class="twelve columns"><input type="button" id="BtnEditar" class="seven columns centered" value="Editar"></span>
								<div id="contrasenaActual" class="twelve columns">
									<input class="twelve columns" type="password" id="usuario_contrasenaActual" placeholder="Confirma tu contraseña actual" name="usuario_contrasenaActual">
									<input type="button" id="BtnConfirmContrasena" value="Confirmar" class="six columns">
									<input type="button" id="BtnCancelarEditar" value="Cancelar" class="six columns">
								</div>
							</center>

						</div>
						
						<!-- segunda columna -->
						<div id="c2" class="four columns">
							<input type="hidden" value="<?= $idUsr?>" name="idUsuario"/>

							<input id="usuario_nombre" name="usuario_nombre" class="tarjeta" type="text" disabled value="<?= $nombre ?>">							
							<label id="nombreVacio" class="error"></label>
							<label for="usuario_nombre">Nombre</label>

							<input type="text" id="usuario_aPaterno" name="usuario_Apat" value="<?= $aPaterno?>" >
							<label id="apatVacio" class="error"></label>
							<label>Apellido paterno</label>
							
							<input type="text" id="usuario_aMaterno" name="usuario_Amat" value="<?= $aMaterno?>" >
							<label id="amatVacio" class="error"></label>
							<label>Apellido materno</label>

							<input type="email" id="usuario_correo" name="usr_correo" value="<?= $correo?>" >
							<label id="emailVacio" class="error"></label>
							<label >Correo</label>

							<?php echo form_dropdown('usuario_sexo', $Sexo, $sexo, 'id=usuario_sexo'); ?>
							<label>Sexo</label>
						</div>
						
						<!-- tercera columna -->
						<div id="c3" class="four columns"> 
				        	<?php echo form_dropdown('usuario_edad', $Edades, $edad, 'id=usuario_edad'); ?>
							<label>Edad</label>

				        	<?php echo form_dropdown('usuario_comunidadUniversitaria', $datos['comunidad_universitaria'], $idTipoUsr, 'id=usuario_comunidadUniversitaria'); ?>
							<label>Comunidad Universitaria</label>

							<div id="alumno">
								<?php  echo form_dropdown('usuario_gradoActivo', $datos['gradoActivo'], $idGradoActivo, 'id=usuario_gradoActivo'); ?>
								<label>Grado Activo</label>
				        		<?php  echo form_dropdown('usuario_division', $datos['division'], $idDivision, 'id=usuario_division'); ?>
								<label id="ldivision">División</label>
				        		<?php  echo form_dropdown('usuario_posgrado', $datos['pos'], $idGradoPosgrado, 'id=usuario_posgrado'); ?>
								<label id="lposgrado">Posgrado</label>
				        	</div>
						    <div id="prof-admin">
								<div id="area" class="">
							        <input class="lateral vacio tercero" type="text" id="usuario_area" name="usuario_area" placeholder="* área" value="<?=$area?>">
									<label>Área</label>
							    </div>
								<div id="cargo" class="">
									<input class="lateral vacio tercero" type="text" id="usuario_cargo" name="usuario_cargo" placeholder="* cargo" value="<?=$cargo?>">
									<label>Cargo</label>
								</div>
							</div>

							<input class="four columns" id="usuario_contrasena" name="usuario_contrasena" type="password" value="<?php print_r($contrasena)?>" >
							<label id="passVacio" class="error"></label>
							<label for="usuario_contrasena">Contraseña</label>
							<input id="desenmascarar" class="four columns" type="checkbox" />
							<label for="desenmascarar">Desenmascarar</label>
							<div class="four columns"></div>
						</div>
					</form>
				</div> <!--información-->