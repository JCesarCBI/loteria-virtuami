<html>
	<head>
	<meta charset="utf-8">
	
	<title>Inicio</title>
	<script src="<?=base_url(); ?>media/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?=base_url(); ?>media/js/juegoCarta.js" type="text/javascript" charset="utf-8"></script>
	<script>var base = "<?=base_url(); ?>"</script> 
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/fondoLoguin.css">
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/cartas.css">

	</head>
	<body>
		<div class="row espacioSuperior">
			
		<div class="three columns">
			<div class="cartaVisible">
					<div class="barajaTemp">
						<?php foreach ($baraja as $key => $cartas) {
											
							echo "<img id='baraja-".$key."' onclick='compararCarta(".$key.")' class='Escondido barajaTemp'src='".base_url().$cartas['imagen']."' />";
							
						}
							
							echo '<input type="hidden"  id="IdCartaReversa"  name="IdCartaReversa" value="';
						foreach ($baraja as $key => $cartas) {
								
								echo $key.'*'; 	
						}
						echo '-1" />';
						?>
					</div>
					<div class="twelve columns respuestaInput"  id="respuestaInput"></div>
					
				<img src="<?= base_url()?>media/img/mazo/reversa.jpg" onclick="cambiarCarta()" class="barajaTemp"/>
			</div>			
		</div>
		
		<div class="nine columns">
			
			<div class="contenidoSuperior" id="contenidoSuperior"></div>	
			<div class="contenido" id="contenido"></div>	
			<div class="fondoMazo" >	
				<?php			
				$cont=1;
				 foreach ($lote as $key => $carta) {
					
					echo "<img class='mazoTemp' src='".base_url().$carta['imagen']."' />";
					
					if (($cont % 4)==0 && $cont>1) 
						echo "<br />";
					
					$cont++;
				}
				
					echo '<input type="hidden"  id="IdloteReversa"  name="IdloteReversa" value="';
				foreach ($lote as $key => $carta) {
						
						echo $key.'*'; 	
				}
				echo '"/>';
				?>
			</div>
		</div>
		
		
		</div>
				

</html>