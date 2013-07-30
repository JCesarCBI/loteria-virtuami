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

#Simulación de creación de Jugadores
INSERT INTO loteriadb.jugador (idUsr, idJuego, scoreTotal) VALUES (1,1,6800);
INSERT INTO loteriadb.jugador (idUsr, idJuego, scoreTotal) VALUES (2,1,6200);
INSERT INTO loteriadb.jugador (idUsr, idJuego, scoreTotal) VALUES (3,1,8100);
INSERT INTO loteriadb.jugador (idUsr, idJuego, scoreTotal) VALUES (4,1,14900);
INSERT INTO loteriadb.jugador (idUsr, idJuego, scoreTotal) VALUES (5,1,13600);

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

#Dummy de imagenes de trofeos
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo01.png' WHERE idTrofeo = '1';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo02.png' WHERE idTrofeo = '2';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo03.png' WHERE idTrofeo = '3';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo04.png' WHERE idTrofeo = '4';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo05.png' WHERE idTrofeo = '5';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo06.png' WHERE idTrofeo = '6';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo07.png' WHERE idTrofeo = '7';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo08.png' WHERE idTrofeo = '8';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo09.png' WHERE idTrofeo = '9';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo10.png' WHERE idTrofeo = '10';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo11.png' WHERE idTrofeo = '11';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo12.png' WHERE idTrofeo = '12';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo13.png' WHERE idTrofeo = '13';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo14.png' WHERE idTrofeo = '14';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo15.png' WHERE idTrofeo = '15';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo16.png' WHERE idTrofeo = '16';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo17.png' WHERE idTrofeo = '17';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo18.png' WHERE idTrofeo = '18';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo19.png' WHERE idTrofeo = '19';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo20.png' WHERE idTrofeo = '20';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo21.png' WHERE idTrofeo = '21';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo22.png' WHERE idTrofeo = '22';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo23.png' WHERE idTrofeo = '23';
UPDATE loteriadb.trofeo SET imagen = '/media/img/trofeo/trofeo24.png' WHERE idTrofeo = '24';

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

