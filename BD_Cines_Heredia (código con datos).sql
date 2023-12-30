Create database Cines_Heredia2;
go
Use Cines_Heredia2;
Create table Cines (ID_Cine int primary key, Nombre_Cine varchar (50), Dirección_Cine varchar (50), Teléfono_Cine int); 
Create table Protagonistas (ID_Actor int primary key, Protagonista_Peli varchar (50));
Create table Prot_Peli (ID_Actor int, ID_Peli int);  
Create table Películas (ID_Peli int primary key, Nombre_Peli varchar (50), Genero_Peli varchar (30), Director_Peli varchar (50), Clasificación_Peli varchar (50));
Create table Sal_Cine_Peli (ID_Sala int, ID_Cine int, ID_Peli int);
Create table Salas (ID_Sala int primary key, Sala_Peli int, Precio_Cine int); 
Create table Tand_Cine_Peli (ID_Tanda int, ID_Cine int, ID_Peli int);
Create table Tandas (ID_Tanda int primary key, Horario_Peli time);
Create table Cine_Peli (ID_Cine int, ID_Peli int);

Insert into Cines (ID_Cine, Nombre_Cine, Dirección_Cine, Teléfono_Cine) values 
(1,'Cinema el Sol', 'MALL GraetMall', 39505908),
(2,'El Gran Cinema', 'Plaza The Luxury', 24084155),
(3,'Artis CINEMA', 'Centro Comercial El Comercio', 23940178),
(4,'Cines Nuevo Centro','Avd. Pío XII', 23485477);

Insert into Protagonistas (ID_Actor, Protagonista_Peli) values 
(1,'"Sin datos"'),
(2,'Antonio Banderas'),
(3,'Melanie Griffith'),
(4,'Daryl Hannah'),
(5,'Clint Eastwood'),
(6,'Meryl Streep'),
(7,'William Hurt'),
(8,'Harvey Keitel'),
(9,'Keanu Reeves'),
(10,'Aitana Sámchez Gijón'),
(11,'Emma Thompson'),
(12,'Jonathan Pryce'),
(13,'Hugh Grant'),
(14,'Julianne Moore'),
(15,'Tim Allen'),
(16,'Judge Reinhold');

Insert into Prot_Peli (Id_Peli, ID_Actor) values 
(1, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(8, 16);

Insert into Películas (Id_Peli, Nombre_Peli, Genero_Peli, Director_Peli, Clasificación_Peli) values 
(1,'Pocahontas', 'Infantil','Mike Gabriel','Todo público'),
(2,'Two much', 'Comedia','Fernando Trueba','Todo público'),
(3,'Los puentes de Madison', 'Drama','Clint Eastwood','No recomendada para menores de 13 años'),
(4,'Smoke', 'Drama','Wayne Wang','Todo público'),
(5,'Un paseo por las nubes', 'Drama','Alfonso Arau','No recomendada para menores de 13 años'),
(6,'Carrington', 'Drama','Christopher Hampton','No recomendada para menores de 13 años'),
(7,'Nueve meses', 'Comedia','Chris Columbus','"Sin datos"'),
(8,'¡Vaya Santa Claus!', 'Comedia','John Pasquin','"Sin datos"');

Insert into Sal_Cine_Peli (ID_Sala, ID_Cine, ID_Peli) values
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 4),
(6, 3, 5),
(7, 3, 6),
(8, 4, 7),
(9, 4, 1),
(10, 4, 8);

Insert into Salas (ID_Sala, Sala_Peli, Precio_Cine) values 
(1, 1, 2280),
(2, 2, 3070),
(3, 3, 2950),
(4, 1, 2500),
(5, 2, 1960),
(6, 1, 2600),
(7, 2, 1960),
(8, 1,''),
(9, 2, 2200),
(10, '', '');

Insert into Tand_Cine_Peli (ID_Tanda, ID_Cine, ID_Peli) values 
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 2),
(6, 1, 2),
(7, 1, 2),
(8, 1, 3),
(9, 1, 3),
(10, 1, 3),
(11, 2, 1),
(12, 2, 1),
(13, 2, 4),
(14, 3, 5),
(15, 3, 5),
(16, 3, 5),
(17, 3, 6),
(18, 3, 6),
(19, 3, 6),
(20, 4, 7),
(21, 4, 7),
(22, 4, 7),
(23, 4, 7),
(24, 4, 1),
(25, 4, 1),
(26, 4, 1),
(27, 4, 1),
(28, 4, 8),
(29, 4, 8),
(30, 4, 8),
(31, 4, 8);

Insert into Tandas (ID_Tanda, Horario_Peli) values 
(1, '16:30:00'),
(2, '18:25:00'),
(3, '20:20:00'),
(4, '22:45:00'),
(5, '13:00:00'),
(6, '15:40:00'),
(7, '18:50:00'),
(8, '16:45:00'),
(9, '19:35:00'),
(10, '22:35:00'),
(11, '17:15:00'),
(12, '19:45:00'),
(13, '22:45:00'),
(14, '16:45:00'),
(15, '19:20:00'),
(16, '22:45:00'),
(17, '16:45:00'),
(18, '19:20:00'),
(19, '22:45:00'),
(20, '16:30:00'),
(21, '18:30:00'),
(22, '20:30:00'),
(23, '22:40:00'),
(24, '16:20:00'),
(25, '18:10:00'),
(26, '19:45:00'),
(27, '22:40:00'),
(28, '16:30:00'),
(29, '18:30:00'),
(30, '20:30:00'),
(31, '22:40:00');

Insert into  Cine_Peli (ID_Cine, ID_Peli) values
(1,1),
(1,2),
(1,3),
(2,1),
(2,4),
(3,5),
(3,6),
(4,7),
(4,1),
(4,8);

