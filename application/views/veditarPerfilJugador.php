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
		<div id="barraUsuario" class="twelve columns header">
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
			<div id="informacion" class="row informacion">
				<!-- <div class="three columns foto"> -->
					<img class="three columns foto" src="<?= base_url() ?><?= $avatar ?>" title=""/>
				<!-- </div> -->
				<div class="nine columns">
					<h1 class="nombreUsr twelve columns"><?= $nombreUsr?></h1>
					<div class="hilera twelve columns"></div>
					<input class="" type="button" id="editarFoto" value="Editar foto"/>
				</div>
				<form class="twelve columns" id="cjInformacion" action="<?=base_url()?>index.php/cDatosPerfil2/editaInformacionUsuario" method="post">
					<input id="usuario_avatar" name="usuario_avatar" type="hidden" value="<?= $avatar ?>"/>
					<div class="row">
						<div class="four columns">
							<input type="hidden" value="<?= $idUsr?> name="idUsuario"/>
							<label for="usuario_nombre">Nombre(s):</label>
							<input class="" type="text" id="usuario_nombre" name="usuario_nombre" value="<?= $nombre?>" autofocus>
						</div>
						<div class="four columns">
							<label for="usuario_Apat">Apellido paterno:</label>
							<input class="" type="text" id="usuario_Apat" name="usuario_Apat" value="<?= $aPaterno?>" autofocus>
						</div>
						<div class="four columns">
							<label for="usuario_Amat">Apellido materno:</label>
							<input class="" type="text" id="usuario_Amat" name="usuario_Amat" value="<?= $aMaterno?>" autofocus>
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
				<div id="galeriaEditarFoto">
					<?php
						foreach ($avatares as $avatar) { ?>
							<img src="<?php print_r(base_url().$avatar['avatar'])?>" onclick("cambiaIdImagenFoto(<?=$avatar['idAvatar']?>)") />
							
					<?php }
					?>
					<a id="closeGaleriaEditarFoto" href="#"></a>
				</div>
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
						if($trofeos != NULL){
							foreach ($trofeos as $indice=>$trofeo) {
								if($trofeo['Estado'] == 1){ ?>
									<center><div id="trofeo<?=$indice?>" class="trofeo-popup">
										<img class="trofeo-grande gris" src="<?= base_url() ?><?= $trofeo['imagen']?>">
										<h3 class="nombreTrofeo"><?= $trofeo['nombre']?></h3>
										<p class="descripcionTrofeo"><?= $trofeo['descripcion']?></p>
										<a class="close" href="#"></a>
									</div></center>
								<?php }else{ ?>
									<center><div id="trofeo<?=$indice?>" class="trofeo-popup">
										<img class="trofeo-grande gris" src="<?= base_url() ?><?= $trofeo['imagen']?>">
										<h3 class="nombreTrofeo"><?= $trofeo['nombre']?></h3>
										<p class="descripcionTrofeo"><?= $trofeo['descripcion']?></p>
										<a class="close" href="#"></a>
									</div></center>
							<?php }
								}
						}else{
							echo "<label>No hay trofeos ganados</label>";
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
										<a class="two columns clearfix" href="#trofeo<?=$indice?>">
											<img class="trofeo-chico" src="<?= base_url() ?><?= $trofeo['imagenIcon']?>">
										</a>
									</li>
								<?php }else{ ?>
									<li>
										<a class="two columns clearfix" href="#trofeo<?=$indice?>">
											<img class="trofeo-chico gris" src="<?= base_url() ?><?= $trofeo['imagenIcon']?>">
										</a>	
									</li>
						<?php }
							$i++;	
							if($i==5){
								echo "<br><br><br>";
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
			
			<!--GALERÍA DE FOTOS-->
			<div class="row" id="galeria">
				<div class="row" id="infCarta">
					<img id="imgCarta" class="six columns" src="<?=base_url()?>media/img/mazo/reversa.png"/>
					
					<div id="datosCarta" class="six columns">
						<!-- <h3>Galería</h3> -->
						<h2 id="nombreCarta"></h2>
						<div class="hilera twelve columns"></div>
						<p id="descripcionCarta">
							<div class="Div-vacio"></div>
						</p>
						<div class="six columns" id="incarat"></div>
						<div class="six columns" id="masInfoCarta"></div>
						<div class="hilera twelve columns"></div>
						<input type="hidden" value="1" id="numRima"/>
						<input type="hidden" value="3" id="totalRima"/>
					</div>
				</div>
				<div class="row" id="carrusel">
					<input id="carrusel-inicio" type="hidden" value="1"><input id="carrusel-final" type="hidden" value="10">
					<img id="carrusel-ant" class="recorre" src="<?=base_url()?>media/img/cback.png">
					<?php 
						foreach ($galeriaCartas as $imagen) {
							if($imagen['Estado'] == 1){	 ?>
								<img class="carrusel-apaga imgCarrusel" id="carrusel-img<?=$imagen['idCarta']?>" width="80px" height="80px" src="<?php print_r(base_url().$imagen['imgPlantilla'])?>" onclick="muestraInfoCarta(<?= $imagen['idCarta']?>);"/>
						<?php } else { ?>
								<img class="carrusel-apaga imgCarrusel" id="carrusel-img<?=$imagen['idCarta']?>" width="80px" height="80px" src="<?php print_r(base_url().'media/img/mazo/reversa.png')?>" />
										
					<?php	} }?>
					<img class="recorre" id="carrusel-sig" src="<?=base_url()?>media/img/cnext.png">
					<br><br>
				</div>
			</div>
		</div>
		</div>
	</body>
</html>