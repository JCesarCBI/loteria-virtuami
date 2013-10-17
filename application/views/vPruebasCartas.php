<html>
	<head>
	<meta charset="utf-8">
	
	<title>Lotería</title>
	<script src="<?=base_url(); ?>media/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
  	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  	
	<script>var base = "<?=base_url(); ?>"</script>
	<?= (isset($juego['idPartida']) && ($juego['idPartida']== 2)) ? '<script src="'.base_url().'media/js/juegoCartas4x4.js" type="text/javascript" charset="utf-8"></script>' : '<script src="'.base_url().'media/js/juegoCartasV2.js" type="text/javascript" charset="utf-8"></script>' ;?> 
	
	<script src="<?=base_url(); ?>media/js/easterEggs.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?=base_url(); ?>media/js/eventosMazo.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?=base_url(); ?>media/js/eventosPlantilla.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?=base_url(); ?>media/js/EventosHojaResultados.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?=base_url(); ?>media/js/eventosVisuales.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?=base_url(); ?>media/js/funcionesAjax.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?=base_url(); ?>media/js/ayuda.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?= base_url()?>media/js/menu.js"></script>

	<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/general.css">
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/fondoLoguin.css">
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/magic-master/magic.css">
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/cartas.css">
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/hojaRes.css">

	</head>
	<body>
		<?= $barraUsuario ?>
		<div class="twelve columns conteidoMargen">
			<div id="segundoMargen" class="twelve columns segundoM">
				<div class="contenidoCentrado">		  
					<div id="hojaDeResultados">
						<?=$hojaResultado?>				  
					</div>
				
					<!--Columna izquierda, aquí iran las 56 cartas, y también se escribirá la respuesta de cada carta-->
					<div class="three columns" id="ColumnaIzq">
		
						<div class="cartasColumnaIzq">
								<div class="BarajaResp">
										<div id="cartaBvisible"></div>
										<div class="respuestaInput"  >
											
											<div id="respuestaInput"></div>
											<div id="posiblePuntuacion"></div>
											<div class="longitud" id="longitudAyuda"></div>
										</div>
								</div>
								
							<div id="espacioCartaReversa">
								<img src="<?= base_url()?>media/img/mazo/reversa.png" onclick="cambiaCarta(0,1)" class="cartaReversa pasarCarta" id="cartaReversaClick"/>
								<div id="cartaEfecto"> </div>
							</div>
						</div>			
					</div>
					<!--Termina la columnaIzq-->
					
					<!--Columna central, aquí iran las 16 cartas de la plantilla-->
					<div class="six columns" id="columnaCentral">
						
						<div class="contenidoSuperior" id="contenidoSuperior">
							<div class="fondosup" id="fondosup">
								<div class="puntosTotal">
									PUNTOS TOTAL<br />
								</div>
								<div class="multiplicador">
									MULTIPLICADORES<br />
								</div>
								<div class="comodines">
									COMODINES<br />
								</div>
								<div class="errores">
									ERRORES<br />
								</div>
							</div>	
							<div class="textoLetra">
									<center><div class="espacioReloj"><img class="reloj" src="<?= base_url()?>media/img/reloj.png" /><span class="hora" id="tiempo"></span></div></center>
									<center><span class="puntosTotal centro" id="puntosTotalesVisibles" style="font-size: 23pt !important; margin-top:-4px !important;">0</span></center>
									<center><span class="multiplicador centro magictime puffIn" id="multiplicadorVisible" >x1</span></center>
									<center><span class="comodines centro magictime puffIn" id="comodinesVisibles" >0</span></center>
									<center><span class="errores centro magictime puffIn" id="erroresVisibles" >0</span></center>
							</div>
							<div></div>
							<div id="audio" class="audio" ><audio autoplay src="http://localhost/loteriaVIRTUAMI/media/audio/13_gorro.png" ></audio> </div>
							<div class="contenido" id="contenido"></div>	
							<div class="fondoMazo" >	
								<?php			
									$cont2=0;		
									$cont=1;
								 foreach ($lote as $key => $carta) {
									
									echo "<div class='mazoTemp' ><div id='plantilla-frijolito-".$cont2."' class=''></div><img class='cartaMazo' id=plantilla-".$cont2." src='".base_url().$carta['imgPlantilla']."' onclick='clickPlantilla(".$cont2.")'/> </div> " ;
									
									$cont2++;
									if (($cont % 4)==0 && $cont>1) 
										echo "<br />";
									
									$cont++;
								}
								
								echo '<input type="hidden"  id="IdMazoReversa"  name="IdMazoReversa" value="';
								foreach ($lote as $key => $carta) {
										
										echo $key.'*'; 	
								}
								echo '"/>';
								?>
					
							</div>
					</div>
					
				
					</div>
					<!--Termina la columnaCentral-->
						<!--Columna derecha, aquí ira la la opción para gritar loteria -->
					<div class="three columns" id="ColumnaDer">
						<center>	
							<img src="<?= base_url().$jugador['avatarGde']?>" class="botonLT" />
							<div><h4><?=$jugador['nombre']?> </h4> </div>
							 <input id="subtitulos"  type="button" class="fondoSubs" value="Activado" /><br />
							 <input id="audioBoton"   type="button" class="fondoAudio" value="Activado" /><br />
							 <input type="button" onclick='abandonarPartida()' value="Abandonar partida" />
							<br /> 
							<br /> 
							<br /> 
							<br /> 
							<br /> 
							 
							 
							<div  id="contenidoDerecho">
								
								<ul id="gallery">
									<li>
										<a id="ayudaLoteriaBoton" >
											<img class="botonLT" src="<?= base_url()?>media/img/boton.png" id="botonLoteria"  onclick='loteria()'/>
										</a>
									</li>
								</ul>
							</div>
						</center>
					</div>	
						<!--Termina la columnaDer-->
				</div>
			</div>	
		</div>
		
		<div id="UrlCartas">
					<?php 
						$contId=0;
						foreach ($baraja as $key => $cartas) {
							echo '<input type="hidden"  id="baraja-'.$contId.'"  value="'.base_url().$cartas['imgMazo'].'"/>';		
							
							$contId++;
						}
														
						echo '<input type="hidden"  id="IdCartaReversa"  name="IdCartaReversa" value="';
						foreach ($baraja as $key => $cartas) {							
							echo $key.'*';
						}
						echo 'undefined" />';
						?>
		</div>

		<div id="inputsHidden">
			
				<input type="hidden"  id="cartaVisible"  value="" />
				<input type="hidden"  id="linea1"  value="" />
				<input type="hidden"  id="linea2"  value="" />
				<input type="hidden"  id="linea3"  value="" />
				<input type="hidden"  id="linea4"  value="" />
				<input type="hidden"  id="linea5"  value="" />
				<input type="hidden"  id="linea6"  value="" />
				<input type="hidden"  id="linea7"  value="" />
				<input type="hidden"  id="linea8"  value="" />
				<!--Sí la partida se juega en modo completo y en nivel básico la ayuda se habilitará-->
				<input type="hidden"  id="ayudaVoF"  value="<?=(isset($juego['idPartida']) && $juego['idPartida']==1 && $juego['idNivel']==1) ? 1 : 0 ;?>" />
				<input type="hidden"  id="JuegoPerfecto" name="JuegoPerfecto"  value="0" />
				<input type="hidden"  id="puntajeCarta"  value="<?= $puntaje?>" />
				<input type="hidden"  id="tipoDeAudio"  value="<?= $audio?>" />
				<input type="hidden"  id="tiempoJuego"  value="<?= $tiempo?>" />
				<input type="hidden"  id="idNivel"  value="<?= $juego['idNivel']?>" />
				<input type="hidden"  id="idModalidad"  value="<?= $juego['idModalidad']?>" />
				<input type="hidden"  id="idPartida"  value="<?= $juego['idPartida']?>" />
				<input type="hidden"  id="tiempoReloj"  value="0" />
				<input type="hidden"  id="multiplicadorValor" value="1" />
				<input type="hidden"  id="multiplicadorValorAux" value="1" />
				<input type="hidden"  id="errorValor" value="0" />
				<input type="hidden"  id="numeroCarta" value="1" />
				<input type="hidden"  id="cartaClickPlantilla" value="" />
				<input type="hidden"  id="puntos" value="0" />
				<input type="hidden"  id="estadoPartida" value="2" />
				<input type="hidden"  id="comodinesTotales" value="0" />
				<input type="hidden"  id="errorCadena" value="" />
				<input type="hidden"  id="loteriaCadena" value="" />
				<input type="hidden"  id="bonusCartasRestantes" value="" />
				<input type="hidden"  id="vallong" value="" />
				<input type="hidden"  id="cthuluEE" value="" />
				<input type="hidden"  id="salinasEE" value="" />
				<input type="hidden"  id="oFortuna" value="" />
				<input type="hidden"  id="inicio" value="" />
				<input type="hidden"  id="PierdeNC" value="" />
				
		</div>
	</body>	

</html>
