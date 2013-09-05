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
				<span class="row">
					<input type="button" class="small button tamanoBoton four columns" id="bPerfil" value="Perfil"/>
					<input type="button" class="small button tamanoBoton four columns" id="bNuevoJuego" value="Nuevo juego"/>
					<input type="submit" class="small button four columns tamanoBoton"  value="Reintentar" />
				</span>
			</form>
		</span>
		<a class="close" href="<?=base_url();?>index.php/cpruebasLuisa/modalidad"></a>
	</div>
</div>
	<!-- </center> -->