#Dummy de frases para las cartas
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 01 AAAAA', 'Carta 01 audio AAAAA',1);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 01 BBBBB', 'Carta 01 audio BBBBB',1);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 01 CCCCC', 'Carta 01 audio CCCCC',1);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 02 AAAAA', 'Carta 02 audio AAAAA',2);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 02 BBBBB', 'Carta 02 audio BBBBB',2);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 02 CCCCC', 'Carta 02 audio CCCCC',2);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 03 AAAAA', 'Carta 03 audio AAAAA',3);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 03 BBBBB', 'Carta 03 audio BBBBB',3);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 03 CCCCC', 'Carta 03 audio CCCCC',3);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 04 AAAAA', 'Carta 04 audio AAAAA',4);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 04 BBBBB', 'Carta 04 audio BBBBB',4);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 04 CCCCC', 'Carta 04 audio CCCCC',4);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 05 AAAAA', 'Carta 05 audio AAAAA',5);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 05 BBBBB', 'Carta 05 audio BBBBB',5);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 05 CCCCC', 'Carta 05 audio CCCCC',5);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 06 AAAAA', 'Carta 06 audio AAAAA',6);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 06 BBBBB', 'Carta 06 audio BBBBB',6);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 06 CCCCC', 'Carta 06 audio CCCCC',6);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 07 AAAAA', 'Carta 07 audio AAAAA',7);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 07 BBBBB', 'Carta 07 audio BBBBB',7);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 07 CCCCC', 'Carta 07 audio CCCCC',7);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 08 AAAAA', 'Carta 08 audio AAAAA',8);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 08 BBBBB', 'Carta 08 audio BBBBB',8);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 08 CCCCC', 'Carta 08 audio CCCCC',8);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 09 AAAAA', 'Carta 09 audio AAAAA',9);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 09 BBBBB', 'Carta 09 audio BBBBB',9);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 09 CCCCC', 'Carta 09 audio CCCCC',9);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 010 AAAAA', 'Carta 10 audio AAAAA',10);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 010 BBBBB', 'Carta 10 audio BBBBB',10);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 010 CCCCC', 'Carta 10 audio CCCCC',10);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 011 AAAAA', 'Carta 011 audio AAAAA',11);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 011 BBBBB', 'Carta 011 audio BBBBB',11);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 011 CCCCC', 'Carta 011 audio CCCCC',11);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 012 AAAAA', 'Carta 012 audio AAAAA',12);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 012 BBBBB', 'Carta 012 audio BBBBB',12);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 012 CCCCC', 'Carta 012 audio CCCCC',12);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 013 AAAAA', 'Carta 013 audio AAAAA',13);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 013 BBBBB', 'Carta 013 audio BBBBB',13);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 013 CCCCC', 'Carta 013 audio CCCCC',13);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 014 AAAAA', 'Carta 014 audio AAAAA',14);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 014 BBBBB', 'Carta 014 audio BBBBB',14);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 014 CCCCC', 'Carta 014 audio CCCCC',14);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 015 AAAAA', 'Carta 015 audio AAAAA',15);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 015 BBBBB', 'Carta 015 audio BBBBB',15);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 015 CCCCC', 'Carta 015 audio CCCCC',15);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 016 AAAAA', 'Carta 016 audio AAAAA',16);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 016 BBBBB', 'Carta 016 audio BBBBB',16);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 016 CCCCC', 'Carta 016 audio CCCCC',16);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 017 AAAAA', 'Carta 017 audio AAAAA',17);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 017 BBBBB', 'Carta 017 audio BBBBB',17);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 017 CCCCC', 'Carta 017 audio CCCCC',17);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 018 AAAAA', 'Carta 018 audio AAAAA',18);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 018 BBBBB', 'Carta 018 audio BBBBB',18);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 018 CCCCC', 'Carta 018 audio CCCCC',18);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 019 AAAAA', 'Carta 019 audio AAAAA',19);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 019 BBBBB', 'Carta 019 audio BBBBB',19);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 019 CCCCC', 'Carta 019 audio CCCCC',19);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 020 AAAAA', 'Carta 20 audio AAAAA',20);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 020 BBBBB', 'Carta 20 audio BBBBB',20);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 020 CCCCC', 'Carta 20 audio CCCCC',20);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 021 AAAAA', 'Carta 021 audio AAAAA',21);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 021 BBBBB', 'Carta 021 audio BBBBB',21);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 021 CCCCC', 'Carta 021 audio CCCCC',21);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 022 AAAAA', 'Carta 022 audio AAAAA',22);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 022 BBBBB', 'Carta 022 audio BBBBB',22);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 022 CCCCC', 'Carta 022 audio CCCCC',22);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 023 AAAAA', 'Carta 023 audio AAAAA',23);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 023 BBBBB', 'Carta 023 audio BBBBB',23);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 023 CCCCC', 'Carta 023 audio CCCCC',23);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 024 AAAAA', 'Carta 024 audio AAAAA',24);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 024 BBBBB', 'Carta 024 audio BBBBB',24);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 024 CCCCC', 'Carta 024 audio CCCCC',24);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 025 AAAAA', 'Carta 025 audio AAAAA',25);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 025 BBBBB', 'Carta 025 audio BBBBB',25);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 025 CCCCC', 'Carta 025 audio CCCCC',25);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 026 AAAAA', 'Carta 026 audio AAAAA',26);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 026 BBBBB', 'Carta 026 audio BBBBB',26);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 026 CCCCC', 'Carta 026 audio CCCCC',26);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 027 AAAAA', 'Carta 027 audio AAAAA',27);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 027 BBBBB', 'Carta 027 audio BBBBB',27);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 027 CCCCC', 'Carta 027 audio CCCCC',27);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 028 AAAAA', 'Carta 028 audio AAAAA',28);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 028 BBBBB', 'Carta 028 audio BBBBB',28);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 028 CCCCC', 'Carta 028 audio CCCCC',28);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 029 AAAAA', 'Carta 029 audio AAAAA',29);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 029 BBBBB', 'Carta 029 audio BBBBB',29);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 029 CCCCC', 'Carta 029 audio CCCCC',29);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 030 AAAAA', 'Carta 30 audio AAAAA',30);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 030 BBBBB', 'Carta 30 audio BBBBB',30);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 030 CCCCC', 'Carta 30 audio CCCCC',30);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 031 AAAAA', 'Carta 031 audio AAAAA',31);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 031 BBBBB', 'Carta 031 audio BBBBB',31);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 031 CCCCC', 'Carta 031 audio CCCCC',31);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 032 AAAAA', 'Carta 032 audio AAAAA',32);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 032 BBBBB', 'Carta 032 audio BBBBB',32);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 032 CCCCC', 'Carta 032 audio CCCCC',32);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 033 AAAAA', 'Carta 033 audio AAAAA',33);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 033 BBBBB', 'Carta 033 audio BBBBB',33);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 033 CCCCC', 'Carta 033 audio CCCCC',33);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 034 AAAAA', 'Carta 034 audio AAAAA',34);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 034 BBBBB', 'Carta 034 audio BBBBB',34);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 034 CCCCC', 'Carta 034 audio CCCCC',34);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 035 AAAAA', 'Carta 035 audio AAAAA',35);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 035 BBBBB', 'Carta 035 audio BBBBB',35);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 035 CCCCC', 'Carta 035 audio CCCCC',35);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 036 AAAAA', 'Carta 036 audio AAAAA',36);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 036 BBBBB', 'Carta 036 audio BBBBB',36);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 036 CCCCC', 'Carta 036 audio CCCCC',36);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 037 AAAAA', 'Carta 037 audio AAAAA',37);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 037 BBBBB', 'Carta 037 audio BBBBB',37);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 037 CCCCC', 'Carta 037 audio CCCCC',37);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 038 AAAAA', 'Carta 038 audio AAAAA',38);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 038 BBBBB', 'Carta 038 audio BBBBB',38);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 038 CCCCC', 'Carta 038 audio CCCCC',38);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 039 AAAAA', 'Carta 039 audio AAAAA',39);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 039 BBBBB', 'Carta 039 audio BBBBB',39);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 039 CCCCC', 'Carta 039 audio CCCCC',39);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 040 AAAAA', 'Carta 40 audio AAAAA',40);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 040 BBBBB', 'Carta 40 audio BBBBB',40);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 040 CCCCC', 'Carta 40 audio CCCCC',40);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 041 AAAAA', 'Carta 041 audio AAAAA',41);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 041 BBBBB', 'Carta 041 audio BBBBB',41);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 041 CCCCC', 'Carta 041 audio CCCCC',41);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 042 AAAAA', 'Carta 042 audio AAAAA',42);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 042 BBBBB', 'Carta 042 audio BBBBB',42);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 042 CCCCC', 'Carta 042 audio CCCCC',42);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 043 AAAAA', 'Carta 043 audio AAAAA',43);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 043 BBBBB', 'Carta 043 audio BBBBB',43);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 043 CCCCC', 'Carta 043 audio CCCCC',43);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 044 AAAAA', 'Carta 044 audio AAAAA',44);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 044 BBBBB', 'Carta 044 audio BBBBB',44);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 044 CCCCC', 'Carta 044 audio CCCCC',44);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 045 AAAAA', 'Carta 045 audio AAAAA',45);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 045 BBBBB', 'Carta 045 audio BBBBB',45);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 045 CCCCC', 'Carta 045 audio CCCCC',45);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 046 AAAAA', 'Carta 046 audio AAAAA',46);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 046 BBBBB', 'Carta 046 audio BBBBB',46);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 046 CCCCC', 'Carta 046 audio CCCCC',46);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 047 AAAAA', 'Carta 047 audio AAAAA',47);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 047 BBBBB', 'Carta 047 audio BBBBB',47);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 047 CCCCC', 'Carta 047 audio CCCCC',47);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 048 AAAAA', 'Carta 048 audio AAAAA',48);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 048 BBBBB', 'Carta 048 audio BBBBB',48);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 048 CCCCC', 'Carta 048 audio CCCCC',48);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 049 AAAAA', 'Carta 049 audio AAAAA',49);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 049 BBBBB', 'Carta 049 audio BBBBB',49);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 049 CCCCC', 'Carta 049 audio CCCCC',49);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 050 AAAAA', 'Carta 050 audio AAAAA',50);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 050 BBBBB', 'Carta 050 audio BBBBB',50);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 050 CCCCC', 'Carta 050 audio CCCCC',50);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 051 AAAAA', 'Carta 051 audio AAAAA',51);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 051 BBBBB', 'Carta 051 audio BBBBB',51);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 051 CCCCC', 'Carta 051 audio CCCCC',51);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 052 AAAAA', 'Carta 052 audio AAAAA',52);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 052 BBBBB', 'Carta 052 audio BBBBB',52);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 052 CCCCC', 'Carta 052 audio CCCCC',52);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 053 AAAAA', 'Carta 053 audio AAAAA',53);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 053 BBBBB', 'Carta 053 audio BBBBB',53);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 053 CCCCC', 'Carta 053 audio CCCCC',53);

INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 054 AAAAA', 'Carta 054 audio AAAAA',54);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 054 BBBBB', 'Carta 054 audio BBBBB',54);
INSERT loteriadb.frase (frase, audio, idCarta) VALUES ('Carta 054 CCCCC', 'Carta 054 audio CCCCC',54);

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

#Dummy para descripción de cartas
UPDATE loteriadb.carta SET descripcion="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore" WHERE idCarta="1";
UPDATE loteriadb.carta SET descripcion="Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksg" WHERE idCarta="2";
UPDATE loteriadb.carta SET descripcion="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis p" WHERE idCarta="3";
UPDATE loteriadb.carta SET descripcion="A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and fe" WHERE idCarta="4";
UPDATE loteriadb.carta SET descripcion="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore" WHERE idCarta="5";
UPDATE loteriadb.carta SET descripcion="Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksg" WHERE idCarta="6";
UPDATE loteriadb.carta SET descripcion="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis p" WHERE idCarta="7";
UPDATE loteriadb.carta SET descripcion="The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymph" WHERE idCarta="8";
UPDATE loteriadb.carta SET descripcion="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore" WHERE idCarta="9";
UPDATE loteriadb.carta SET descripcion="A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and fe" WHERE idCarta="10";
UPDATE loteriadb.carta SET descripcion="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore" WHERE idCarta="11";
UPDATE loteriadb.carta SET descripcion="A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and fe" WHERE idCarta="12";
UPDATE loteriadb.carta SET descripcion="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis p" WHERE idCarta="13";
UPDATE loteriadb.carta SET descripcion="Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksg" WHERE idCarta="14";
UPDATE loteriadb.carta SET descripcion="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore" WHERE idCarta="15";
UPDATE loteriadb.carta SET descripcion="The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymph" WHERE idCarta="16";
UPDATE loteriadb.carta SET descripcion="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis p" WHERE idCarta="17";
UPDATE loteriadb.carta SET descripcion="The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymph" WHERE idCarta="18";
UPDATE loteriadb.carta SET descripcion="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore" WHERE idCarta="19";
UPDATE loteriadb.carta SET descripcion="Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksg" WHERE idCarta="20";
UPDATE loteriadb.carta SET descripcion="A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and fe" WHERE idCarta="21";
UPDATE loteriadb.carta SET descripcion="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis p" WHERE idCarta="22";
UPDATE loteriadb.carta SET descripcion="Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksg" WHERE idCarta="23";
UPDATE loteriadb.carta SET descripcion="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore" WHERE idCarta="24";
UPDATE loteriadb.carta SET descripcion="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis p" WHERE idCarta="25";
UPDATE loteriadb.carta SET descripcion="A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and fe" WHERE idCarta="26";
UPDATE loteriadb.carta SET descripcion="Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksg" WHERE idCarta="27";
UPDATE loteriadb.carta SET descripcion="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore" WHERE idCarta="28";
UPDATE loteriadb.carta SET descripcion="Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksg" WHERE idCarta="29";
UPDATE loteriadb.carta SET descripcion="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis p" WHERE idCarta="30";
UPDATE loteriadb.carta SET descripcion="A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and fe" WHERE idCarta="31";
UPDATE loteriadb.carta SET descripcion="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore" WHERE idCarta="32";
UPDATE loteriadb.carta SET descripcion="The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymph" WHERE idCarta="33";
UPDATE loteriadb.carta SET descripcion="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis p" WHERE idCarta="34";
UPDATE loteriadb.carta SET descripcion="Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksg" WHERE idCarta="35";
UPDATE loteriadb.carta SET descripcion="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore" WHERE idCarta="36";
UPDATE loteriadb.carta SET descripcion="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis p" WHERE idCarta="37";
UPDATE loteriadb.carta SET descripcion="Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksg" WHERE idCarta="38";
UPDATE loteriadb.carta SET descripcion="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore" WHERE idCarta="39";
UPDATE loteriadb.carta SET descripcion="Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksg" WHERE idCarta="40";
UPDATE loteriadb.carta SET descripcion="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis p" WHERE idCarta="41";
UPDATE loteriadb.carta SET descripcion="The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymph" WHERE idCarta="42";
UPDATE loteriadb.carta SET descripcion="A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and fe" WHERE idCarta="43";
UPDATE loteriadb.carta SET descripcion="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore" WHERE idCarta="44";
UPDATE loteriadb.carta SET descripcion="The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymph" WHERE idCarta="45";
UPDATE loteriadb.carta SET descripcion="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis p" WHERE idCarta="46";
UPDATE loteriadb.carta SET descripcion="A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and fe" WHERE idCarta="47";
UPDATE loteriadb.carta SET descripcion="Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksg" WHERE idCarta="48";
UPDATE loteriadb.carta SET descripcion="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore" WHERE idCarta="49";
UPDATE loteriadb.carta SET descripcion="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis p" WHERE idCarta="50";
UPDATE loteriadb.carta SET descripcion="Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksg" WHERE idCarta="51";
UPDATE loteriadb.carta SET descripcion="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore" WHERE idCarta="52";
UPDATE loteriadb.carta SET descripcion="The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymph" WHERE idCarta="53";
UPDATE loteriadb.carta SET descripcion="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore" WHERE idCarta="54";

#Dummy de imagenes pequeñas de trofeos
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '1';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '2';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '3';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '4';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '5';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '6';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '7';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '8';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '9';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '10';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '11';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '12';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '13';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '14';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '15';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '16';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '17';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '18';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '19';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '20';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '21';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '22';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '23';
UPDATE loteriadb.trofeo SET imagenIcon = '/media/img/trofeo/trophyIcon.png' WHERE idTrofeo = '24';
