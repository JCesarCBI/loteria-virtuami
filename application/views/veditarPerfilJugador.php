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
		</div>

		<div class="row">
			<div class="three columns foto">
				<img src="<?= base_url() ?><?= $avatar ?>" title="kawaii"/>
			</div>	
			<h1 class="nombreUsr nine columns"><?= $nombreUsr?></h1>
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
				<form action="" method="post">
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
				        	echo form_dropdown('usuario_sexo', $Sexo, 1, 'id=usuario_sexo'); ?>
						</div>
						<div class="four columns">
							<label for="usuario_nombreUsuario">Edad:</label>
				        	<?php  
				        	echo form_dropdown('usuario_sexo', $Edades, 1, 'id=usuario_sexo'); ?>
						</div>
					</div>
					<hr>
					<div class="row"> <!--Datos académicos -->
						<div class="four columns">
							<label for="usuario_comunidadUniversitaria">Comunidad Universitaria:</label>
				        	<?php  
				        	echo form_dropdown('usuario_comunidadUniversitaria', $datos['comunidad_universitaria'], $idTipoUsr, 'id=usuario_comunidadUniversitaria'); ?>
						</div>
						<div id="area" class="four columns">
							<label for="usuario_area">Área:</label>
					        <input autofocus class="lateral vacio tercero" type="text" id="usuario_area" name="usuario_area" placeholder="* área">
					    </div>
						<div id="cargo" class="four columns">
							<label for="usuario_cargo">Cargo:</label>
							<input autofocus class="lateral vacio tercero" type="text" id="usuario_cargo" name="usuario_cargo" placeholder="* cargo">
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
						<div id="cambiarContrasena" class="four columns">
							<input type="button" id="BtnCambiarContrasena" value="Cambiar contraseña">
						</div>
						<div id="contrasenaActual" class="four columns">
							<input type="password" id="usuario_contrasenaActual" placeholder="Confirma contraseña actual" name="usuario_contrasenaActual" >
						</div>
						<div id="cancelarCambiarContrasena" class="four columns">
							<input type="button" id="BtnConfirmContrasena" value="Confirmar">
							<input type="button" id="BtnCancelarCambiarContrasena" value="Cancelar" >
						</div>
					</div>
					<hr>
					<div class="row"> <!--botones-->
						<div class="twelve columns">
							<input type="submit" id="BtnGuardaCambiosDatosUsr" value="Guardar cambios">
						</div>
					</div>
				</form>
			</div> <!--información-->
		
			<div id="estadisticas" class="row">
				<div class="trofeos three columns">
					<?php
						$i = 1;
						foreach ($trofeos as $trofeo) { ?>
							<div class="four columns">
								<img id = "<?= $i ?>" class="trofeo-chico" src="<?= base_url() ?><?= $trofeo['url-chico']?>">
							</div>
					<?php
						$i++;	
						if($i==4){
							echo "<br><br><br><br><br><br>";
							$i=1;
						}
					}
 
					?>
				</div>
				<div class="nine columns">
					<div id="partidas" class="caja-estadisticas">
						<h3>Partidas</h3>
					</div>
					
					<div id="niveles" class="caja-estadisticas">
						<h3>Niveles</h3>
					</div>
					
					<div id="modalidades" class="caja-estadisticas">
						<h3>Modalidades</h3>
					</div>				
				</div>
			</div>
		</div>
		</div>
	</body>
</html>