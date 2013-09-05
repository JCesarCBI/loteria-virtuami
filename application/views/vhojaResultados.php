<div id="lightbox" class="twelve columns">
	<!-- <center> -->
	<div id="loteria-FancyBox">
		<span id="resultadosJuego" class="twelve columns">
			
		</span>
		<span id="trofeos" class="twelve columns">
			
		</span>
		<span id="botones" class="twelve columns">
			<form action="<?=base_url();?>index.php/cpruebasLuisa/juegoLibre2" method="post" enctype="multipart/form-data" id="menuForm" name="menuForm">
					<input type="hidden" name="vPartida" id="vPartida" value="1" />
					<input type="hidden" name="vModalidad" id="vPartida" value="1" />
					<input type="hidden" name="vNivel" id="vPartida" value="1" />
				
				<center><span class="row">
					<img src="<?= base_url()?>/media/img/hr_usuario.png" id="bPerfil"/>
					<label class="cartelito">Nuevo juego</label>
					<img src="<?= base_url()?>/media/img/hr_nuevo.png"  id="bNuevoJuego" />
					<label class="cartelito">Reintentar</label>
					<img src="<?= base_url()?>/media/img/hr_rw.png"  id="bReiniciarJuego" />
					<label class="cartelito">Perfil</label>
					<!-- <input type="submit" class="small button four columns tamanoBoton"  value="Reintentar" /> -->
				</span></center>
			</form>
		</span>
		<a class="close" href="<?=base_url();?>index.php/cpruebasLuisa/modalidad"></a>
	</div>
</div>
	<!-- </center> -->
