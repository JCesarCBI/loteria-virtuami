<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/general.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/perfil.css">
		<script src="<?= base_url()?>media/js/jquery-1.9.1.min.js"></script>
		<script> base = "<?= base_url() ?>"</script>
		<script src="<?= base_url()?>media/js/perfil.js"></script>
	</head>

	<body>						
		<title>Editar perfil</title>
		<div class="twelve columns">
		<div class="twelve columns header">
			<img src="<?= base_url() ?><?= $avatar ?>" title="avatar"/>
			<a href="#" id="usuario"><?=$nombreUsr?></a>
			<input id="usuario_id" name="usuario_id" type="hidden" value="<?= $idUsr ?>">
		</div>

		<div class="row">
			<div class="row">
				<div class="twelve columns navegacion">
					<ul>
						<li id="nav-informacion" class="offset-by-six two column">Información</li>
						<li id="nav-estadistica"class="two column">Estadísticas</li>
						<li id="nav-galeria" class="two column">Galería</li>
					</ul>
				</div>
			</div>
			<div id="informacion" class="twelve columns informacion">
				<form action="<?=base_url()?>index.php/cDatosPerfil2/editaInformacionUsuario" method="post">
					<div class="row">
						<div class="six colums foto">
							<img src="<?= base_url() ?><?= $avatar ?>" title=""/>
						</div>
						<h1 class="nombreUsr six columns"><?= $nombreUsr?></h1>	
					</div><br>
					
					<div class="row">
						<div class="four columns">
							<label for="usuario_nombreUsuario">Nombre(s):</label>
							<input class="" type="text" id="usuario_nombreUsuario" name="usuario_nombreUsuario" value="<?= $nombre?>" autofocus>
						</div>
						<div class="four columns">
							<label for="usuario_nombreUsuario">Apellido paterno:</label>
							<input class="" type="text" id="usuario_nombreUsuario" name="usuario_nombreUsuario" value="<?= $aPaterno?>" autofocus>
						</div>
						<div class="four columns">
							<label for="usuario_nombreUsuario">Apellido materno:</label>
							<input class="" type="text" id="usuario_nombreUsuario" name="usuario_nombreUsuario" value="<?= $aMaterno?>" autofocus>
						</div>
					</div>
					
					<div class="row"> <!--Datos personales -->
						<div class="four columns">
							<label for="usr_correo">Correo:</label>
							<input type="email" id="usr_correo" name="usr_correo" value="<?= $correo?>" autofocus>
						</div>
						<div class="four columns">
							<label for="usuario_nombreUsuario">Sexo:</label>
				        	<?php  
				        	echo form_dropdown('usuario_sexo', $Sexo, $sexo, 'id=usuario_sexo'); ?>
						</div>
						<div class="four columns">
							<label for="usuario_nombreUsuario">Edad:</label>
				        	<?php  
				        	echo form_dropdown('usuario_sexo', $Edades, $edad, 'id=usuario_sexo'); ?>
						</div>
					</div>
					<hr>
					<div class="row"> <!--Datos académicos -->
						<div class="four columns">
							<label for="usuario_comunidadUniversitaria">Comunidad Universitaria:</label>
				        	<?php  
				        	echo form_dropdown('usuario_comunidadUniversitaria', $datos['comunidad_universitaria'], $idUsr, 'id=usuario_comunidadUniversitaria'); ?>
						</div>
						<div id="area" class="four columns">
							<label for="usuario_area">Área:</label>
					        <input autofocus class="lateral vacio tercero" type="text" id="usuario_area" name="usuario_area" placeholder="* área" value="<?=$area?>">
					    </div>
						<div id="cargo" class="four columns">
							<label for="usuario_cargo">Cargo:</label>
							<input autofocus class="lateral vacio tercero" type="text" id="usuario_cargo" name="usuario_cargo" placeholder="* cargo" value="<?=$cargo?>">
						</div>
						<div id="gradoActivo" class="four columns">
							<label for="usuario_gradoActivo">Grado Activo:</label>
							<?php  echo form_dropdown('usuario_gradoActivo', $datos['gradoActivo'], $idGradoActivo, 'id=usuario_gradoActivo'); ?>
						</div>
						<div id="division" class="four columns">
							<label for="usuario_division">División:</label>
			        		<?php  echo form_dropdown('usuario_division', $datos['division'], $idDivision, 'id=usuario_division'); ?>
			        	</div>
			        	<div id="posgrado" class="four columns">
							<label for="usuario_posgrado">Posgrado:</label>
			        		<?php  echo form_dropdown('usuario_posgrado', $datos['pos'], -1, 'id=usuario_posgrado'); ?>
			        	</div>						
					</div>
					<hr>
					<div class="row"> <!--Seguridad -->
						<label for="usuario_contrasena">Contraseña:</label>
						<input class="four columns" id="usuario_contrasena" type="password" value="<?php print_r($contrasena)?>" >
						<input id="desenmascarar" class="four columns" type="checkbox" />
						<label for="desenmascarar">Desenmascarar</label>
						<div class="four columns"></div>
					</div>
					<hr>
					
					<div id="guardaCambios" class="row"> <!--submit-->
						<input type="button" id="cancelarGuardaCambios" value="Cancelar">
						<input type="submit" id="BtnGuardaCambios" value="Guardar cambios">
					</div>
				</form>
				<div class="row"> <!--Editar información-->
					<div class="four columns">
						<input type="button" id="BtnEditar" value="Editar información">
					</div>
					<div id="contrasenaActual" class="four columns offset-by-one">
						<input type="password" id="usuario_contrasenaActual" placeholder="Confirma tu contraseña actual" name="usuario_contrasenaActual" >
						<input type="button" id="BtnConfirmContrasena" value="Confirmar">
						<input type="button" id="BtnCancelarEditar" value="Cancelar" >
					</div>
					<div class="three columns"></div>

				</div>
			</div> <!--información-->

			<div class="row" id="estadisticas">
				<div id="lightbox">
					<?php
						foreach ($trofeos as $indice=>$trofeo) {
							if($trofeo['Estado'] == 1){ ?>
								<center><div id="trofeo<?=$indice?>" class="">
									<img class="trofeo-grande gris" src="<?= base_url() ?><?= $trofeo['url-grande']?>">
									<h3 class="nombreTrofeo"><?= $trofeo['nombreTrofeo']?></h3>
									<p class="descripcionTrofeo"><?= $trofeo['Descripcion']?></p>
									<a class="close" href="#"></a>
								</div></center>
							<?php }else{ ?>
								<center><div id="trofeo<?=$indice?>" class="">
									<img class="trofeo-grande gris" src="<?= base_url() ?><?= $trofeo['url-grande']?>">
									<h3 class="nombreTrofeo"><?= $trofeo['nombreTrofeo']?></h3>
									<p class="descripcionTrofeo"><?= $trofeo['Descripcion']?></p>
									<a class="close" href="#"></a>
								</div></center>
						<?php }
							}
	 
						?>
				</div>
				<div class="trofeos three columns">
					<div>
						<ul id="gallery">
						<?php
							$i = 1;
							foreach ($trofeos as $indice=>$trofeo) {
								
								if($trofeo['Estado'] == 1){ ?>
									<li>
										<a class="four columns clearfix" href="#trofeo<?=$indice?>">
											<img class="trofeo-chico" src="<?= base_url() ?><?= $trofeo['url-chico']?>">
										</a>
									</li>
								<?php }else{ ?>
									<li>
										<a class="four columns clearfix" href="#trofeo<?=$indice?>">
											<img class="trofeo-chico gris" src="<?= base_url() ?><?= $trofeo['url-chico']?>">
										</a>	
									</li>
						<?php }
							$i++;	
							if($i==4){
								echo "<br><br><br><br><br><br>";
								$i=1;
							}
						}
	 
						?>
						</ul>
					</div>
				</div> <!--trofeos-->
				
				<div class="nine columns">
					<div id="partidas" class="caja-estadisticas">
						<h3>Partidas</h3>
						<ul>
							<li><b>Partidas "rápidas" ganadas:</b> <?= $estadisticas['partida']['rapidasGanadas']?></li>
							<li><b>Partidas "rápidas" perdidas:</b> <?= $estadisticas['partida']['rapidasPerdidas']?></li>
							<li><b>Partidas "completas" ganadas:</b> <?= $estadisticas['partida']['completasGanadas']?></li>
							<li><b>Partidas "completas" perdidas:</b> <?= $estadisticas['partida']['completasPerdidas']?></li>
						</ul>
					</div>
					
					<div id="niveles" class="caja-estadisticas">
						<h3>Níveles</h3>
						<ul>
							<li><b>Níveles "básico" ganados:</b> <?= $estadisticas['juego']['basicoGanados']?></li>
							<li><b>Níveles "básico" perdidos:</b> <?= $estadisticas['juego']['basicoPerdidos']?></li>
							<li><b>Níveles "intermedio" ganados:</b> <?= $estadisticas['juego']['intermedioGanados']?></li>
							<li><b>Níveles "intermedio" perdidos:</b> <?= $estadisticas['juego']['intermedioPerdidos']?></li>
							<li><b>Níveles "avanzado" ganados:</b> <?= $estadisticas['juego']['avanzadoGanados']?></li>
							<li><b>Níveles "avanzado" perdidos:</b> <?= $estadisticas['juego']['avanzadoPerdidos']?></li>
						</ul>
					</div>
					
					<div id="modalidades" class="caja-estadisticas">
						<h3>Modalidades</h3>
						<ul>
							<li><b>Modalidad "Juego libre" ganados:</b> <?= $estadisticas['modalidad']['juegoLibreGanados']?></li>
							<li><b>Modalidad "Juego libre" perdidos:</b> <?= $estadisticas['modalidad']['juegoLibrePerdidos']?></li>
							<li><b>Modalidad "Diminutivos" ganados:</b> <?= $estadisticas['modalidad']['diminutivosGanados']?></li>
							<li><b>Modalidad "Diminutivos" perdidos:</b> <?= $estadisticas['modalidad']['diminutivosPerdidos']?></li>
							<li><b>Modalidad "Adjetivos" ganados:</b> <?= $estadisticas['modalidad']['adjetivosGanados']?></li>
							<li><b>Modalidad "Adjetivos" perdidos:</b> <?= $estadisticas['modalidad']['adjetivosPerdidos']?></li>
							<li><b>Modalidad "Sinónimos" ganados:</b> <?= $estadisticas['modalidad']['sinonimosGanados']?></li>
							<li><b>Modalidad "Sinónimos" perdidos:</b> <?= $estadisticas['modalidad']['sinonimosPerdidos']?></li>
						</ul>
					</div>				
				</div>
			</div> <!--estadísticas -->
			
			<div class="row" id="galeria">
				<h3>Galería</h3>
				<div class="row" id="infCarta">
					<img id="imgCarta" class="six columns" src="<?=base_url()?>media/img/mazo/reversa.png"/>
					
					<div id="datosCarta" class="six columns">
						<h2 id="nombreCarta"></h2>
						<p id="descripcionCarta"></p>
					</div>
				</div>
				<div class="row" id="carrusel">
					<input id="carrusel-inicio" type="hidden" value="1"><input id="carrusel-final" type="hidden" value="8">
					<img id="carrusel-ant" class="recorre" src="<?=base_url()?>media/img/cback.png">
					<?php 
						foreach ($galeriaCartas as $imagen) { ?>
							<img class="carrusel-apaga imgCarrusel" id="carrusel-img<?=$imagen['idImagen']?>" width="80px" height="80px" src="<?php print_r(base_url().$imagen['urlChico'])?>" onclick="muestraInfoCarta(<?= $imagen['idImagen']?>);"/>
					<?php	} ?>
					<img class="recorre" id="carrusel-sig" src="<?=base_url()?>media/img/cnext.png">
					<br><br>
					<!-- <label id="carrusel-ant">Atras</label>
					<label id="carrusel-sig">Siguiente</label> -->
				</div>
			</div>
		</div>
		</div>
	</body>
</html>