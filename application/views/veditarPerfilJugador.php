<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/general.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/perfil.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/bordeBlanco.css">
		<script src="<?= base_url()?>media/js/jquery-1.9.1.min.js"></script>
		<script> base = "<?= base_url() ?>"</script>
		<script src="<?= base_url()?>media/js/validaCampos.js"></script>
		<script src="<?= base_url()?>media/js/perfil.js"></script>
	</head>

	<body>						
		<title>Editar perfil</title>
		<div id="barraUsuario" class="twelve columns header">
			<img src="<?= base_url() ?><?= $avatar ?>" title="avatar"/>
			<a href="#" id="usuario"><?=$nombreUsr?></a>
			<input id="usuario_id" name="usuario_id" type="hidden" value="<?= $idUsr ?>">
		</div>
		<div id="cajaMadre" class="twelve columns">
			<div id="cajaHija" class="twelve columns">
				<div class="five columns"></div>
				<ul class="navegacion seven columns">
					<li id="" class="three column"><img src="<?= base_url()?>media/img/_j.jpg">uego</li>
					<li id="nav-informacion" class="three column"><img src="<?= base_url()?>media/img/_i.jpg">nformación</li>
					<li id="nav-estadistica"class="three column"><img src="<?= base_url()?>media/img/_e.jpg">stadísticas</li>
					<li id="nav-galeria" class="three column"><img src="<?= base_url()?>media/img/_g.jpg">alería</li>
				</ul>
				
				<div id="informacion" class="twelve columns informacion">
					<div id="foto-nombreUsr" class="twelve columns">
						<center><img class="two columns foto" src="<?= base_url() ?><?= $avatar ?>" title=""/></center>
						<div class="one columns"></div>
						<div id="nombreUsuario" class="nine columns">
							<h1 class="underline"><?= $nombreUsr?></h1>
							<center><label id="lnombreUsr">NOMBRE DE USUARIO</label></center>
						</div>
											
						<!-- <div class="nine columns">
							<input class="" type="button" id="editarFoto" value="Editar foto"/>
						</div> -->
					</div>
					<form class="columns twelve" id="cjInformacion" action="<?=base_url()?>index.php/cDatosPerfil2/editaInformacionUsuario" method="post">
						<hr><hr>
						<input id="usuario_avatar" name="usuario_avatar" type="hidden" value="<?= $avatar ?>"/>
						<input id="id_avatar" name="id_avatar" type="hidden" value="<?= $avatar ?>"/>
						
						<div id="c1" class="four columns">
							<center><img id="logoLoteria" src="<?= base_url()?>media/img/logo_loteria.png" /></center>
							<center id="guardaCambios" class="twelve columns"> 
								<input class="six columns centered" type="button" id="BtnGuardaCambios" value="Guardar cambios"><br>
								<input class="six columns centered" type="button" id="cancelarGuardaCambios" value="Cancelar">
							</center>
							<center id="editarSeccion"> <!--Editar información-->
								<span class="twelve columns"><input type="button" id="BtnEditar" class="seven columns centered" value="Editar información"></span>
								<div id="contrasenaActual" class="twelve columns">
									<input type="password" id="usuario_contrasenaActual" placeholder="Confirma tu contraseña actual" name="usuario_contrasenaActual" >
									<input type="button" id="BtnConfirmContrasena" value="Confirmar">
									<input type="button" id="BtnCancelarEditar" value="Cancelar" >
								</div>
							</center>
						</div>
						
						<div id="c2" class="four columns">
							<input type="hidden" value="<?= $idUsr?>" name="idUsuario"/>

							<input id="usuario_nombre" class="tarjeta" type="text" autofocus="" disabled value="<?= $nombre ?>">							
							<label id="nombreVacio" class="error"></label>
							<label for="usuario_nombre">Nombre</label>

							<input type="text" id="usuario_aPaterno" name="usuario_Apat" value="<?= $aPaterno?>" autofocus>
							<label id="apatVacio" class="error"></label>
							<label>Apellido paterno</label>
							
							<input type="text" id="usuario_aMaterno" name="usuario_Amat" value="<?= $aMaterno?>" autofocus>
							<label id="amatVacio" class="error"></label>
							<label>Apellido materno</label>

							<input type="email" id="usuario_correo" name="usr_correo" value="<?= $correo?>" autofocus>
							<label id="emailVacio" class="error"></label>
							<label >Correo</label>

							<?php echo form_dropdown('usuario_sexo', $Sexo, $sexo, 'id=usuario_sexo'); ?>
							<label>Sexo</label>
						</div>
						
						<div id="c3" class="four columns"> 
				        	<?php echo form_dropdown('usuario_edad', $Edades, $edad, 'id=usuario_edad'); ?>
							<label>Edad</label>

				        	<?php echo form_dropdown('usuario_comunidadUniversitaria', $datos['comunidad_universitaria'], $idUsr, 'id=usuario_comunidadUniversitaria'); ?>
							<label>Comunidad Universitaria</label>

							<div id="alumno">
								<?php  echo form_dropdown('usuario_gradoActivo', $datos['gradoActivo'], $idGradoActivo, 'id=usuario_gradoActivo'); ?>
								<label>Grado Activo</label>
				        		<?php  echo form_dropdown('usuario_division', $datos['division'], $idDivision, 'id=usuario_division'); ?>
								<label id="ldivision">División</label>
				        		<?php  echo form_dropdown('usuario_posgrado', $datos['pos'], -1, 'id=usuario_posgrado'); ?>
								<label id="lposgrado">Posgrado</label>
				        	</div>
						    <div id="prof-admin">
								<div id="area" class="">
							        <input autofocus class="lateral vacio tercero" type="text" id="usuario_area" name="usuario_area" placeholder="* área" value="<?=$area?>">
									<label for="usuario_area">Área</label>
							    </div>
								<div id="cargo" class="">
									<input autofocus class="lateral vacio tercero" type="text" id="usuario_cargo" name="usuario_cargo" placeholder="* cargo" value="<?=$cargo?>">
									<label for="usuario_cargo">Cargo</label>
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
					<div id="galeriaEditarFoto">
						<?php
							foreach ($avatares as $avatar) { ?>
								<img src="<?php print_r(base_url().$avatar['avatar'])?>" onclick("cambiaIdImagenFoto(<?=$avatar['idAvatar']?>)") />
								
						<?php }
						?>
						<a id="closeGaleriaEditarFoto" href="#"></a>
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
											<p class="descripcionTrofeo">Trofeo no ganado</p>
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
											<a class="three clearfix" href="#trofeo<?=$indice?>">
												<img class="trofeo-chico" src="<?= base_url() ?><?= $trofeo['imagenIcon']?>">
											</a>
										</li>
									<?php }else{ ?>
										<li>
											<a class="three clearfix" href="#trofeo<?=$indice?>">
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
									<img class="carrusel-apaga imgCarrusel" id="carrusel-img<?=$imagen['idCarta']?>" width="80px" height="80px" src="<?php print_r(base_url().'media/img/mazo/reversa.png')?>" onclick="limpiaInfoCarta()"/>
											
						<?php	} }?>
						<img class="recorre" id="carrusel-sig" src="<?=base_url()?>media/img/cnext.png">
						<br><br>
					</div>
				</div>
		</div> <!--cajaHija-->
		</div> <!-- caja madre -->
	</body>
</html>