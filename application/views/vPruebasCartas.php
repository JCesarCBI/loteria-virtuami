<html>
	<head>
	<meta charset="utf-8">
	
	<title>Inicio</title>
	<script src="<?=base_url(); ?>media/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?=base_url(); ?>media/js/juegoCartasV2.js" type="text/javascript" charset="utf-8"></script>
	<script>var base = "<?=base_url(); ?>"</script> 
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/fondoLoguin.css">
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/cartas.css">

	</head>
	<body>
		<div class="espacioSuperior">
			
			<!--Columna izquierda, aquí iran las 56 cartas, y también se escribirá la respuesta de cada carta-->
			<div class="three columns" id="ColumnaIzq">
				<input type="hidden"  id="cartaVisible"  value="" />
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
							<span id="puntosTotalesVisibles" > <h3>0</h3> </span>
						</div>
						<div class="multiplicador">
							MULTIPLICADORES<br />
							<span id="multiplicadorVisible" ><h3>1</h3></span>
						</div>
						<div class="comodines">
							COMODINES<br />
							<span id="comodinesVisibles" ><h3>0</h3></span>
						</div>
						<div class="errores">
							ERRORES<br />
							<span id="erroresVisibles" ><h3>0</h3></span>
						</div>
					</div>	
					
					<div class="contenido" id="contenido"></div>	
					<div class="fondoMazo" >	
						<?php			
							$cont2=0;		
							$cont=1;
						 foreach ($lote as $key => $carta) {
							
							echo "<img class='mazoTemp' id=plantilla-".$cont2." src='".base_url().$carta['imagen']."' onclick='clickPlantilla(".$cont2.")'/>";
							
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
			<!--Termina la columnaCentral-->
			
			<div id="audio"> </div>
		
		</div>
				<!--Columna derecha, aquí ira la la opción para gritar loteria -->
		<div class="three columns" id="ColumnaDer">
							<?php 
							$contId=0;
							foreach ($baraja as $key => $cartas) {
												
								echo "id= ".$key." rima= ".$cartas['nombre'],"<br />";
								
							} 
							?>	
				<div id="UrlCartas">
					<?php 
						$contId=0;
						foreach ($baraja as $key => $cartas) {
							echo '<input type="hidden"  id="baraja-'.$contId.'"  value="'.base_url().$cartas['imagen'].'"/>';		
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
		</div>	
			<!--Termina la columnaDer-->
		</div>
	</body>	

</html>
