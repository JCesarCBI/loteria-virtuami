<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<title>LOTERIA UAMI</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Le styles -->
	<link href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
	<style type="text/css">
		body { padding-top: 60px; padding-bottom: 40px; }
	</style>
	<link href="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">

	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
		<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Le fav and touch icons -->
	<link rel="shortcut icon" href="http://twitter.github.com/bootstrap/assets/images/favicon.ico">
	<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="http://twitter.github.com/bootstrap/assets/images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="http://twitter.github.com/bootstrap/assets/images/apple-touch-icon-114x114.png">
</head>
<body style="background: #B18904">

	<div class="navbar navbar-fixed-top navbar-inverse">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="#">LOTERIA UAMI</a>
				<div class="nav-collapse">
					<ul class="nav">
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
						<li class=""><a href="#"></a></li>
					
						<li><a href="#contact">Configuración</a></li>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<div class="container">



		
		<!-- <form action="<?=base_url(); ?>index.php/cLogin/terminarSesion">
			<input type="submit" id="" name="" value="salir">
		</form>
		<form action="<?=base_url(); ?>index.php/cPruebaJuegoLibre2/juegoLibre">
			<input type="submit" id="" name="" value="jugar">
		</form>
		<pre>
			
		</pre> -->

		
		<!-- Main hero unit for a primary marketing message or call to action -->
		<div class="hero-unit row" style="background: #D9E021">
			
				<h3 align="center">Bienvenido <?php print_r($this->session->userdata('usuario')); ?></h3>
				<div class="span6">
					<img src="<?php print_r(base_url().$this->session->userdata('avatar')); ?>">
				</div>
				<div align="right"  class="span3">
					<br /><br /><br /><br />
					<p><a href="<?=base_url(); ?>index.php/cJuego/configuracionJuego" class="btn-warning btn btn-block btn-primary btn-large">Jugar  &raquo;</a></p>
					<p><a href="<?=base_url(); ?>index.php/cLogin/terminarSesion" class="btn btn-block btn-large">Salir  &raquo;</a></p>
					
					
				</div>
			
			
			
		</div>
		<!-- Example row of columns -->
		<div class="row">
			<div class="span4">
				<h2>Heading</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
				<p><a class="btn" href="#">View details &raquo;</a></p>
			</div>
			<div class="span4">
				<h2>Heading</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
				<p><a class="btn" href="#">View details &raquo;</a></p>
			</div>
			<div class="span4">
				<h2>Heading</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
				<p><a class="btn" href="#">View details &raquo;</a></p>
			</div>
		</div>

	  	<hr>

		<footer>
			<h6>&copy; Universidad Autónoma Metropolitana <br />Unidad Iztapalapa <br />VirtUAMI 2013 </h6>
		</footer>
	</div> <!-- /container -->

	<!-- Le javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="http://code.jquery.com/jquery.min.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-transition.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-alert.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-modal.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-dropdown.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-scrollspy.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-tab.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-tooltip.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-popover.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-button.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-collapse.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-carousel.js"></script>
	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-typeahead.js"></script>
</body>
</html>