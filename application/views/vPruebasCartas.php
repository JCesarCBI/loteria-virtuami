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
			
			<?php foreach ($lote as $key => $carta) {
							
				echo "<img class='carta' src='".$carta."' />";
				
				if ((($key+1) % 4)==0 && $key>0) {
				
					echo "<br />";
					
				}
			}?>
		
		</div>
		<div class="five columns">
			
			
			<?php foreach ($baraja as $key => $cartas) {
							
				echo "<img class='Escondido cartaReversa' id='baraja-".$key."' src='".$cartas."' />";
				
			}?>
			
			<input type="hidden"  id="IdCartaReversa"  name="IdCartaReversa" value="baraja-0" />
			
			<img src="<?= base_url()?>media/cardCaptor/reversa.jpg" onclick="cambiarCarta()" class="cartaReversa"/>
			
		</div>
				

</html>