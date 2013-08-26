#Inserción de estados de partida
INSERT INTO loteriadb.estPartida (estado) VALUES ('ganado');
INSERT INTO loteriadb.estPartida (estado) VALUES ('perfecto');
INSERT INTO loteriadb.estPartida (estado) VALUES ('perdido');
INSERT INTO loteriadb.estPartida (estado) VALUES ('abandonado');

#Insersión de juego
INSERT INTO loteriadb.juego (nombreJuego) VALUES ('lotería');

#Insersión de tipo de partidas
INSERT INTO loteriadb.partida (partida) VALUES ('completa');
INSERT INTO loteriadb.partida (partida) VALUES ('rápida');

#Insersión de niveles
INSERT INTO loteriadb.nivel (nivel) VALUES ('básico');
INSERT INTO loteriadb.nivel (nivel) VALUES ('intermedio');
INSERT INTO loteriadb.nivel (nivel) VALUES ('avanzado');
INSERT INTO loteriadb.nivel (nivel) VALUES ('experto');

#Insersión de modalidades
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('juego libre');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('diminutivos');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('derivación adjetivos');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('derivación verbos');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('sinónimos');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('género');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('plurales');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('aumentativos');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('peyorativos');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('derivación sustantivos');
INSERT INTO loteriadb.modalidad (modalidad) VALUES ('antónimos');

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
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Gigante en el recreo','Alcancé 1000 puntos en una partida de la modalidad Juego Libre en el nivel Básico','Vine, vi, conquisté',1);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Con los ojos cerrados','Alcancé 3500 puntos en una partida de la modalidad Juego Libre en el nivel Avanzado','Y no fue casualidad',1);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Chiquito pero...','Alcancé 7500 puntos en una partida de la modalidad Diminutivos','Son aquellas pequeñas cosas',1);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('De colores','Alcancé 15000 puntos en una partida de la modalidad Adjetivos','Los ojos se me fueron tras una morena que pasó',1);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Triunfo al recuerdo','Alcancé 21000 puntos en una partida de la modalidad Sinónimos','La memoria disminuye si no se la ejercita',1);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Precisión quirúrgica','Completé una partida sin errores','Conocer es resolver',1);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Aprendiz de la lotería','Acumulé 10 partidas ganadas','Así que de esto se trata',2);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Veterano de la lotería','Acumulé 25 partidas ganadas','Lo he visto todo',2);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Experto de la lotería','Acumulé 50 partidas ganadas','Bodas de oro',2);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Maestro de la lotería','Acumulé 75 partidas ganadas','Ningún misterio se me escapa',2);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Lotería Wizard','Acumulé 100 partidas ganadas','El primero de los epígonos',2);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Tanteando las aguas', 'Gané una partida en la modalidad Juego Libre en nivel Básico', '¿Qué gané?',3);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Marinero de agua dulce','Gané una partida en la modalidad Juego Libre en nivel Avanzado','El día precedente enseña al que sigue',3);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Marinero curtido','Gané una partida en la modalidad Diminutivos','Se hace camino en la mar',3);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Buzo','Gané una partida en la modalidad Adjetivos','Quién fuera el batiscafo de tu abismo',3);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Capitán','Gané una partida en la modalidad Sinónimos','Yo no soy marinero',3);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Lobo de mar','Gané una partida en todas las modalidades','Antes de recorrer mi camino yo era mi camino',3);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('O fortuna','Gané una partida con la bonificación máxima por suerte','La suerte juega con cartas sin marcar',3);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('El corazón de las tinieblas','','Aquél que no será nombrado',4);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Ph''nglui mglw''nafh Cthulhu R''lyeh wgah''nagl fhtagn','','En su casa de R''lyeh el difunto Cthulhu aguarda soñando',4);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Coleccionista','Acumulé 18 cartas en mi galería','Nadie tiene lo que no se merece',5);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Galerista','Acumulé 33 cartas en mi galería','Hay afectos de tan delicada honestidad',5);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Museógrafo','Acumulé 54 cartas en mi galería','El lenguaje no es el aya sino la madre del pensamiento',5);
INSERT INTO loteriadb.trofeo (nombre, condicion, descripcion, idTipoTrofeo) VALUES ('Leyenda','He obtenido todos los trofeos disponibles','Vine, vi, conquisté',5);
