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
		<title>Lotería VIRTUAMI</title>
		<div class="twelve sombra2"></div>
		<div id="cajaMadre" class="twelve columns">
			<div id="cajaHija" class="twelve columns">
				<div id="seccion-informacion" class="five columns ">
					<center><img src="<?= base_url() ?>media/img/logo_loteria.png" /></center>
					<div class="twelve columns" id="texto">
						Juego de la Lotería para la práctica del español. <br><br>
						Este entorno lúdico tiene como propósito apoyar al jugador a fortalecer su conocimiento 
						y práctica del español en dos líneas:<br><br>
						<ul>
							<li>Que mejore su competencia lingüística y se apropie y sensibilice sobre  aspectos fundamentales de la gramática del español.	</li><br>
							<li>Que el usuario disfrute con elementos de las tradiciones popular y culta, mediante las ilustraciones y las adivinanzas: rimas y citas provenientes de canciones, poemas, dichos y frases.</li>
						</ul>				
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
							<center><video id="vid" width="100%" height="auto" controls poster="<?= base_url()?>/media/img/poster.png">
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
			
				                <input autofocus class="vacio" type="email" id="usuario_correo" name="usuario_correo" required placeholder="*E-mail"/>
								<label id="emailVacio" class="error"></label>
															
				                <input autofocus class="lateral vacio"  type="password" id="usuario_contrasena" name="usuario_contrasena" required	placeholder="* Contraseña" />
								<label id="passVacio" class="error"></label>
			
				                <div id="cajaSexo">
				                	<span for="usuario_sexo">Hombre</span><input autofocus class="sexo" type="radio" id="usuario_sexo" name="usuario_sexo" value="h" checked/>
				                    <span for="usuario_sexo">Mujer</span><input autofocus class="sexo" type="radio" id="usuario_sexo" name="usuario_sexo" value="m">
				                </div>
		
		       	                <center><input class="six columns boton centered" type="button" id="sig1" value="Siguiente"/><hr class="linea3">
		       	                <input type="button" class="boton six columns centered" id="iniciarSesionBtn2" value="Iniciar sesión"/></center>
		       	            </div> <!--paso1-->		
					
							<div id="paso2">
								<input autofocus class="vacio" type="text" id="usuario_nombre" name="usuario_nombre" required placeholder="* Nombre(s)" />
								<label id="nombreVacio" class="error"></label>
								<input autofocus class="vacio" type="text" id="usuario_aPaterno" name="usuario_aPaterno" required placeholder="* Apellido paterno" />
								<label id="apatVacio" class="error"></label>
								<input autofocus class="vacio" type="text" id="usuario_aMaterno" name="usuario_aMaterno" required placeholder="* Apellido materno" /><hr class="linea3">
								<label id="amatVacio" class="error"></label>
				                <center>
				                	<span class="one centered columns"></span>
				                	<input type="button" class="boton centered four columns" id="atras1" value="Atrás" />
				                	<span class="one centered columns"></span>
				                	<input type="button" class="boton centered four columns" id="sig2" value="Siguiente" />
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
									<input autofocus class="vacio" type="text" id="usuario_area" name="usuario_area" required placeholder="* Área">
									<input autofocus class="vacio" type="text" id="usuario_cargo" name="usuario_cargo" required placeholder="* Cargo">
								</div>
				        		<center>
				        			<hr>
				                	<span class="one centered columns"></span>
				        			<input type="button" class="boton centered four columns" id="atras2" value="Atrás" />
				                	<span class="one centered columns"></span>
									<input type="submit" class="boton centered four columns" id="enviar" value="Enviar">
				                	<span class="one centered columns"></span>
								</center>
			        		</div> <!--paso3-->	     
		        		</form>    
		        		       			
		        	 	<!-- INICIO DE SESIÓN -->
						<div id="formularioIsesion">
							<center id="center1"><img src="<?= base_url()?>media/img/i_sesion.jpg"/></center>
							<form class="iSesion-form" method="post" action="<?= base_url();?>index.php/cLogin/validarLogin">
				                <input class="vacio"  type="text" id="Lusuario_nombreUsr" name="Lusuario_nombreUsr" placeholder="Usuario"/>
				                <input class="vacio" type="password" id="Lusuario_contrasena" name="Lusuario_contrasena" placeholder="Contraseña"/>
				                <center><span class="twelve columns"><input class="six columns boton centered valError" disabled="disabled" type="button" id="iSesion-boton" value="Entrar"></span>
				                <span class="twelve columns"><input class="six columns boton centered" type="button" id="recuperaContrasena-boton" value="Recuperar contraseña"></span><hr class="linea3">
				                <span class="twelve columns"><input class="six columns boton centered" type="button" id="irRegistro" value="Registro"></span></center>
				           	</form>
						</div>
						
						<!-- RECUPERAR CONTRASEÑA						 -->
						<div id="formalarioRecuperarContrasena">
							<center id=""><img src="<?= base_url()?>media/img/i_recuperar.jpg"/></center>
							<form method="post" action="<?=base_url()?>index.php/cLogin/recuperarContrasena">
								<label class="labelRegistro">Introduce tu correo te enviaremos tus datos de acceso</label>
								<input id="usuario_correo_recuperarContrena" name="usuario_correo_recuperarContrena" type="email" required>
								<center><input type="submit" id="recuperarCBtn" class="six columns boton centered" value="Enviar"></center><hr class="linea3">
								<center><input type="button" id="iSesionC" class="six columns boton centered" value="Iniciar sesión"></center>

							</form>	
							<!-- <a class="close"></a> -->
						</div>
					</div> <!--seccion formularios-->
				<div class="one columns"></div>
			</div><!--caja hija-->
		</div> <!--twelve columns--->
		
	</body>
</html>