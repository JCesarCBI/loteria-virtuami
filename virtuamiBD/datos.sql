#Inserción de estados de partida
INSERT INTO loteriadb.estPartida (estado) VALUES ('Ganado');
INSERT INTO loteriadb.estPartida (estado) VALUES ('Perfecto');
INSERT INTO loteriadb.estPartida (estado) VALUES ('Perdido');
INSERT INTO loteriadb.estPartida (estado) VALUES ('Abandonado');

#Insersión de juego
INSERT INTO loteriadb.juego (nombreJuego) VALUES ('Lotería');

#Insersión de tipo de partidas
INSERT INTO loteriadb.partida (partida) VALUES ('Completa');
INSERT INTO loteriadb.partida (partida) VALUES ('Rápida');

#Insersión de niveles
INSERT INTO loteriadb.nivel (nivel) VALUES ('Básico');
INSERT INTO loteriadb.nivel (nivel) VALUES ('Intermedio');
INSERT INTO loteriadb.nivel (nivel) VALUES ('Avanzado');
INSERT INTO loteriadb.nivel (nivel) VALUES ('Experto');

#Insersión de modalidades
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('Juego libre');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('Diminutivos');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('Adjetivos');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('Verbos');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('Sinónimos');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('Género');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('Plurales');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('Aumentativos');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('Peyorativos');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('Sustantivos');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('Antónimos');

#Insersión de divisiones
INSERT INTO loteriadb.division (division, iniciales) VALUES ('Ciencias y Artes para el Diseño','CAD');
INSERT INTO loteriadb.division (division, iniciales) VALUES ('Ciencias Básicas e Ingeniería','CBI');
INSERT INTO loteriadb.division (division, iniciales) VALUES ('Ciencias Biológicas y de la Salud','CBS');
INSERT INTO loteriadb.division (division, iniciales) VALUES ('Ciencias de la Comunicación y Diseño','CCD');
INSERT INTO loteriadb.division (division, iniciales) VALUES ('Ciencias Naturales e Ingeniería','CNI');
INSERT INTO loteriadb.division (division, iniciales) VALUES ('Ciencias Sociales y Humanidades','CSH');

#Insersión de tipo de usuarios
INSERT INTO loteriadb.tipoUsuario (tipoUsr) VALUES ('Alumno');
INSERT INTO loteriadb.tipoUsuario (tipoUsr) VALUES ('Profesor');
INSERT INTO loteriadb.tipoUsuario (tipoUsr) VALUES ('Administrativo');
INSERT INTO loteriadb.tipoUsuario (tipoUsr) VALUES ('Otro');

#Insersión de grado posgrado
INSERT INTO loteriadb.gradoPosgrado (gradoPosgrado) VALUES ('Doctorado');
INSERT INTO loteriadb.gradoPosgrado (gradoPosgrado) VALUES ('Especialidad');
INSERT INTO loteriadb.gradoPosgrado (gradoPosgrado) VALUES ('Maestría');

#Insersión de grado activo
INSERT INTO loteriadb.gradoActivo (gradoActivo) VALUES ('Licenciatura');
INSERT INTO loteriadb.gradoActivo (gradoActivo) VALUES ('Posgrado');

#Insersión de tipo de trofeo
INSERT INTO loteriadb.tipoTrofeo (tipoTrofeo) VALUES ('Habilidad');
INSERT INTO loteriadb.tipoTrofeo (tipoTrofeo) VALUES ('Constancia');
INSERT INTO loteriadb.tipoTrofeo (tipoTrofeo) VALUES ('Eventos');
INSERT INTO loteriadb.tipoTrofeo (tipoTrofeo) VALUES ('Easter Eggs');
INSERT INTO loteriadb.tipoTrofeo (tipoTrofeo) VALUES ('Término');

