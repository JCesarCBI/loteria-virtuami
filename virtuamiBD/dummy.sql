#Dummy de avatares
INSERT loteriadb.avatar (avatar) VALUES ('/media/img/avatar/avatar_default.png');
INSERT loteriadb.avatar (avatar) VALUES ('/media/img/avatar/avatarA.png');
INSERT loteriadb.avatar (avatar) VALUES ('/media/img/avatar/avatarB.png');
INSERT loteriadb.avatar (avatar) VALUES ('/media/img/avatar/avatarC.png');
INSERT loteriadb.avatar (avatar) VALUES ('/media/img/avatar/avatarD.png');
INSERT loteriadb.avatar (avatar) VALUES ('/media/img/avatar/avatarE.png');
INSERT loteriadb.avatar (avatar) VALUES ('/media/img/avatar/avatarF.png');
INSERT loteriadb.avatar (avatar) VALUES ('/media/img/avatar/avatarG.png');
INSERT loteriadb.avatar (avatar) VALUES ('/media/img/avatar/avatarH.png');
INSERT loteriadb.avatar (avatar) VALUES ('/media/img/avatar/avatarI.png');
INSERT loteriadb.avatar (avatar) VALUES ('/media/img/avatar/avatarJ.png');

#Simulación de creación de Usuarios
INSERT INTO loteriadb.usuario (nombreUsr, nombre, aPaterno, aMaterno, sexo, edad, correo, contrasena, idTipoUsuario, idDivision, idGradoPosgrado, idGradoActivo, idAvatar, cargo, area, codigoActivacion, estatus) VALUES ('anjudark89','Flor Nallely', 'Flores', 'Vicente', 'M', 22, 'anjudark@xanum.uam.mx', '123456', 1, 2, null, 1, 6, null, null, '51f824440a000', 1);
INSERT INTO loteriadb.usuario (nombreUsr, nombre, aPaterno, aMaterno, sexo, edad, correo, contrasena, idTipoUsuario, idDivision, idGradoPosgrado, idGradoActivo, idAvatar, cargo, area, codigoActivacion, estatus) VALUES ('luisa.207310034','Luisa Maria', 'Gomez', 'Leyva', 'M', 23, 'luisa.207310034@xanum.uam.mx', '123456', 3, 2, null, 1, 5, null, null, '51f82452e4085', 1);
INSERT INTO loteriadb.usuario (nombreUsr, nombre, aPaterno, aMaterno, sexo, edad, correo, contrasena, idTipoUsuario, idDivision, idGradoPosgrado, idGradoActivo, idAvatar, cargo, area, codigoActivacion, estatus) VALUES ('jcesarcbi','Julio Cesar', 'Padilla', 'Dorantes', 'H', 28, 'jcesarcbi@xanum.uam.mx', '123456', 2, 2, null, 1, 9, null, null, '51f8245ed0b24', 1);
INSERT INTO loteriadb.usuario (nombreUsr, nombre, aPaterno, aMaterno, sexo, edad, correo, contrasena, idTipoUsuario, idDivision, idGradoPosgrado, idGradoActivo, idAvatar, cargo, area, codigoActivacion, estatus) VALUES ('guillermotorres','Guillermo', 'Torres', 'Lopez', 'H', 29, 'guillermotorres@xanum.uam.mx', '123456', 2, 2, null, 1, 7, null, null, '51f82467002fe', 1);
INSERT INTO loteriadb.usuario (nombreUsr, nombre, aPaterno, aMaterno, sexo, edad, correo, contrasena, idTipoUsuario, idDivision, idGradoPosgrado, idGradoActivo, idAvatar, cargo, area, codigoActivacion, estatus) VALUES ('jezrelmx1304','Efren', 'Valdez', 'Jasso', 'H', 30, 'jezrelmx1304@xanum.uam.mx', '123456', 4, 2, null, 1, 10, null, null, '51f82470ceef0', 1);
INSERT INTO loteriadb.usuario (nombreUsr, nombre, aPaterno, aMaterno, sexo, edad, correo, contrasena, idTipoUsuario, idDivision, idGradoPosgrado, idGradoActivo, idAvatar, cargo, area, codigoActivacion, estatus) VALUES ('virtu@mi','Coordinación', 'Educación', 'Virtual', 'H', 30, 'ludico@virtuami.izt.uam.mx', '123456', 4, 2, null, 1, 10, null, null, '5220a414ab0b3', 1);

#Simulación de creación de Jugadores
INSERT INTO loteriadb.jugador (idUsr, idJuego, scoreTotal) VALUES (1,1,6800);
INSERT INTO loteriadb.jugador (idUsr, idJuego, scoreTotal) VALUES (2,1,6200);
INSERT INTO loteriadb.jugador (idUsr, idJuego, scoreTotal) VALUES (3,1,8100);
INSERT INTO loteriadb.jugador (idUsr, idJuego, scoreTotal) VALUES (4,1,14900);
INSERT INTO loteriadb.jugador (idUsr, idJuego, scoreTotal) VALUES (5,1,13600);
INSERT INTO loteriadb.jugador (idUsr, idJuego, scoreTotal) VALUES (6,1,0);

