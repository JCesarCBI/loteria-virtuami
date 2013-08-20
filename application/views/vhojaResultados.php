<div id="lightbox">
	<center>
	<div id="loteria-FancyBox" class="">
		<h3>Hoja de resultados</h3>
		<span id="resultadosJuego" >
			
		</span>
		<span id="trofeos" >
			
		</span>
		<span id="botones">
			<form action="<?=base_url();?>index.php/cpruebasLuisa/juegoLibre2" method="post" enctype="multipart/form-data" id="menuForm" name="menuForm">
					<input type="hidden" name="vPartida" id="vPartida" value="1" />
					<input type="hidden" name="vModalidad" id="vPartida" value="1" />
					<input type="hidden" name="vNivel" id="vPartida" value="1" />
					<center>
						<button class="small button tamanoBoton" id="bPerfil" type="button">Perfil</button>
						<button class="small button tamanoBoton" id="bNuevoJuego" type="button">Nuevo Juego</button><br />
					</center>				
					<input class="medium button" type="submit" value="Reintentaraaa" />
			</form>
		</span>

		<a class="close" href="<?=base_url();?>index.php/cpruebasLuisa/modalidad"></a>
	</div>
	</center>
</div>