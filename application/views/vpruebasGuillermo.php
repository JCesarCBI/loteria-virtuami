<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/general.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/inicio.css">
		<script src="<?= base_url()?>media/js/jquery-1.9.1.min.js"></script>
		<script> base = "<?= base_url() ?>"</script>
		<script src="<?= base_url()?>media/js/inicio.js"></script>
	</head>

	<body>
		<title>Inicio</title>
		<div class="twelve header">

		<div class="nine columns">
			<div class="mesa"></div>
			
			<!--CAJÓN SUPERIOR -->
			<div id="cajonSupCerrado" class="cajonSuperior-cerrado">
				<label class="CS-cerrado">Iniciar sesión</label>				
			</div>			
			
			<div class="cajonSuperior-abierto">
				<div class="amarillo-sup">				
					<label class="i-sesion">Iniciar sesión</label>
				</div>
				<form class="iSesion-form" method="post" action="<?= base_url();?>index.php/cLogin/validarLogin">
	                <input autofocus class="superior vacio"  type="text" id="Lusuario_nombreUsr" name="Lusuario_nombreUsr" required placeholder="usuario"/>
	                <input autofocus class="superior vacio" type="password" id="Lusuario_contrasena" name="Lusuario_contrasena" required placeholder="contraseña"/>
	                <input class="sup boton" type="submit" id="iSesion-boton" name="iniciar-sesion" value="entrar">
    	        </form>
    	        <label id="recuperaContrasena">recuperar contraseña</label>

    	        <!-- formulario que se mostrará si el usuario elige "recuperar contraseña"
    	        	Se mantiene oculto y se activa con jquery -->
    	        <div class="recuperarContrasena">
	    	        <label id="labelRecuperar" class="ins">Ingresa el correo al que se enviará tu contraseña</label>
					<form class="recuperarContrasena-form" method="post" action="<?= base_url();?>index.php/cLogin/recuperarContrasena">
		                <input autofocus class="superior vacio"  type="email" id="usuario_correo_recuperarContrena" name="usuario_correo_recuperarContrena" required placeholder="correo"/>
		                <input class="sup boton" type="submit" id="recuperaContrasena-boton" name="recuperaContrasena-boton" value="enviar">
	    	        </form>
           	        <label id="Isesion">Iniciar sesión</label>
    	        </div>    	        
			</div> 
			<!--TERMINA cajón superior-->
			
			<!--CAJÓN LATERAL-->
			<div class="cajonLateral-cerrado">
				<label class="rotar CL-cerrado">Registro</label>				
			</div>
			
			<div div="cajonLatCerrado" class="cajonLateral-abierto">
				<form method="post" action="<?= base_url();?>index.php/cRegistro/validarRegistro">
					<label class="ins">Campos con * son obligatorios</label>
					<!-- primera parte registro -->
					<div id="paso1">
		                <input autofocus class="lateral vacio primero" type="text" id="usuario_nombreUsr" oname="usuario_nombreUsr" required placeholder="* usuario"/>
		                <input id="usr_ok" type="hidden" value="0"> <!-- indica si el nombre de usuario es correcto o incorrecto. Modificado en inicio.js -->
						<label id="usrError" class="error_validation">El alias ya existe</label>
	
		                <input autofocus class="lateral vacio primero" type="email" id="usuario_correo" name="usuario_correo" required placeholder="* e-mail"/>
		                <input id="email_ok" type="hidden" value="0"> <!-- indica si el correo es correcto o incorrecto. Modificado en inicio.js -->
	   					<label id="emailExisteError" class="error_validation">El correo ya está registrado</label>
						<label id="emailDominioError" class="error_validation">El dominio no es válido, usa tu cuenta de titlani/xanum</label>
						
		                <input autofocus class="lateral vacio primero"  type="password" id="usuario_contrasena" name="usuario_contrasena" required	placeholder="* contraseña" />
	
		                <p class="sexo">
		                	<label class="sexo" for="usuario_sexo">hombre</label><input autofocus class="sexo" type="radio" id="usuario_sexo" name="usuario_sexo" value="h" checked/>
		                </p>
		                <p class="sexo"> 
		                	<label class="sexo" for="usuario_sexo">mujer</label><input autofocus class="sexo" type="radio" id="usuario_sexo" name="usuario_sexo" value="m">
		                </p><br>
	                </div>
					<!-- segunda parte registro -->
					<div id="paso2">
						<input autofocus class="lateral vacio segundo" type="text" id="usuario_nombre" name="usuario_nombre" required placeholder="* nombre(s)" />
						<input autofocus class="lateral vacio segundo" type="text" id="usuario_aPaterno" name="usuario_aPaterno" required placeholder="* apellido paterno" />
						<input autofocus class="lateral vacio segundo" type="text" id="usuario_aMaterno" name="usuario_aMaterno" required placeholder="* apellido materno" />
					</div>
					<!--tercera parte registro-->
					<div id="paso3">
						<input autofocus class="lateral vacio tercero" type="text" id="usuario_edad" name="usuario_edad" required placeholder="* edad" />
						<label id="edadError" class="error_validation">Tu edad debe ser escrita con números</label>
						<?php  echo form_dropdown('usuario_comunidadUniversitaria', $comunidad_universitaria, -1, 'id=usuario_comunidadUniversitaria class="tercero"'); ?>
						<input autofocus class="lateral vacio tercero" type="text" id="usuario_area" name="usuario_area" required placeholder="* área">
						<input autofocus class="lateral vacio tercero" type="text" id="usuario_cargo" name="usuario_cargo" required placeholder="* cargo">
						<?php  echo form_dropdown('usuario_gradoActivo', $gradoActivo, -1, 'id=usuario_gradoActivo class="tercero"'); ?>
		        		<?php  echo form_dropdown('usuario_division', $division, 0, 'id=usuario_division class="tercero"'); ?>
		        		<?php  echo form_dropdown('usuario_posgrado', $pos, -1, 'id=usuario_posgrado class="tercero"'); ?>
	        		</div>
	                <!-- botones siguiente y submit -->
	                <input type="button" class="boton" id="sig1" value="siguiente" disabled/>
	                <input type="button" class="boton" id="sig2" value="siguiente" disabled />
	                <input type="button" class="boton" id="atras1" value="atrás" />
					<input type="button" class="boton atras2" id="atras2" value="atrás" />
					<input type="submit" class="boton" id="enviar" name="enviar" value="enviar" disabled />

	                <div id="amarillo-lat" class="amarillo-lat">
	                	<label class="rotar">Registro</label>
	                </div>
                </form>
			</div> <!--canjonLateral-->			

		</div><!-- nine columns-->
		
		
		<div class="three columns"></div> <!-- completa las 12 columnas-->
		
		<!--Sección de ACERCA DEL JUEGO -->
		<div class="twelve columns acerca">
				<div class="nine columns">
					<h2>Acerca del juego</h2>
					<p>dsdasdasd adjaoisjdajsoda adjaoidjoajdoiajosidjaosd adjaodjoaijdojajdsoiajsodja aoijdoiajsdoja
						dsdasdasd adjaoisjdajsoda adjaoidjoajdoiajosidjaosd adjaodjoaijdojajdsoiajsodja aoijdoiajsdoja
						dsdasdasd adjaoisjdajsoda adjaoidjoajdoiajosidjaosd adjaodjoaijdojajdsoiajsodja aoijdoiajsdoja
						dsdasdasd adjaoisjdajsoda adjaoidjoajdoiajosidjaosd adjaodjoaijdojajdsoiajsodja aoijdoiajsdoja
						dsdasdasd adjaoisjdajsoda adjaoidjoajdoiajosidjaosd adjaodjoaijdojajdsoiajsodja aoijdoiajsdoja
					</p>
				</div>
				<div class="three columns">
					<img id="logoUAM" src="<?= base_url()?>media/img/uami.png"/>
				</div>
		</div> <!--termina sección ACERCA DEL JUEGO -->
	</body>
</html>