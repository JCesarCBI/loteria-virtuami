<html>
	<head>
	<meta charset="utf-8">
	
	<title>Inicio</title>
	<<script src="<?=base_url(); ?>media/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
	<<script src="<?=base_url(); ?>media/js/juegoCarta.js" type="text/javascript" charset="utf-8"></script>
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/fondoLoguin.css">
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/cartas.css">

	</head>
	<body>
		
		<div class="seven columns">
			
			<?php
			
			$cont=1;
			 foreach ($lote as $key => $carta) {
				
				echo "<img class='carta' src='".base_url().$carta['imagen']."' />";
				
				if (($cont % 4)==0 && $cont>1) 
					echo "<br />";
				
				$cont++;
			}?>
		
		</div>
		<div class="five columns">
			
			
			<?php foreach ($baraja as $key => $cartas) {
							
				echo "<img class='Escondido cartaReversa' id='baraja-".$key."' src='".base_url().$cartas['imagen']."' />";
				
			}?>
			
			<input type="hidden"  id="IdCartaReversa"  name="IdCartaReversa" value="baraja-0" />
			
			<img src="<?= base_url()?>media/img/mazo/reversa.jpg" onclick="cambiarCarta()" class="cartaReversa"/>
			
		</div>
				

</html>