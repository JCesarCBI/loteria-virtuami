<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/general.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/inicio.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/bordeBlanco.css">

		<script src="<?= base_url()?>media/js/jquery-1.9.1.min.js"></script>
		<script> base = "<?= base_url() ?>"</script>
		<script src="<?= base_url()?>media/js/validaCampos.js"></script>
		<script src="<?= base_url()?>media/js/inicio.js"></script>
	</head>

	<body>
		<div class="twelve sombra2"></div>
		<div id="cajaMadre" class="twelve columns">
			<div id="cajaHija" class="twelve columns">
				<!-- <div class="one columns"></div> -->
				<div id="seccion-informacion" class="five columns ">
					<center><img src="<?= base_url() ?>media/img/logo_loteria.png" /></center>
					<div class="twelve columns" id="texto">
						Este entornos lúdico, en el que a través del juego tradicional de Lotería - en donde
						un gritón o gritona canta una rima que corresponde a la ilustración de la carta que sale -,
						tiene como propósito apoyar a quien lo juege a fortalecer su conocimiento y práctica del español
						en dos líneas: <br><br>
						
						a) Que mejore su competencia lingüística y se apropie y sensibilice sobre aspectos fundamentales
						de la gramática del español.<br><br>
						b) Que el usuario disfrute con elementos de las tradiciones popular y culta, mediante las ilustraciones
						y las adivinanzas: rimas y citas provenientes de canciones, poemas, dichos y frases.				

					</div>
					<span class="six columns">
						<center><img id="i_uami" src="<?= base_url() ?>media/img/i_uami.png"></center>
					</span>
					<span class="six columns">
						<center><img id="i_virtuami" src="<?= base_url() ?>media/img/i_virtuami.png"></center>
					</span>
				</div> <!--seccion-informacion-->
				<div class="one columns"></div>
					<div id="seccion-formularios" class="five columns">
						<div id="video" class="twelve columns">
							<center><video id="vid" width="100%" height="auto" controls>
							  <source src="<?= base_url()?>/media/video/remember.mp4" type="video/mp4"/>
							  <source src="<?= base_url()?>/media/video/remember.webm" type="video/webm"/>
							  Tu navegador no implementa el elemento <code>video</code>
							</video></center> 					
						</div>
						<div id="botones" class="twelve columns">
							<center><span class="row"><input id="iniciarSesionBtn" type="button" class="six centered columns boton" value="Iniciar sesión"></span><hr class="linea3"></center>
							<center><span class="row"><input id="registroBtn" type="button" class="six centered columns boton" value="Registro"></span></center>
						</div>	
						<!-- primera parte registro -->
						<form id="formularioRegistro" method="post" action="<?php print_r(base_url())?>index.php/cRegistro/RegistraUsuario">
							<center><img src="<?= base_url()?>media/img/i_registro.jpg"></center>
							<div id="paso1">
				                <input autofocus class="vacio" type="text" id="usuario_nombreUsr" name="usuario_nombreUsr" required placeholder="*Usuario"/>
								<label id="usuarioVacio" class="error"></label>
			
				                <input autofocus class="vacio" type="email" id="usuario_correo" name="usuario_correo" required placeholder="*e-mail"/>
								<label id="emailVacio" class="error"></label>
															
				                <input autofocus class="lateral vacio"  type="password" id="usuario_contrasena" name="usuario_contrasena" required	placeholder="* contraseña" />
								<label id="passVacio" class="error"></label>
			
				                <div id="cajaSexo">
				                	<span for="usuario_sexo">hombre</span><input autofocus class="sexo" type="radio" id="usuario_sexo" name="usuario_sexo" value="h" checked/>
				                    <span for="usuario_sexo">mujer</span><input autofocus class="sexo" type="radio" id="usuario_sexo" name="usuario_sexo" value="m">
				                </div>
		
		       	                <center><input class="six columns boton centered" type="button" id="sig1" value="siguiente"/><hr class="linea3">
		       	                <input type="button" class="boton six columns centered" id="iniciarSesionBtn2" value="Iniciar sesión"/></center>
		       	            </div> <!--paso1-->		
					
							<div id="paso2">
								<input autofocus class="vacio" type="text" id="usuario_nombre" name="usuario_nombre" required placeholder="* nombre(s)" />
								<label id="nombreVacio" class="error"></label>
								<input autofocus class="vacio" type="text" id="usuario_aPaterno" name="usuario_aPaterno" required placeholder="* apellido paterno" />
								<label id="apatVacio" class="error"></label>
								<input autofocus class="vacio" type="text" id="usuario_aMaterno" name="usuario_aMaterno" required placeholder="* apellido materno" /><hr class="linea3">
								<label id="amatVacio" class="error"></label>
				                <center>
				                	<span class="one centered columns"></span>
				                	<input type="button" class="boton centered four columns" id="atras1" value="atrás" />
				                	<span class="one centered columns"></span>
				                	<input type="button" class="boton centered four columns" id="sig2" value="siguiente" />
				                	<span class="one columns centered"></span>
				                </center>
							</div> <!--paso2-->	                
							<div id="paso3">
								<label class="labelRegistro">Comunidad universitaria</label>
								<?php  echo form_dropdown('usuario_comunidadUniversitaria', $comunidad_universitaria, 1, 'id=usuario_comunidadUniversitaria'); ?>
								<div id="alumno">						
									<label id="lgrado" class="labelRegistro">Grado activo</label>
									<?php  echo form_dropdown('usuario_gradoActivo', $gradoActivo, 1, 'id=usuario_gradoActivo'); ?>
									<label id="ldivision" class="labelRegistro">División</label>
					        		<?php  echo form_dropdown('usuario_division', $division, 1, 'id=usuario_division'); ?>
									<label id="lposgrado" class="labelRegistro">Posgrado</label>
					        		<?php  echo form_dropdown('usuario_posgrado', $pos, 1, 'id=usuario_posgrado'); ?>					        		
				        		</div>
								<div id="prof-admin">
									<input autofocus class="vacio" type="text" id="usuario_area" name="usuario_area" required placeholder="* área">
									<input autofocus class="vacio" type="text" id="usuario_cargo" name="usuario_cargo" required placeholder="* cargo">
								</div>
				        		<center>
				        			<hr>
				                	<span class="one centered columns"></span>
				        			<input type="button" class="boton centered four columns" id="atras2" value="atrás" />
				                	<span class="one centered columns"></span>
									<input type="submit" class="boton centered four columns" id="enviar" value="enviar">
				                	<span class="one centered columns"></span>
								</center>
			        		</div> <!--paso3-->	     
		        		</form>    
		        		       			
						<div id="formularioIsesion">
							<center id="center1"><img src="<?= base_url()?>media/img/i_sesion.jpg"/></center>
							<form class="iSesion-form" method="post" action="<?= base_url();?>index.php/cLogin/validarLogin">
				                <input autofocus class="vacio"  type="text" id="Lusuario_nombreUsr" name="Lusuario_nombreUsr" placeholder="usuario"/>
				                <input autofocus class="vacio" type="password" id="Lusuario_contrasena" name="Lusuario_contrasena" placeholder="contraseña"/>
				                <center><span class="twelve columns"><input class="six columns boton centered valError" disabled="disabled" type="button" id="iSesion-boton" value="Entrar"></span>
				                <span class="twelve columns"><input class="six columns boton centered" type="button" id="recuperaContrasena-boton" value="Recuperar contraseña"></span><hr class="linea3">
				                <span class="twelve columns"><input class="six columns boton centered" type="button" id="irRegistro" value="Registro"></span></center>
				           	</form>
						</div>
					</div> <!--seccion formularios-->
				<div class="one columns"></div>
			</div><!--caja hija-->
		</div> <!--twelve columns--->
		<!-- <div id="pie" class="twelve column sombra2"></div> -->
	</body>
</html>