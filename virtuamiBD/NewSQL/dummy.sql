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
INSERT INTO loteriadb.usuario (nombreUsr, nombre, aPaterno, aMaterno, sexo, edad, correo, contrasena, idTipoUsuario, idDivision, idGradoPosgrado, idGradoActivo, idAvatar, cargo, area) VALUES ('anjudark89','Flor Nallely', 'Flores', 'Vicente', 'M', 23, 'anjudark@xanum.uam.mx', 'a1b2c3d4e5', 1, 2, null, 1, 1, null, null);
INSERT INTO loteriadb.usuario (nombreUsr, nombre, aPaterno, aMaterno, sexo, edad, correo, contrasena, idTipoUsuario, idDivision, idGradoPosgrado, idGradoActivo, idAvatar, cargo, area) VALUES ('luisa.207310034','Luisa Maria', 'Gomez', 'Leyva', 'M', 24, 'luisa.207310034@xanum.uam.mx', 'a1b2c3d4e5', 3, 2, null, 1, 3, null, null);
INSERT INTO loteriadb.usuario (nombreUsr, nombre, aPaterno, aMaterno, sexo, edad, correo, contrasena, idTipoUsuario, idDivision, idGradoPosgrado, idGradoActivo, idAvatar, cargo, area) VALUES ('jcesarcbi','Julio Cesar', 'Padilla', 'Dorantes', 'H', 28, 'jcesarcbi@xanum.uam.mx', 'a1b2c3d4e5', 2, 2, null, 1, 5, null, null);
INSERT INTO loteriadb.usuario (nombreUsr, nombre, aPaterno, aMaterno, sexo, edad, correo, contrasena, idTipoUsuario, idDivision, idGradoPosgrado, idGradoActivo, idAvatar, cargo, area) VALUES ('guillermotorres','Guillermo', 'Torres', 'Lopez', 'H', 29, 'guillermotorres@xanum.uam.mx', 'a1b2c3d4e5', 2, 2, null, 1, 7, null, null);
INSERT INTO loteriadb.usuario (nombreUsr, nombre, aPaterno, aMaterno, sexo, edad, correo, contrasena, idTipoUsuario, idDivision, idGradoPosgrado, idGradoActivo, idAvatar, cargo, area) VALUES ('jezrelmx1304','Efren', 'Valdez', 'Jasso', 'H', 30, 'jezrelmx1304@xanum.uam.mx', 'a1b2c3d4e5', 4, 2, null, 1, 2, null, null);

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
INSERT loteriadb.frase (frase, idCarta) VALUES ('Like the legend of the phoenix All ends with beginnings What keeps the planet spinning The force from the beginning',1);
INSERT loteriadb.frase (frase, idCarta) VALUES ('We''ve come too far To give up who we are So let''s raise the bar And our cups to the stars',2);
INSERT loteriadb.frase (frase, idCarta) VALUES ('She''s up all night to the sun I''m up all night to get some She''s up all night for good fun I''m up all night to get lucky',3);
INSERT loteriadb.frase (frase, idCarta) VALUES ('The present has no ribbon Your gift keeps on giving What is this I''m feeling If you want to leave I''m with it',4);
INSERT loteriadb.frase (frase, idCarta) VALUES ('I''ll sing it one last time for you Then we really have to go You''ve been the only thing that''s right In all i''ve done.',5);
INSERT loteriadb.frase (frase, idCarta) VALUES ('And I can barely look at you But every single time I do I know we''ll make it anywhere Anywhere from here',6);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Light up, Light up As if you have a choice Even if you cannot hear my voice I''ll be right beside you dear',7);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Louder, louder And we''ll run for our lives I can hardly speak I understand Why you can''t raise your voice to say',8);
INSERT loteriadb.frase (frase, idCarta) VALUES ('To think I might not see those eyes It makes it so hard not to cry And as we say our long goodbyes I nearly do.',9);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Slower, slower We don''t have time for that All I want is to find an easier way To get out of our little heads',10);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Have heart my dear We''re bound to be afraid Even if it''s just for a few days Making up for all this mess',11);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Autumn leaves we treat as litter People living on a bench Childhood friends who lost contact Fallen soldiers in a trench',12);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Plastic islands in the ocean Violent storms drop atom bombs Hidden women walking slowly Desperate men sing sacred songs',13);
INSERT loteriadb.frase (frase, idCarta) VALUES ('City boy selling countries Surgeons lifting second skin Sitting by software windows Trying to find a virtual friend',14);
INSERT loteriadb.frase (frase, idCarta) VALUES ('I''m not a perfect person There''s many thing I wish I didn''t do But I continue learning I never meant to do those things to you And so I have to say before I go That I just want you to know',15);
INSERT loteriadb.frase (frase, idCarta) VALUES ('I''ve found a reason for me To change who I used to be A reason to start over new And the reason is you',16);
INSERT loteriadb.frase (frase, idCarta) VALUES ('I''m sorry that I hurt you It''s something I must live with everyday And all the pain I put you through I wish I could take it all away And be the one who catches all your tears That''s why I need you to hear',17);
INSERT loteriadb.frase (frase, idCarta) VALUES ('What a mark carved on my heart I was struck by cupid''s darts Hit so fast I did not see Before I knew, love captured me',18);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Every dawn gives way to dusk With each story endings come With the ticking of the clock I long for another touch',19);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Could I have known this fate at all? I did not know I''d get caught up Every sunset brings forth light And soon enough my sun will rise',20);
INSERT loteriadb.frase (frase, idCarta) VALUES ('I was waiting for you to release me I been hanging around for a minute Baby, don''t give me you, it won''t hurt me I don''t even know if you deserve me',21);
INSERT loteriadb.frase (frase, idCarta) VALUES ('But with that moon in the sky Who wants to be alone And when the stars shine so bright Who wants to be alone',22);
INSERT loteriadb.frase (frase, idCarta) VALUES ('But with the timing right It could be paradise To do this now Would not be right',23);
INSERT loteriadb.frase (frase, idCarta) VALUES ('And with the timing right It could be paradise To do this now Would not be right',24);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Can you forgive me again I don''t know what I said But I didn''t mean to hurt you',25);
INSERT loteriadb.frase (frase, idCarta) VALUES ('I heard the words come out I felt that I would die It hurts so much to hurt you',26);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Then you look at me You''re not shouting anymore You''re silently broken',27);
INSERT loteriadb.frase (frase, idCarta) VALUES ('''Cause you were made for me Somehow I''ll make you see How happy you make me, Oh!',28);
INSERT loteriadb.frase (frase, idCarta) VALUES ('And you forgive me again You''re my one true friend And I never meant to hurt you',29);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Dear my love, haven''t you wanted to be with me And dear my love, haven''t you longed to be free',30);
INSERT loteriadb.frase (frase, idCarta) VALUES ('I can''t keep pretending that I don''t even know you And at sweet night, you are my own, take my hand',31);
INSERT loteriadb.frase (frase, idCarta) VALUES ('We''re leaving here tonight There''s no need to tell anyone',32);
INSERT loteriadb.frase (frase, idCarta) VALUES ('They''d only hold us down So by the morning light',33);
INSERT loteriadb.frase (frase, idCarta) VALUES ('We''ll be half way to anywhere Where love is more than just your name',34);
INSERT loteriadb.frase (frase, idCarta) VALUES ('I have dreamt of a place for you and I No one knows who we are there',35);
INSERT loteriadb.frase (frase, idCarta) VALUES ('All I want is to give my life only to you I''ve dreamt so long I cannot dream anymore Let''s run away, I''ll take you there',36);
INSERT loteriadb.frase (frase, idCarta) VALUES ('We''re leaving here tonight There''s no need to tell anyone They''d only hold us down',37);
INSERT loteriadb.frase (frase, idCarta) VALUES ('So by the mornings light We''ll be half way to anywhere Where no one needs a reason',38);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Forget this life, come with me Don''t look back you''re safe now',39);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Unlock your heart, drop your guard No one''s left to stop you',40);
INSERT loteriadb.frase (frase, idCarta) VALUES ('We''re leaving here tonight There''s no need to tell anyone',41);
INSERT loteriadb.frase (frase, idCarta) VALUES ('They''d only hold us down So by the morning light',42);
INSERT loteriadb.frase (frase, idCarta) VALUES ('We''ll be half way to anywhere Where love is more than just your name',43);
INSERT loteriadb.frase (frase, idCarta) VALUES ('She was like April sky Sunrise in her eyes Child of light, shining star Fire in her heart',44);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Brightest day, melting snow Breaking through the chill October and April',45);
INSERT loteriadb.frase (frase, idCarta) VALUES ('He was like frozen sky In October night',46);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Darkest cloud endless storm Raining from his heart',47);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Coldest moon, deepest blue Tearing down the spring October and April',48);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Like hate and love World''s apart This fatal love was like poison right from the start',49);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Like light and Dark World''s apart This fatal love was like poison right from the start',50);
INSERT loteriadb.frase (frase, idCarta) VALUES ('Come and share this painting with me Unveiling of me, the magician that never failed',51);
INSERT loteriadb.frase (frase, idCarta) VALUES ('This deep sigh coiled around my chest intoxicated by a major chord I wonder Do I love you or the thought of you?',52);
INSERT loteriadb.frase (frase, idCarta) VALUES ('A crow flew to me Kept its distance Such a proud creation I saw its soul, envied its pride But needed nothing it had',53);
INSERT loteriadb.frase (frase, idCarta) VALUES ('An owl came to me Old and wise Pierced right through my youth I learned its ways, envied its sense But needed nothing it had',54);

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