#Asignación de juegos al Usuario 1
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (1,1,1,1,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (1,1,1,1,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (1,1,2,1,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (2,3,2,1,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (2,3,5,1,1);

#Asignación de juegos al Usuario 2
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (2,1,1,2,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (2,1,2,2,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (2,1,1,2,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (1,3,5,2,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (1,3,5,2,1);

#Asignación de juegos al Usuario 3
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (1,3,1,3,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (1,3,2,3,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (1,3,2,3,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (1,3,3,3,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (2,1,1,3,1);

#Asignación de juegos al Usuario 4
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (2,1,3,4,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (2,1,1,4,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (2,1,2,4,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (2,1,3,4,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (1,3,3,4,1);

#Asignación de juegos al Usuario 5
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (2,3,1,5,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (2,1,1,5,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (2,3,1,5,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (2,1,5,5,1);
INSERT INTO loteriadb.score (idPartida, idNivel, idModalidad, idUsr, idJuego) VALUES (2,3,5,5,1);

#Asignación de resultados de los juegos del Usuario 1
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (1100,'2013-06-01', 1, 1);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (1200,'2013-06-01', 1, 2);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (3000,'2013-06-01', 2, 3);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (0,'2013-06-01', 3, 4);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (1500,'2013-06-01', 1, 5);

#Asignación de resultados de los juegos del Usuario 2
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (2300,'2013-06-01', 2, 6);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (1800,'2013-06-01', 1, 7);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (0,'2013-06-01', 3, 8);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (2100,'2013-06-01', 2, 9);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (0,'2013-06-01', 3, 10);

#Asignación de resultados de los juegos del Usuario 3
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (3200,'2013-06-01', 2, 11);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (1200,'2013-06-01', 1, 12);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (0,'2013-06-01', 3, 13);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (1100,'2013-06-01', 1, 14);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (2600,'2013-06-01', 2, 15);

#Asignación de resultados de los juegos del Usuario 4
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (1900,'2013-06-01', 1, 16);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (2500,'2013-06-01', 2, 17);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (4000,'2013-06-01', 2, 18);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (1500,'2013-06-01', 1, 19);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (5000,'2013-06-01', 2, 20);

#Asignación de resultados de los juegos del Usuario 5
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (3200,'2013-06-01', 2, 21);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (4400,'2013-06-01', 2, 22);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (0,'2013-06-01', 3, 23);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (0,'2013-06-01', 3, 24);
INSERT INTO loteriadb.record (record, fecha, idEstadoPartida, idScore) VALUES (6000,'2013-06-01', 2, 25);

#Asignación de trofeos a los Usuarios
INSERT INTO vitrina (idTrofeo, idUsr, idJuego) VALUES (1,1,1);
INSERT INTO vitrina (idTrofeo, idUsr, idJuego) VALUES (12,1,1);
INSERT INTO vitrina (idTrofeo, idUsr, idJuego) VALUES (8,1,1);
INSERT INTO vitrina (idTrofeo, idUsr, idJuego) VALUES (10,2,1);
INSERT INTO vitrina (idTrofeo, idUsr, idJuego) VALUES (1,2,1);
INSERT INTO vitrina (idTrofeo, idUsr, idJuego) VALUES (20,3,1);
INSERT INTO vitrina (idTrofeo, idUsr, idJuego) VALUES (21,3,1);
INSERT INTO vitrina (idTrofeo, idUsr, idJuego) VALUES (4,3,1);
INSERT INTO vitrina (idTrofeo, idUsr, idJuego) VALUES (1,4,1);
INSERT INTO vitrina (idTrofeo, idUsr, idJuego) VALUES (2,4,1);
INSERT INTO vitrina (idTrofeo, idUsr, idJuego) VALUES (3,4,1);
INSERT INTO vitrina (idTrofeo, idUsr, idJuego) VALUES (22,4,1);
INSERT INTO vitrina (idTrofeo, idUsr, idJuego) VALUES (18,4,1);
INSERT INTO vitrina (idTrofeo, idUsr, idJuego) VALUES (1,5,1);
INSERT INTO vitrina (idTrofeo, idUsr, idJuego) VALUES (9,5,1);

#Asignación de galeria al Usuario 1
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (1,1,2);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (1,1,4);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (1,1,6);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (1,1,8);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (1,1,10);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (1,1,12);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (1,1,14);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (1,1,16);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (1,1,18);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (1,1,20);

#Asignación de galeria al Usuario 2
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (2,1,3);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (2,1,5);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (2,1,7);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (2,1,9);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (2,1,11);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (2,1,13);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (2,1,15);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (2,1,17);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (2,1,19);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (2,1,21);

#Asignación de galeria al Usuario 3
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (3,1,22);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (3,1,24);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (3,1,26);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (3,1,28);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (3,1,30);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (3,1,32);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (3,1,34);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (3,1,36);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (3,1,38);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (3,1,40);

#Asignación de galeria al Usuario 4
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (4,1,23);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (4,1,25);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (4,1,27);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (4,1,29);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (4,1,31);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (4,1,33);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (4,1,35);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (4,1,37);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (4,1,39);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (4,1,41);

#Asignación de galeria al Usuario 5
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (5,1,1);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (5,1,5);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (5,1,10);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (5,1,15);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (5,1,20);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (5,1,25);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (5,1,30);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (5,1,35);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (5,1,40);
INSERT loteriadb.galeria (idUsr, idJuego, idCarta) VALUES (5,1,45);