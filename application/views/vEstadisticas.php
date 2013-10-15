<div class="twelve columns" id="estadisticas">
					<div id="lightbox" >
						<center><img id="rTizq" src="<?= base_url()?>media/img/fg_izq.png"/></center>
						<center>
							<h3>Trofeos</h3>
							<img class="trofeo-grande" src=""><hr class="lineaCentro">
							<h3 class="nombreTrofeo"></h3>
							<p class="descripcionTrofeo"></p>
							<p class="condicionTrofeo"></p>
							<label class="close"></label>
						</center>
						<center><img id="rTder" src="<?= base_url()?>media/img/fg_der.png"/></center>
					</div>
					<div id="trofeos" class="four columns">
						<div id="cajaImgLoteria" class="twelve columns">
								<center><img id="logoLoteriaEst" src="<?= base_url()?>media/img/logo_loteria.png" /></center>
						</div>
						<div id="trofeosGaleria" class="twelve columns">
							<p class="TseccionesEst">Trofeos</p>
							<center>
							<ul id="gallery">
							<?php
								$i = 1;
								foreach ($trofeos as $indice=>$trofeo) {
									if($trofeo['Estado'] == 1){ ?>
										<li>
											<span class="two">
												<img class="trofeo-chico" src="<?= base_url() ?><?= $trofeo['imagenIcon']?>" onclick="muestraInfoTrofeo(<?= $trofeo['idTrofeo']?>)">
											</span>
										</li>
									<?php }else{ ?>
										<li>
											<span class="two">
												<img class="trofeo-chico" src="<?= base_url() ?>/media/img/trofeo/icn_carbon.png" onclick="muestraInfoTrofeo(<?= $trofeo['idTrofeo']?>)">
											</span>	
										</li>
							<?php }
								$i++;	
								if($i==7){
									echo "<br><br><br>";
									$i=1;
								}
							}
		 
							?>
							</ul>
							</center>
						</div>
					</div> <!--trofeos-->
					
					<div id="graficas" class="four columns">
						<p class="TseccionesEst">Partidas jugadas : <?= $estadisticas['numPartidas'] ?></p>
						<center><div id="piechart"></div></center>

						<table id="tablaEst" class="twelve columns">
							<tr class="azul">
								<td class="blanco">
									<span id="leyendaNaranja" class="leyenda"></span>
									P. PERDIDAS
								</td>
								<?php if($estadisticas['partidasPerdidas'] == -1){ ?>
									<td class="blanco">No ha jugado</td>
								<?php }else { ?>
									<td class="blanco"><?=$estadisticas['partidasPerdidas']?></td>
								<?php } ?>
							</tr>
							<tr class="azul">
								<td class="blanco">
									<span id="leyendaAzul" class="leyenda"></span>
									BÁSICO
								</td>
								<?php if($estadisticas['basicoGanados'] == -1){ ?>
									<td class="blanco">No ha jugado</td>
								<?php }else { ?>
									<td class="blanco"><?=$estadisticas['basicoGanados']?></td>
								<?php } ?>							
							</tr>
							<tr class="azul">
								<td class="blanco">
									<span id="leyendaRojo" class="leyenda"></span>
									AVANZADO
								</td>
								<?php if($estadisticas['avanzadoGanados'] == -1){ ?>
									<td class="blanco">No ha jugado</td>
								<?php }else { ?>
									<td class="blanco"><?=$estadisticas['avanzadoGanados']?></td>
								<?php } ?>
							</tr>
							<tr class="azul">
								<td class="blanco">
									<span id="leyendaVerde" class="leyenda"></span>
									EXPERTO
								</td>
								<?php if($estadisticas['expertoGanados'] == -1){ ?>
									<td class="blanco">No ha jugado</td>
									
								<?php }else { ?>
									<td class="blanco"><?=$estadisticas['expertoGanados']?></td>
								<?php } ?>
							</tr>
						</table>				
					</div> <!--graficas-->
					
					<div id="ranking" class="four columns">
						<div id="ultimaPartidaS" class="twelve columns">
							<p class="TseccionesEst">Descripción De Última Partida</p>
							<p id="ultimaPartida"><?= $estadisticas['ultimoScore']['partida']?>/
							 <?= $estadisticas['ultimoScore']['nivel']?>/
							 <?= $estadisticas['ultimoScore']['modalidad']?>
							</p>
							<p id="totalUltimaPartida">
								Puntuación:<br>
								<?= $estadisticas['ultimoScore']['record']?>
							</p>
						</div><hr class="linea3">
						<div id="rankingS" class="twelve columns">
							<p class="TseccionesEst">Ranking</p>
							<table id="tablaRanking" class="twelve columns">
								<?php 
									foreach ($estadisticas['ranking'] as $ranking) { ?>
										<tr class="azul">
											<td class="blanco"><?= $ranking['nombreUsr']?></td>
											<td class="blanco"><?= $ranking['scoreTotal']?></td>
										</tr>									
								<?php } ?>
								
							</table>
						</div>						
					</div>
				</div> <!--estadísticas -->