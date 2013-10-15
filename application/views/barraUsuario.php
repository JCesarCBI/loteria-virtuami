<div id="barraUsuario" class="twelve columns header sombra2">
	<!-- <img src="<?= base_url() ?><?= $icnAvatar ?>" title="avatar"/> -->
	<span id="menu" class="eleven columns ocultaMenu">
		<ul id="dropdown">
		  <li><a href="#" id="usuario"><?= $nombreUsr ?></a></li>
		  <li><a href="<?= base_url()?>index.php/cDatosPerfil/PerfilUsuario/cargarLecciones">Perfil del jugador</a></li>
		  <li><a href="<?= base_url()?>index.php/cLecciones/cargarLecciones">Lecciones</a></li>
		  <li><a href="<?= base_url()?>index.php/cJuego/opcionesJuego">Juego</a></li>
		  <li><a href="#">Acerca del juego</a></li>
		  <!-- <li><a href="#">Créditos</a></li> -->
		  <li><a href="<?= base_url()?>index.php/cLogin/terminarSesion">Salir</a></li>
		</ul>
	</span>
	<span id="avatarIcn" class="one columns" ><img src="<?= base_url() ?><?= $icnAvatar ?>" title="avatar"/></span>
</div>