<div id="lightbox" class="twelve columns">
	<!-- <center> -->
	<div id="loteria-FancyBox">
		<span id="resultadosJuego" class="twelve columns">
			
		</span>
		<span id="trofeos" class="twelve columns">
			<center>
			<label id="trofeosGanadoslb">Trofeos ganados</label>
			<span class="row" id="carrusel">
				<input id="carrusel-inicio" type="hidden" value="1"><input id="carrusel-final" type="hidden" value="3">
				<img id="carrusel-ant" class="recorre" src="<?=base_url()?>media/img/cback.png">
				<input id="numTrofeosGanados" type="hidden" value="4"/>
				<?php 
					$trofeosGanados = array(
						1 => array(
								'id' => 1,
								'nombre' => "gn_aprendiz.PNG"
							),
						2 => array(
							'id' => 2,
							'nombre' => "gn_buzo.png"
						),
						3 => array(
							'id' => 3,
							'nombre' => "gn_capitan.png"
						),
						4 => array(
							'id' => 4,
							'nombre' => "gn_chiquito.png"
						)						
					);
					foreach ($trofeosGanados as $trofeos) { ?>
						<img class="carrusel-apaga imgCarrusel" id="carrusel-img<?=$trofeos['id']?>" width="80px" height="80px" src="<?php print_r(base_url().'media/img/trofeos/'.$trofeos['nombre'])?>" />
				<?php } ?>
				<img class="recorre" id="carrusel-sig" src="<?=base_url()?>media/img/cnext.png">
			</span>
			</center>
		</span>
		<span id="botones" class="twelve columns">
			<form action="<?=base_url();?>index.php/cpruebasLuisa/juegoLibre2" method="post" enctype="multipart/form-data" id="menuForm" name="menuForm">
					<input type="hidden" name="vPartida" id="vPartida" value="1" />
					<input type="hidden" name="vModalidad" id="vPartida" value="1" />
					<input type="hidden" name="vNivel" id="vPartida" value="1" />
				
				<center><span class="row">
					<span class="three columns"></span>
					<span class="two columns">
						<img src="<?= base_url()?>/media/img/hr_nuevo.png" id="bNuevoJuego"/>
						<label class="cartelito">Nuevo juego</label>
					</span>
					<span class="two columns">
						<img src="<?= base_url()?>/media/img/hr_rw.png"  id="bReintentar" />
						<label class="cartelito">Reintentar</label>
					</span>
					<span class="two columns">
						<img src="<?= base_url()?>/media/img/hr_usuario.png"  id="bPerfil" />
						<label class="cartelito">Perfil</label>
					</span>
					<span class="three columns"></span>
					<!-- <input type="submit" class="small button four columns tamanoBoton"  value="Reintentar" /> -->
				</span></center>
			</form>
		</span>
		<a class="close" href="<?=base_url();?>index.php/cpruebasLuisa/modalidad"></a>
	</div>
</div>
	<!-- </center> -->
