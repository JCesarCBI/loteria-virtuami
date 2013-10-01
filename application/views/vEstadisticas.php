<div class="twelve columns" id="estadisticas">
					<div id="lightbox">
						<?php
							if($trofeos != NULL){
								foreach ($trofeos as $indice=>$trofeo) {
									if($trofeo['Estado'] == 1){ ?>
										<center>
											<div id="trofeo<?=$indice?>" class="trofeo-popup">
												<h3>Trofeos</h3>
												<img class="trofeo-grande" src="<?= base_url() ?><?= $trofeo['imagen']?>"><hr class="lineaCentro">
												<h3 class="nombreTrofeo"><?= $trofeo['nombre']?></h3>
												<p class="descripcionTrofeo"><?= $trofeo['descripcion']?></p>
												<p class="descripcionTrofeo"><?= $trofeo['condicion']?></p>
												<a class="close" href="#"></a>
											</div>
										</center>
									<?php }else{ ?>
										<center>
											<div id="trofeo<?=$indice?>" class="trofeo-popup">
												<h3>Trofeos</h3>
						 						<img class="trofeo-grande gris" src="<?= base_url() ?><?= $trofeo['imagen']?>"><hr class="lineaCentro">
												<h3 class="nombreTrofeo"><?= $trofeo['nombre']?></h3>
												<p class="descripcionTrofeo">Trofeo no ganado</p>
												<a class="close" href="#"></a>
											</div>
										</center>
								<?php }
									}
							}else{
								echo "<label>No hay trofeos ganados</label>";
							}		 
							?>
					</div>
					<div class="trofeos four columns">
						<div>
							<ul id="gallery">
							<?php
								$i = 1;
								foreach ($trofeos as $indice=>$trofeo) {
									if($trofeo['Estado'] == 1){ ?>
										<li>
											<a class="three clearfix" href="#trofeo<?=$indice?>">
												<img class="trofeo-chico" src="<?= base_url() ?><?= $trofeo['imagenIcon']?>">
											</a>
										</li>
									<?php }else{ ?>
										<li>
											<a class="three clearfix" href="#trofeo<?=$indice?>">
												<img class="trofeo-chico gris" src="<?= base_url() ?><?= $trofeo['imagenIcon']?>">
											</a>	
										</li>
							<?php }
								$i++;	
								if($i==5){
									echo "<br><br><br>";
									$i=1;
								}
							}
		 
							?>
							</ul>
						</div>
					</div> <!--trofeos-->
					
					<div id="graficas" class="four columns">
						<h1>Aquí irán las gráficas</h1>
					</div>
					<div id="ranking" class="four columns">
						<div id="partidas">
							<h3>Partidas</h3>
							<ul>
								<li><b>Partidas "rápidas" ganadas:</b> <?= $estadisticas['partida']['rapidasGanadas']?></li>
								<li><b>Partidas "rápidas" perdidas:</b> <?= $estadisticas['partida']['rapidasPerdidas']?></li>
								<li><b>Partidas "completas" ganadas:</b> <?= $estadisticas['partida']['completasGanadas']?></li>
								<li><b>Partidas "completas" perdidas:</b> <?= $estadisticas['partida']['completasPerdidas']?></li>
							</ul>
						</div>
						
						<div id="niveles">
							<h3>Níveles</h3>
							<ul>
								<li><b>Níveles "básico" ganados:</b> <?= $estadisticas['juego']['basicoGanados']?></li>
								<li><b>Níveles "básico" perdidos:</b> <?= $estadisticas['juego']['basicoPerdidos']?></li>
								<li><b>Níveles "intermedio" ganados:</b> <?= $estadisticas['juego']['intermedioGanados']?></li>
								<li><b>Níveles "intermedio" perdidos:</b> <?= $estadisticas['juego']['intermedioPerdidos']?></li>
								<li><b>Níveles "avanzado" ganados:</b> <?= $estadisticas['juego']['avanzadoGanados']?></li>
								<li><b>Níveles "avanzado" perdidos:</b> <?= $estadisticas['juego']['avanzadoPerdidos']?></li>
							</ul>
						</div>
						
						<div id="modalidades">
							<h3>Modalidades</h3>
							<ul>
								<li><b>Modalidad "Juego libre" ganados:</b> <?= $estadisticas['modalidad']['juegoLibreGanados']?></li>
								<li><b>Modalidad "Juego libre" perdidos:</b> <?= $estadisticas['modalidad']['juegoLibrePerdidos']?></li>
								<li><b>Modalidad "Diminutivos" ganados:</b> <?= $estadisticas['modalidad']['diminutivosGanados']?></li>
								<li><b>Modalidad "Diminutivos" perdidos:</b> <?= $estadisticas['modalidad']['diminutivosPerdidos']?></li>
								<li><b>Modalidad "Adjetivos" ganados:</b> <?= $estadisticas['modalidad']['adjetivosGanados']?></li>
								<li><b>Modalidad "Adjetivos" perdidos:</b> <?= $estadisticas['modalidad']['adjetivosPerdidos']?></li>
								<li><b>Modalidad "Sinónimos" ganados:</b> <?= $estadisticas['modalidad']['sinonimosGanados']?></li>
								<li><b>Modalidad "Sinónimos" perdidos:</b> <?= $estadisticas['modalidad']['sinonimosPerdidos']?></li>
							</ul>
						</div>				
					</div>
				</div> <!--estadísticas -->