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
				<input type="hidden"  id="cartaVisible"  name="cartaVisible" value="" />
				<div class="cartasColumnaIzq">
						<div class="BarajaResp">
							<div>
								<?php 
								$contId=0;
								foreach ($baraja as $key => $cartas) {
													
									echo "<img id='baraja-".$contId."' onclick='clickBaraja(".$contId.")' class='Escondido barajaTemp'src='".base_url().$cartas['imagen']."' alt='".$key."'/>";
									
									$contId++;
								}
																
								echo '<input type="hidden"  id="IdCartaReversa"  name="IdCartaReversa" value="';
								foreach ($baraja as $key => $cartas) {							
									echo $key.'*';
								}
								echo '" />';
								?>
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
				
				<div class="contenidoSuperior" id="contenidoSuperior"></div>	
				<div class="contenido" id="contenido"></div>	
				<div class="fondoMazo" >	
					<?php			
					$cont=1;
					 foreach ($lote as $key => $carta) {
						
						echo "<img class='mazoTemp' src='".base_url().$carta['imagen']."' onclick='clickPlantilla(".$key.")'/>";
						
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
			<!--Columna derecha, aquí ira la la opción para gritar loteria -->
			<div class="three columns" id="ColumnaDer">
							<?php 
							$contId=0;
							foreach ($baraja as $key => $cartas) {
												
								echo "id= ".$key." rima= ".$cartas['nombre'],"<br />";
								
							} 
							?>	
			</div>	
			<!--Termina la columnaDer-->
			<div id="audio"> </div>
		
		</div>
				

</html>