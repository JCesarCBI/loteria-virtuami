				<div class="twelve columns" id="galeria">
					<div id="infCarta">
						<span class="six columns">
							<center><img id="imgCarta" class="six columns centered" src="<?=base_url()?>media/img/galeria/g_reverso.jpg"/></center>
						</span>
						
						<div id="datosCarta" class="six columns">
							<h2 id="nombreCarta"></h2>
							<hr class="linea3"></hr>
							<p id="descripcionCarta">
								<div class="Div-vacio"></div>
							</p>
							<div class="six columns" id="incarat"></div>
							<!-- <div class="six columns" id="masInfoCarta"></div> -->
							<hr class="linea3"><hr class="linea3">
							<!-- <input type="hidden" value="1" id="numRima"/>
							<input type="hidden" value="3" id="totalRima"/> -->
						</div>
					</div>
					<div class="twelve columns">
						<span id="logoLoteriaPerfil" class="two columns">
							<center><img class="centered" src="<?= base_url() ?>media/img/logo_loteria.png"/></center>
						</span>
						<div class="ten columns" id="carrusel">
							<!-- <input id="carrusel-inicio" type="hidden" value="1"><input id="carrusel-final" type="hidden" value="5"> -->
							<span id="carrusel-ant"  class="one columns recorre"><img src="<?=base_url()?>media/img/fg_izq.png"></span>
							<?php 
								foreach ($galeriaCartas as $imagen) {
									if($imagen['Estado'] == 1){	 ?>
										<span id="carrusel-img<?=$imagen['idCarta']?>" class="two columns">
											<img class="imgCarrusel carrusel-apaga centered" src="<?php print_r(base_url().$imagen['imgPlantilla'])?>" onclick="muestraInfoCarta(<?= $imagen['idCarta']?>);"/>
										</span>
								<?php } else { ?>
										<span id="carrusel-img<?=$imagen['idCarta']?>" class="two columns">
											<img class="carrusel-apaga imgCarrusel centered" src="<?=base_url()?>media/img/galeria/g_reverso.jpg" onclick="limpiaInfoCarta()"/>
										</span>									
							<?php	} }?>
	
							<span id="carrusel-sig" class="one columns recorre"><img src="<?=base_url()?>media/img/fg_der.png"></span>
							<br><br>
						</div>
					</div>
				</div>
		</div> <!--cajaHija-->
		</div> <!-- caja madre -->
	</body>
</html>