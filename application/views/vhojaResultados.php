<div id="lightbox" class="twelve columns">
	<div id="loteria-FancyBox">
		<span id="resultadosJuego" class="twelve columns">
		</span>
		<span class="two columns"></span>
		<span id="trofeos" class="eight columns">
			<span id="trofeo" class="five columns">
				<!-- <center><img clas="six columns" src="<?= base_url()?>media/img/trofeo/gn_cthulhu.png"> -->
				<span clas="six columns" id="numTrofeos"></span></center>
			</span>
			<span class="one columns"></span>
			<span id="carta" class="five columns" >
				<!-- <center><img clas="six columns" src="<?= base_url()?>media/img/plantilla/01_gallo.jpg"> -->
				<span clas="six columns" id="numCartas"></span></center>
			</span>
		</span>
		<span class="two columns"></span>
		
		<span id="botones" class="twelve columns">
			<form action="<?=base_url();?>index.php/cJuego/configuracionJuego" method="post" enctype="multipart/form-data" id="menuForm" name="menuForm">
				
				<input type="hidden" id="nolose" value="" />
				
				<input type="hidden" name="vPartida" id="vPartida" value="<?= $juego['idPartida']?>" />
				<input type="hidden" name="vModalidad" id="vModalidad" value="<?= $juego['idModalidad']?>" />
				<input type="hidden" name="vNivel" id="vNivel" value="<?= $juego['idNivel']?>" />
				<center><span class="ten columns centered">
					<span class="four columns">
						<input id="reintentarB" type="submit" value="" class="sombra"/>
						<label class="cartelito">Reintentar</label>
					</span>
					<span class="four columns">
						<!-- <img src="<?= base_url()?>/media/img/hr_compartir.png"  id="bPerfil" class="sombra" />
						<label class="cartelito">Perfil</label> -->
					</span>
					<span class="four columns">
						<img src="<?= base_url()?>/media/img/hr_nuevo.png" id="bNuevoJuego" class="sombra"/>
						<label class="cartelito">Nuevo juego</label>
					</span>
				</span></center>
			</form>
		</span>
		<a class="close" href="<?=base_url();?>index.php/cJuego/opcionesJuego"></a>
	</div>
</div>
