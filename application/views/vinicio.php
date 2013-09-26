<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/general.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/inicio2.css">
		<script src="<?= base_url()?>media/js/jquery-1.9.1.min.js"></script>
		<script> base = "<?= base_url() ?>"</script>
		<script src="<?= base_url()?>media/js/inicio2.js"></script>
	</head>

	<body>
		<div id="cajaMadre" class="twelve columns">
			<div id="cajaHija" class="twelve columns">
				<div class="one columns"></div>
				<div id="seccion-informacion" class="four columns">
					<center><img src="<?= base_url() ?>media/img/logo_loteria.png" /></center>
					<div class="twelve columns" id="texto">
						Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos 
						de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias 
						desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la
						imprenta) desconocido usó una galería de textos y los mezcló de tal manera 
						que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, 
						sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. 
						Fue popularizado en los 60s con la creación de las hojas "Letraset", 
						las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición,
						como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.
					</div>
					<div id="footer" class="twelve columns">
						<span id="logoUam" class="six columns">
							<img src="<?= base_url() ?>media/img/uami.png">
						</span>
						<span id="logoVirtuami" class="six columns">
							<img src="<?= base_url() ?>media/img/virtuami_logo.png">
						</span>
					</div>
				</div> <!--seccion-informacion-->
				<div class="one columns"></div>
				<div id="seccion-formularios" class="five columns">
					<div id="video" class="twelve columns">
						<center><video width="100%" height="auto" controls>
						  <source src="<?= base_url()?>/media/video/remember.mp4" type="video/mp4"/>
						  <source src="<?= base_url()?>/media/video/remember.webm" type="video/webm"/>
						Your browser does not support the video tag.
						</video></center> 					
					</div>
					<div id="botones" class="twelve columns">
						<center><span class="row"><input id="iniciarSesionBtn" type="button" class="six centered columns boton" value="Iniciar sesión"></span><hr></center>
						<center><span class="row"><input id="registroBtn" type="button" class="six centered columns boton" value="Registro"></span></center>
					</div>	
					<!-- primera parte registro -->
					<form id="formularioRegistro" method="post" action="<?php print_r(base_url())?>index.php/cRegistro/RegistraUsuario">
						<div id="paso1">
			                <input autofocus class="vacio" type="text" id="usuario_nombreUsr" name="usuario_nombreUsr" required placeholder="*Usuario"/>
			                <input id="usr_ok" type="hidden" value="0"> <!-- indica si el nombre de usuario es correcto o incorrecto. Modificado en inicio.js -->
							<label id="usuarioVacio" class="error"></label>
		
			                <input autofocus class="vacio" type="email" id="usuario_correo" name="usuario_correo" required placeholder="*e-mail"/>
			                <input id="email_ok" type="hidden" value="0"> <!-- indica si el correo es correcto o incorrecto. Modificado en inicio.js -->
							<label id="emailVacio" class="error"></label>
														
			                <input autofocus class="lateral vacio"  type="password" id="usuario_contrasena" name="usuario_contrasena" required	placeholder="* contraseña" />
							<label id="passVacio" class="error"></label>
		
			                <div id="cajaSexo">
			                	<span for="usuario_sexo">hombre</span><input autofocus class="sexo" type="radio" id="usuario_sexo" name="usuario_sexo" value="h" checked/>
			                    <span for="usuario_sexo">mujer</span><input autofocus class="sexo" type="radio" id="usuario_sexo" name="usuario_sexo" value="m">
			                </div>
	
	       	                <center><input class="six columns boton centered" type="button" id="sig1" value="siguiente"/><hr>
	       	                <input type="button" class="boton six columns centered" id="iniciarSesionBtn2" value="Iniciar sesión"/></center>
	       	            </div> <!--paso1-->		
				
						<div id="paso2">
							<input autofocus class="vacio" type="text" id="usuario_nombre" name="usuario_nombre" required placeholder="* nombre(s)" />
							<label id="nombreVacio" class="error"></label>
							<input autofocus class="vacio" type="text" id="usuario_aPaterno" name="usuario_aPaterno" required placeholder="* apellido paterno" />
							<label id="apatVacio" class="error"></label>
							<input autofocus class="vacio" type="text" id="usuario_aMaterno" name="usuario_aMaterno" required placeholder="* apellido materno" /><hr>
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
						<form class="iSesion-form" method="post" action="<?= base_url();?>index.php/cLogin/validarLogin">
			                <input autofocus class="vacio"  type="text" id="Lusuario_nombreUsr" name="Lusuario_nombreUsr" required placeholder="usuario"/>
			                <input autofocus class="vacio" type="password" id="Lusuario_contrasena" name="Lusuario_contrasena" required placeholder="contraseña"/>
			                <center><span class="twelve columns"><input class="six columns boton centered" type="submit" id="iSesion-boton" value="Entrar"></span>
			                <span class="twelve columns"><input class="six columns boton centered" type="button" id="recuperaContrasena-boton" value="Recuperar contraseña"></span><hr>
			                <span class="twelve columns"><input class="six columns boton centered" type="button" id="irRegistro" value="Registro"></span></center>
			           	</form>
					</div>
				</div> <!--seccion formularios-->
				<div class="one columns"></div>
			</div><!--caja hija-->
		</div> <!--twelve columns--->
	</body>
</html>