#Insersión de trofeos
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Gigante en el recreo','/media/img/trofeo/gn_gigante.png','/media/img/trofeo/icn_gigante.png','Alcancé 1000 puntos en una partida de la modalidad Juego Libre en el nivel Básico','Vine, vi, conquisté',1);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Con los ojos cerrados','/media/img/trofeo/gn_ojoscerrados.png','/media/img/trofeo/icn_ojoscerrados.png','Alcancé 3500 puntos en una partida de la modalidad Juego Libre en el nivel Avanzado','Y no fue casualidad',1);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Chiquito pero...','/media/img/trofeo/gn_chiquito.png','/media/img/trofeo/icn_chiquito.png','Alcancé 7500 puntos en una partida de la modalidad Diminutivos','Son aquellas pequeñas cosas',1);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('De colores','/media/img/trofeo/gn_decolores.png','/media/img/trofeo/icn_decolores.png','Alcancé 15000 puntos en una partida de la modalidad Adjetivos','Los ojos se me fueron tras una morena que pasó',1);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Triunfo al recuerdo','/media/img/trofeo/gn_recuerdo.png','/media/img/trofeo/icn_recuerdo.png','Alcancé 21000 puntos en una partida de la modalidad Sinónimos','La memoria disminuye si no se la ejercita',1);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Precisión quirúrgica','/media/img/trofeo/gn_precision.png','/media/img/trofeo/icn_precision.png','Completé una partida sin errores','Conocer es resolver',1);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Aprendiz de la lotería','/media/img/trofeo/gn_aprendiz.png','/media/img/trofeo/icn_aprendiz.png','Acumulé 10 partidas ganadas','Así que de esto se trata',2);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Veterano de la lotería','/media/img/trofeo/gn_veterano.png','/media/img/trofeo/icn_veterano.png','Acumulé 25 partidas ganadas','Lo he visto todo',2);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Experto de la lotería','/media/img/trofeo/gn_experto.png','/media/img/trofeo/icn_experto.png','Acumulé 50 partidas ganadas','Bodas de oro',2);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Maestro de la lotería','/media/img/trofeo/gn_maestro.png','/media/img/trofeo/icn_maestro.png','Acumulé 75 partidas ganadas','Ningún misterio se me escapa',2);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Lotería Wizard','/media/img/trofeo/gn_hechizero.png','/media/img/trofeo/icn_hechizero.png','Acumulé 100 partidas ganadas','El primero de los epígonos',2);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Tanteando las aguas','/media/img/trofeo/gn_tanteandolasaguas.png','/media/img/trofeo/icn_tanteandolasaguas.png','Gané una partida en la modalidad Juego Libre en nivel Básico', '¿Qué gané?',3);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Marinero de agua dulce','/media/img/trofeo/gn_marinerodeaguadulce.png','/media/img/trofeo/icn_marinerodeaguadulce.png','Gané una partida en la modalidad Juego Libre en nivel Avanzado','El día precedente enseña al que sigue',3);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Marinero curtido','/media/img/trofeo/gn_marinerocurtido.png','/media/img/trofeo/icn_marinerocurtido.png','Gané una partida en la modalidad Diminutivos','Se hace camino en la mar',3);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Buzo','/media/img/trofeo/gn_buzo.png','/media/img/trofeo/icn_buzo.png','Gané una partida en la modalidad Adjetivos','Quién fuera el batiscafo de tu abismo',3);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Capitán','/media/img/trofeo/gn_capitan.png','/media/img/trofeo/icn_capitan.png','Gané una partida en la modalidad Sinónimos','Yo no soy marinero',3);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Lobo de mar','/media/img/trofeo/gn_lobodemar.png','/media/img/trofeo/icn_lobodemar.png','Gané una partida en todas las modalidades','Antes de recorrer mi camino yo era mi camino',3);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('O fortuna','/media/img/trofeo/gn_ofortuna.png','/media/img/trofeo/icn_ofortuna.png','Gané una partida con la bonificación máxima por suerte','La suerte juega con cartas sin marcar',3);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('El corazón de las tinieblas','/media/img/trofeo/gn_corazon.png','/media/img/trofeo/icn_corazon.png','','Aquél que no será nombrado',4);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Ph''nglui mglw''nafh Cthulhu R''lyeh wgah''nagl fhtagn','/media/img/trofeo/gn_cthulhu.png','/media/img/trofeo/icn_cthulhu.png','','En su casa de R''lyeh el difunto Cthulhu aguarda soñando',4);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Coleccionista','/media/img/trofeo/gn_coleccionista.png','/media/img/trofeo/icn_coleccionista.png','Acumulé 18 cartas en mi galería','Nadie tiene lo que no se merece',5);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Galerista','/media/img/trofeo/gn_galerista.png','/media/img/trofeo/icn_galerista.png','Acumulé 33 cartas en mi galería','Hay afectos de tan delicada honestidad',5);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Museógrafo','/media/img/trofeo/gn_museografo.png','/media/img/trofeo/icn_museografo.png','Acumulé 54 cartas en mi galería','El lenguaje no es el aya sino la madre del pensamiento',5);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Leyenda','/media/img/trofeo/gn_leyenda.png','/media/img/trofeo/icn_leyenda.png','He obtenido todos los trofeos disponibles','Vine, vi, conquisté',5);
INSERT INTO loteriadb.trofeo (nombre, imagen, imagenIcon, condicion, descripcion, idTipoTrofeo) VALUES ('Carbón','/media/img/avatar/av_us_carbon.jpg','/media/img/avatar/av_ic_carbon.jpg','','',1);
