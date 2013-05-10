<html>
<!-- 	Resta: 	1. Fondo, 2. Personalización del input radio, 3. Validación de fomulario -->
	<head>
		<meta charset="utf-8">
		<title>Inicio</title>
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/inicio.css">
		<script src="<?= base_url()?>media/js/jquery-1.9.1.min.js"></script>
		<script> base = "<?= base_url() ?>"</script>
		<script src="<?= base_url()?>media/js/inicio.js"></script>
	</head>

	<body>
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
				<form class="iSesion-form" method="post" action="">
	                <input autofocus class="superior"  type="text" id="Lusuario_nombreUsr" name="Lusuario_nombreUsr" required placeholder="usuario"/>
	                <input autofocus class="superior" type="password" id="Lusuario_contrasena" name="Lusuario_contrasena" required placeholder="contraseña"/>
	                <input class="sup boton" type="submit" id="iSesion-boton" name="iniciar-sesion" value="entrar">
    	        </form>
    	        <label class="recuperaContrasena">recuperar contraseña</label>
			</div> <!--cajón superior-->
			
			<!--CAJÓN LATERAL-->
			<div class="cajonLateral-cerrado">
				<label class="rotar CL-cerrado">Registro</label>				
			</div>
			
			<div div="cajonLatCerrado" class="cajonLateral-abierto">
				<form method="post" action="">
					<!-- primera parte registro -->
<!-- 					<input id="desbloquea" type="text" value="0"/> -->
	                <input autofocus class="lateral vacio" type="text" id="usuario_nombreUsr" oname="usuario_nombreUsr" required placeholder="usuario"/>
	                <input autofocus class="lateral vacio" type="email" id="usuario_correo" name="usuario_correo" required placeholder="e-mail"/>
	                <input autofocus class="lateral vacio"  type="password" id="usuario_contrasena" name="usuario_contrasena" required	placeholder="contraseña" />
	                <p class="sexo">
	                	<label class="sexo" for="usuario_sexo">hombre</label><input autofocus class="sexo" type="radio" id="usuario_sexo" name="usuario_sexo" value="h" checked/>
	                </p>
	                <p class="sexo"> 
	                	<label class="sexo" for="usuario_sexo">mujer</label><input autofocus class="sexo" type="radio" id="usuario_sexo" name="usuario_sexo" value="m">
	                </p><br>
	                
					<!-- segunda parte registro -->
					<input autofocus class="lateral vacio" type="text" id="usuario_nombre" name="usuario_nombre" required placeholder="nombre(s)" />
					<input autofocus class="lateral vacio" type="text" id="usuario_aPaterno" name="usuario_aPaterno" required placeholder="apellido paterno" />
					<input autofocus class="lateral vacio" type="text" id="usuario_aMaterno" name="usuario_aMaterno" required placeholder="apellido materno" />
					
					<!--tercera parte registro-->
					<input autofocus class="lateral vacio" type="text" id="usuario_edad" name="usuario_edad" required placeholder="edad" />
	                <input autofocus class="lateral vacio" type="text" id="usuario_edad1" name="usuario_edad" required placeholder="edad" />
	                <input autofocus class="lateral vacio" type="text" id="usuario_edad2" name="usuario_edad" required placeholder="edad" />
	        
	                <!-- botones siguiente y submit -->
	                <input type="button" class="boton" id="sig1" value="siguiente" disabled/>
	                <input type="button" class="boton" id="sig2" value="siguiente" disabled />
	                <input type="button" class="boton" id="atras1" value="atrás" />
					<input type="button" class="boton" id="atras2" value="atrás" />
					<input type="submit" class="boton" id="enviar" name="enviar" value="enviar" disabled />

	                <div class="amarillo-lat">
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