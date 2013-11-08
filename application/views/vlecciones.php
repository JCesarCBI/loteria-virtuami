<html>
	<!-- en principio era la página de lecciones. Cambió su contenido a última hora -->
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/general.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/bordeBlanco.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/lecciones.css">
		<script src="<?= base_url()?>media/js/jquery-1.9.1.min.js"></script>
		<script> base = "<?= base_url() ?>"</script>
		<script src="<?= base_url()?>media/js/lecciones.js"></script>
		<script src="<?= base_url()?>media/js/menu.js"></script>
	</head>

	<body>
		<title>Acerca del juego</title>
		<!--sección de la barra de usuario en donde se encuentra el avatar y el menú para dirigirse a secciones como perfil, lecciones, juego, etc. -->
		<?= $barraUsuario ?>	
		<div id="cajaMadre" class="twelve columns">
		<div id="cajaHija" class="twelve columns">
			<div class="four columns">
				<center><img id="logoLoteria" src="<?= base_url()?>media/img/logo_loteria.png"></center>
				<div id="labels" class="twelve columns">
					<label id="lb-reglas" class="libro">Reglas</label>
					<label id="lb-diminutivos" class="libro">Diminutivos</label>
					<label id="lb-derivaciones" class="libro">Adjetivos</label>
					<label id="lb-sinonimos" class="libro">Sinónimos</label>
					<label id="lb-creditos" class="libro">Créditos</label>
					<label id="lb-paginaLegal" class="libro">Página Legal</label>
				</div>			
				<!-- <center><img id="botonL" src="<?= base_url()?>media/img/j_bloteria.jpg"></center> -->
				<img id="i_uami" src="<?= base_url()?>media/img/i_uami.png">
				<img id="i_virtuami" src="<?= base_url()?>media/img/i_virtuami.png">
			</div>
			<div class="one columns"></div>
			<div id="cajaLecciones" class="seven columns">
				<div id="reglas-txt" class="cajas-txt-lecciones twelve columns">
					<div id="flechas">
						<img id="flecha-izq" src="<?=base_url()?>/media/img/cback.png" class="reglas-pag-sig" />
						<img id="flecha-der" src="<?=base_url()?>/media/img/cnext.png" class="reglas-pag-ant"/>
					</div>
					<h3>Reglas</h3>
						<ul class="plecciones">
							<li class="uno">
								Antes de jugar deberás configurar el juego, eligiendo la opción de cada categoría. Primero deberás elegir el tipo de juego. Así como el juego tradicional de Lotería tiene diferentes maneras de jugarse, nuestra adaptación presenta dos tipos: 
								<br><br>
								La partida completa corresponde a la forma más conocida de jugar Lotería; cada vez que una de las cartas de la planilla sea “cantada”, deberás marcar la casilla correspondiente hasta llenarla toda. La partida rápida adopta la forma como se juega en algunas ferias del país, donde el objetivo es formar una línea de Bingo, conectando 4 casillas ya sea de manera horizontal, vertical o diagonal. Este modo de juego es potencialmente más breve. Luego de que elijas el tipo de juego, deberás seleccionar la dificultad.
								<br><br>
								La dificultad “Básico” te permite jugar con varias ayudas, tanto visuales como auditivas, y tiene como propósito que puedas familiarizarte con la interfaz, las distintas cartas y la mecánica de juego. En esta dificultad sólo está disponible la modalidad “Juego libre”.
								<br><br>
								Si seleccionas la dificultad “Avanzado” podrás acceder a las diferentes modalidades disponibles. En esta dificultad ya no tendrás las ayudas visuales para identificar la carta en la planilla. Además, los audios que escucharás son tomados de poemas, novelas, ensayos, adivinanzas y dichos populares. Después de seleccionar la dificultad, deberás elegir la modalidad en la que quisieras jugar.
								<br><br>
								“Juego Libre” es la modalidad más sencilla. Aquí, deberás escribir únicamente el nombre de la carta, sin haberla sometido a ninguna transformación. Todas las palabras son sustantivas y están en singular.
								<br><br>
								En la modalidad “Diminutivos”, deberás convertir el sustantivo de la carta en alguna de las maneras aceptadas para formar diminutivos. Escribir, por ejemplo, angelito, angelillo, angelín. Prueba todas las maneras que conozcas para formar diminutivos.
								<br><br>
								En la modalidad “Adjetivos”, deberás convertir el sustantivo de la carta en un adjetivo. Escribir, por ejemplo, angelical, angelino. Sin embargo, no todos los sustantivos tienen formas adjetivas comunes, por lo que en esta modalidad deberás experimentar con tu gramática en la búsqueda de una respuesta correcta.
								<br><br>
								En la  modalidad “Sinónimos”, deberás responder con una palabra sinónima o afín. Los sinónimos son tomados de las distintas acepciones que pueda tener una palabra. No olvides experimentar para encontrar las distintas posibilidades que soporta el juego.
								<br><br>
								En la medida que más juegues y acumules puntos, irás desbloqueando elementos para tu galería. Aquí podrás ver en detalle las ilustraciones de las cartas así como una breve ficha bio-bibliográfica sobre su procedencia.
								<br><br>								
							</li>
							<li class="dos">
								Una vez que hayas configurado el juego podrás comenzar a jugar. <br><br>
								La pantalla de juego está compuesta por distintos elementos. En la parte superior podrás ver distintos datos como tu puntuación, los comodines que hayas ganado, las bonificaciones a la puntuación y el número de errores cometidos. También aquí podrás desactivar el sonido o activar los subtítulos para las frases que sirven de ayuda.
								<br><br>
								Del lado izquierdo, está el mazo, desde el cual las nuevas cartas aparecen. Debajo, aparece la carta en turno cuyo nombre tendrás que escribir. Al centro, está la planilla que te ha sido generada para esta partida, compuesta por 16 casillas.
								<br><br>
								Cuando comienza el juego, se presentará una carta, de la cual tendrás que escribir su nombre. Una vez que comience el juego, éste no puede detenerse, como sucede en el tradicional. Para comenzar, Deberás dar click sobre la baraja resaltada.
								<br><br>
								Con esto juego pondrás a prueba tu velocidad, precisión y conocimientos gramaticales. Primero deberás buscar si la carta en turno se encuentra en la planilla. Ya que la encuentres, deberás dar click sobre la imagen de la casilla para que la zona en la que deberás escribir se active. Sé cuidadoso al dar click, pues al darlo en la equivocada tendrás un error, y si acumulas suficientes terminará la partida como una derrota. Una vez que has dado cilck, escribe rápidamente, pero también de manera correcta, la palabra que se te solicita (o la forma de la palabra si estás en otra modalidad). Es necesario escribir con acentos cuando sea necesario. No olvides terminar con enter para “entregar” tu respuesta. Hasta el momento que pulses enter, podrás corregir alguna equivocación en la escritura. Marca todas las casillas necesarias (las 16 para partida completa, conectar 4 en partida rápida) para obtener los requisitos para ganar la partida. No olvides dar click sobre el botón de Lotería cuando se cumplan las condiciones para ganar, pues si empieza la siguiente carta y no has “gritado” lotería, pierdes; así como también si lo haces sin haber cumplido con las condiciones. 
								<br><br>
								Si la carta no aparece en tu planilla, puedes aprovechar la oportunidad para crear cadenas que servirán para dar bonificaciones a tus puntos. Para contestarla, deberás dar click sobre la carta en turno misma y escribir como en los otros casos. Acumula puntos, cadenas de puntos y gana comodines que podrás usar para rescatar una casilla en la que te hayas equivocado. Si te equivocas al contestar una de estas cartas, el error no contará para los que terminarán la partida, sólo romperán las cadenas que hayas logrado conseguir.
								<br><br>
								Al terminar la partida podrás mirar en la hoja de resultados la puntuación obtenida, así como los trofeos que hayas logrado. Diviértete, explora y aprende con esta herramienta que ha sido desarrollada para ti.
							</li>
						</ul>
				</div>

	
				<div id="diminutivos-txt" class="cajas-txt-lecciones twelve columns">
					<h3>Diminutivos</h3>
					<p class="plecciones">
						En la modalidad “Diminutivos”, practicarás el proceso de flexión. Llamamos flexión al proceso de agregar una terminación diferente a una palabra para crear variaciones de la misma. Ejemplos del proceso de flexión son las conjugaciones de los verbos, las marcas de género y número y la creación de aumentativos, diminutivos y despectivos. Los criterios para flexionar de manera correcta una palabra son relativamente consistentes, por lo que al practicar su uso a partir de la formación de diminutivos en el juego, se espera que mejores tu competencia lingüística.
						<br><br>
						Por lo general, el diminutivo sólo se utiliza para modificar sustantivos y adjetivos: “caballito”, “pequeñito”. El uso más común es para describir el tamaño de aquello a lo que nos referimos. Al decir “zapatito”, se entiende que se habla de un zapato pequeño. Sin embargo, también podemos expresar distintas relaciones afectivas con el objetivo y, en ciertos contextos, establecer una postura despectiva. Cuando decimos “zapatito”, “zapatillo”, “zapatín”, “zapatuco” o “zapatete”, establecemos también nuestra postura frente a aquello que decimos.
						<br><br>
						En el juego “Lotería”, deberás crear diminutivos de manera correcta cada vez que respondas el nombre de una carta. Si apareciera la carta “El ángel”, deberás responder “angelito”. Además de la terminación ito/ita, podrás crear los diminutivos con las otras terminaciones comunes: ico/ica, illo/illa, ete/eta, ín/ina, uco/uca. Prueba experimentar con las variantes aceptadas en tu práctica del proceso de flexión a partir de los diminutivos.						
					</p>
				</div>
	
				<div id="derivaciones-txt" class="cajas-txt-lecciones twelve columns">
					<h3>Adjetivos</h3>
					<p class="plecciones">
						En la modalidad “Adjetivos”, practicarás el proceso de derivación. Llamamos derivación al proceso de agregar al principio o final de la palabra nuevas partículas para la formación de otras palabras. En este proceso cambiamos el significado de la palabra original, ya sea modificando la clase de la palabra (sustantivo, adjetivo, verbo, etcétera), su función, relación o estado con respecto a la original (leche, lechero, lechería). Este proceso es del que más se sirve la lengua española para la creación de nuevas palabras.
						<br><br>
						Para efectos del juego “Lotería” en su modalidad “Adjetivos”, deberás teclear un adjetivo derivado a partir del nombre de la carta. Si la carta fuera “El ángel”, deberás escribir “angelical”. El adjetivo se formó agregando el sufijo -al a la palabra “ángel”. Todas las palabras base son sustantivos, por lo que cuentas con los sufijos -al, -il, -oso, -ano, -esco, -ario, -ino, -ico. El auténtico reto de esta modalidad consiste en derivar adjetivos para palabras cuya norma es no contar con alguno. De entre las cartas incluidas en el juego, como “dama”, “catrín” o “sirena”, no se considera que tengan una forma adjetiva. Sin embargo, la gramática de nuestra lengua, en su elasticidad, nos provee de maneras para formar un adjetivo nuevo cada vez que fuera menester. Prueba derivar los diferentes adjetivos que seas capaz de imaginar. Experimenta, explora y conviértete en un maestro en la derivación de nuevas palabras.
					</p>
				</div>
				
				<div id="sinonimos-txt" class="cajas-txt-lecciones twelve columns">
					<h3>Sinónimos</h3>
					<p class="plecciones">
						Cuando decimos sinónimos, por lo general nos referimos a palabras cuyo significado es similar o, por lo menos, bastante cercano.
						Presentado de esta manera, la noción de sinonimia dentro del total de palabras que integran nuestra lengua parece sencilla, aunque su definición y delimitación
						presentan ciertas dificultades teóricas insoslayables.							
						El total de palabras que presentan un grado de sinonimia absoluto es muy limitado.
						De entre el resto de los considerados “sinónimos” existen matices, variantes y gradaciones de significados que enriquecen nuestra expresión;							 							
						de ahí la importancia de considerar las diferencias de significado cuidadosamente cuando pretendamos utilizarlos para sustituir otras palabras en nuestra expresión oral y escrita.
						<br><br> 
					
						Para efectos del juego “Lotería” y su modalidad “Sinónimos”, se actuará sobre la noción de sinónimos descrita arriba y también la de familias de palabras, o grupos cuyos significados están estrechamente vinculados.
						El objetivo, finalmente, es explorar las diferencias y posibilidades que nos brinda nuestra lengua. En el juego, cuando aparezca una carta, en lugar de teclear su nombre, deberás escribir el de un sinónimo.
						Considera las distintas acepciones de la palabra, pues se tomaron en consideración para las posibles respuestas; éstas son tomadas de diferentes diccionarios de sinónimos y antónimos, así como de mexicanismos y de coloquialismos.
						Experimenta y prueba con los distintos sinónimos que seas capaz de imaginar.							 				
					</p>
				</div>

				<div id="creditos-txt" class="cajas-txt-lecciones twelve columns">
					<h3>Créditos</h3>
					<p class="plecciones">
						Aquí irán los créditos							 				
					</p>
				</div>				

				<div id="paginaLegal-txt" class="cajas-txt-lecciones twelve columns">
					<h3>Página legal</h3>
					<p class="plecciones">
						Aquí irá la página legal							 				
					</p>
				</div>				
			</div>  <!--cajaLecciones-->
		</div> <!--caja hija-->
		</div> <!-- caja madre -->
	</body>
</html>