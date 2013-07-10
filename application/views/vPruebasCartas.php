<html>
	<head>
	<meta charset="utf-8">
	
	<title>Inicio</title>
	<script src="<?=base_url(); ?>media/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?=base_url(); ?>media/js/tipoMultiplicador.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?=base_url(); ?>media/js/juegoCartasV2.js" type="text/javascript" charset="utf-8"></script>
	<script>var base = "<?=base_url(); ?>"</script> 
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/general.css">
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/fondoLoguin.css">
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/cartas.css">

	</head>
	<body>
		<div class="espacioSuperior">
			
			<!--Columna izquierda, aquí iran las 56 cartas, y también se escribirá la respuesta de cada carta-->
			<div class="three columns" id="ColumnaIzq">
				<input type="hidden"  id="cartaVisible"  value="" />
				<input type="hidden"  id="puntajeCarta"  value="<?= $puntuaje=20?>" />
				<input type="hidden"  id="tiempoJuego"  value="<?= $tiempo=10000?>" />
				<input type="hidden"  id="multiplicadorValor" value="1" />
				<input type="hidden"  id="errorValor" value="0" />
				<input type="hidden"  id="numeroCarta" value="1" />
				<input type="hidden"  id="cartaClickPlantilla" value="" />
				<input type="hidden"  id="puntos" value="0" />
				<input type="hidden"  id="comodinesTotales" value="0" />
				<input type="hidden"  id="errorCadena" value="" />
				<div class="cartasColumnaIzq">
						<div class="BarajaResp">
							<div>
								<div id="cartaBvisible"></div>
								
							</div>
							<div class="twelve columns respuestaInput"  id="respuestaInput">
								aqui se escribira la respuesta
							</div>
						</div>
						
					<img src="<?= base_url()?>media/img/mazo/reversa.png" onclick="cambiaCarta(0)" class="cartaReversa" id="cartaReversaClick"/>
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
							<center><span class="multiplicador centro" id="multiplicadorVisible" >1</span></center>
							<center><span class="comodines centro" id="comodinesVisibles" >0</span></center>
							<center><span class="errores centro" id="erroresVisibles" >0</span></center>
					</div>
					
					<div class="contenido" id="contenido"></div>	
					<div class="fondoMazo" >	
						<?php			
							$cont2=0;		
							$cont=1;
						 foreach ($lote as $key => $carta) {
							
							echo "<img class='mazoTemp' id=plantilla-".$cont2." src='".base_url().$carta['imgPlantilla']."' onclick='clickPlantilla(".$cont2.")'/>";
							
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
			
				<div id="audio"> </div>
		
			</div>
			<!--Termina la columnaCentral-->
				<!--Columna derecha, aquí ira la la opción para gritar loteria -->
		<div class="three columns" id="ColumnaDer">
				<div class="centro" id="contenidoDerecho">
							<img src="<?= base_url()?>media/img/boton.png"  />
				</div>
				
		</div>	
			<!--Termina la columnaDer-->
			
		</div>
		<div id="UrlCartas">
					<?php 
						$contId=0;
						foreach ($baraja as $key => $cartas) {
							echo '<input type="hidden"  id="baraja-'.$contId.'"  value="'.base_url().$cartas['imgMazo'].'"/>';		
							//echo "<img id='baraja-".$contId."' onclick='clickBaraja(".$contId.")' class='Escondido barajaTemp'src='".base_url().$cartas['imagen']."' alt='".$key."'/>";
							
							
							$contId++;
						}
														
						echo '<input type="hidden"  id="IdCartaReversa"  name="IdCartaReversa" value="';
						foreach ($baraja as $key => $cartas) {							
							echo $key.'*';
						}
						echo '" />';
						?>
				</div>
	</body>	

</html>
