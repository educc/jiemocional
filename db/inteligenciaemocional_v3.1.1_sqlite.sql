/*
	AUTOR:
		Cacho Casas Edward
		Alza Mesa Arturo
	VERSION:
		3.1
	FECHA:
		18 de enero de 2012
	ENGINE:
		sqlite 3.7
*/

CREATE TABLE iem_seccion (
	id_seccion INTEGER NOT NULL PRIMARY KEY ,
	nombre VARCHAR( 100 ) NOT NULL 
);

CREATE TABLE iem_escala (
	id_escala 		INTEGER NOT NULL PRIMARY KEY ,
	id_seccion		INTEGER NOT NULL REFERENCES iem_seccion(id_seccion),
	nombre			VARCHAR( 80 ) NOT NULL ,
	descripcion 	VARCHAR( 200 ) NOT NULL ,
	indicador1		varchar(50) NOT NULL,
	indicador2		varchar(50) NOT NULL,
	indicador3		varchar(50) NOT NULL,
	indicador4		varchar(50) NOT NULL
);

CREATE TABLE iem_item (
	id_item 			INTEGER NOT NULL PRIMARY KEY ,
	nombre 				VARCHAR( 400 ) NOT NULL ,
	indicador1 			INTEGER( 1 ) NOT NULL , /*mucho*/
	indicador2 			INTEGER( 1 ) NOT NULL , /*moderado*/
	indicador3 			INTEGER( 1 ) NOT NULL , /*poco*/
	indicador4 			INTEGER( 1 ) NOT NULL , /*nada*/
	id_escala 			INTEGER NOT NULL 
);

CREATE TABLE iem_usuario (
	id_usuario		INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT ,
	nombre			VARCHAR( 50 ) NOT NULL ,
	contrasenia 	VARCHAR( 50 ) NOT NULL
);

create table iem_test (
	id_test			INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	fecha			DATE NOT NULL,
	id_usuario		INTEGER NOT NULL REFERENCES iem_usuario(id_usuario)
);

CREATE TABLE iem_respuestasTest (
	id_test			INTEGER NOT NULL REFERENCES iem_test(id_test),
	id_item			INTEGER NOT NULL REFERENCES iem_item(id_item),
	valor			INTEGER NOT NULL
);

/*INSERCION DE SECCIONES */

INSERT INTO iem_seccion (id_seccion, nombre) values (1,'Ambiente General');
INSERT INTO iem_seccion (id_seccion, nombre) values (2,'Conocimiento Emocional');
INSERT INTO iem_seccion (id_seccion, nombre) values (3,'Competencias de CE');
INSERT INTO iem_seccion (id_seccion, nombre) values (4,'Valores de CE y creencias');
INSERT INTO iem_seccion (id_seccion, nombre) values (5,'Resultados de CE');

/*INSERCION DE  ESCALAS*/

INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(1,'Sucesos de la Vida','Piense en el a�o pasado. En la lista siguiente cu�nta aflicci�n le caus� cada uno de de los sucesos de trabajo y personales que se anotan',1,'Mucha','Moderada','Poca','Nada / No Ocurri�');
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(2,'Presiones del trabajo','Piense en el mes pasado. En la lista siguiente indique cu�nta aflicci�n le produjo cada una de las presiones del trabajo que se anotan',1,'Mucha','Moderada','Poca','Nada / No Ocurri�') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(3,'Presiones personales','Piense en el mes pasado. En la lista siguiente indique cu�nta aflicci�n le produjo cada una de las presiones personales que se anotan',1,'Mucha','Moderada','Poca','Nada / No Ocurri�') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(4,'Conciencias emocionales en s� mismo','En la lista siguiente indique c�mo describe cada regl�n la manera como usted piensa y siente sobre usted',2,'Mucha','Moderadamente bien','Un poco','Nada / No Ocurri�') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(5,'Expresi�n emocional','En la lista siguiente indique c�mo describe cada regl�n la manera como usted piensa y siente sobre usted actualmente',2,'Muy bien','Moderadamente bien','Un poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(6,'Concienca emocional de otros','En la lista siguiente indique c�mo describe cada regl�n la manera como usted piensa y siente como usted actualmente ',2,'Mucha','Moderada','Un poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(7,'Intenci�n','Piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',3,'Mucho','Moderado','Un Poco','Nada bien'); 
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(8,'Creatividad','Piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',3,'Mucho','Moderado','Un Poco','Nada bien'); 
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(9,'Elasticidad','Piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',3,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(10,'Conexiones interpersonales','Piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',3,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(11,'Descontento constructivo','Piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',3,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(12,'Compasi�n','Piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',4,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(13,'Perspectiva','Piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n ',4,'Mucho','Moderado','Un Poco','Nada bien'); 
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(14,'Intuici�n','Piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',4,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(15,'Radio de Confianza','Piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',4,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(16,'Poder personal','Piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',4,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(17,'Integridad','Piense en el mes pasado. En la lista siguiente indique c�mo describe cada rengl�n su conducta o intenci�n',4,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(18,'Salud General','Piense en el mes pasado con qu� fecuencia a experimentado los s�ntomas siguientes',5,'Nunca','Uno o dos veces al mes','Todas las semanas','Casi todos los d�as') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(19,'Calidad de la vida','En la lista siguiente indique c�mo describe cada regl�n la manera como usted piensa y siente sobre usted actualmente',5,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(20,'Cociente de relaciones','En la lista siguiente indique c�mo describe cada regl�n la manera como usted piensa y siente sobre usted actualmente',5,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(21,'�ptimo rendimiento','En la lista siguiente indique c�mo describe cada regl�n la manera como usted piensa y siente sobre usted actualmente',5,'Mucho','Moderado','Un Poco','Nada bien') ;



/*INSERCION DE  ITEMS*/

/*Escala 1:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (1,'Despedido o renunci� o es jubil�',1,3,2,1,0);	
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (2,'Nuevo empleo o compa��a',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (3,'Nuevo tipo de trabajo ',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (4,'reduccion o reorganizaci�n en la compa�ia',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (5,'Alg�n otro cambio en el trabajo, no incluido en la lista anterior que le produjo angustia',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (6,'P�rdida econ�mica o reducci�n de ingresos',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (7,'Muerto de un amigo intimo o miembro de familia',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (8,'Mudanza o traslado',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (9,'Su separaci�n o divorcio',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (10,'Su matrimonio',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (11,'Compr� una nueva casa',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (12,'Fue v�ctima de un crimen',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (13,'Nacimiento de un hijo, adopci�n, hijastros u otras personas agregadas al hogar',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (14,'Complicaci�n en sistema judicial',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (15,'Seria enfermedad personal o heridas',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (16,'Seria enfermedad o lesiones de un amigo �ntimo o miembro de la familia',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (17,'Aumento de responsabilidades de cuidar de un pariente viejo o inv�lido',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (18,'Cualquier otro cambio no incluido en la lista anterior que le produjo angustia',1,3,2,1,0);


/*Escala 2:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (19,'Seguridad del empleo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (20,'Relaciones con el jefe inmediato',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (21,'Cambio de prioridades en el trabajo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (22,'Relaciones con compa�eros de trabajo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (23,'Oportunidad de avanzar y desarrollarse',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (24,'Exeso de trabajo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (25,'Control de la carga de trabajo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (26,'Falta de flexibilidad para hacer frente a emergencias de familia o personales ',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (27,'Favorismo o injusticia en politicas de contrataci�n y ascensos en el trabajo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (28,'Constante vigilancia de su desempe�o en el oficio',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (29,'Trabajo aburrido o poca interesante',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (30,'Especial reconocimiento o premio en su oficio',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (31,'Presi�n por conflicto de fechas limites',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (32,'P�ridida de devoci�n al trabajo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (33,'Se siente aprisionado en el papeleo e incapaz de realizar cosa alguna',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (34,'Felxibilidad de horas de trabajo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (35,'El transporte de ida y regreso al trabajo',2,3,2,1,0);

/*Escala 3:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (36,'Dificultades Financieras',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (37,'Aumento de responsabilidades de cuidar de un adulto viejo o un pariente inv�lido',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (38,'Desavenencia con socio o c�nyuge',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (39,'Crianza de un hijo',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (40,'Estar separar separado del marido o la esposa',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (41,'Deterioro de la salud personal',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (42,'Encontrar qui�n cuide del ni�o, o problemas con actual situaci�n de dicho cuidado',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (43,'No tiene tiempo suficiente para pasar con los que est�n m�s cerca de usted',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (44,'Vecindario peligroso o no seguro',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (45,'Relaciones con un pariente �ntimo (padres,hermanos, yernos)',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (46,'Conflictos sexuales o frustaciones',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (47,'Coflicto trabajo-familiar',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (48,'Soledad o falta de intimidad',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (49,'Cuestiones de fecundidad o reproduccci�n',3,3,2,1,0);

 
/*Escala 4:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (50,'Puedo nombrar mis sentimientos',4,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (51,'He aprendido mucha acerca de mi mismo escuchando mis sentimientos',4,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (52,'Soy consiente de mis sentimientos la mayor parte del timpo',4,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (53,'S� cuendo me estoy alterando',4,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (54,'Cuando estoy triste, s� por qu�',4,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (55,'Me juzgo a mi mismo por la manera como creo que los dem�s me ven ',4,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (56,'Gozo de mi vida emosional',4,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (57,'Me asustan las personas que muestran fuertes emociones',4,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (58,'A veces quiciera ser otra persona',4,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (59,'Presto atenci�n a mi estado f�sico para entender mis sentimientos',4,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (60,'Acepto mis sentimientos como propios',4,3,2,1,0);

/*Escala 5:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (61,'Les hago saber a los dem�s cu�ndo est�n haciendo un buen trabajo',5,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (62,'Expreso mis emociones a�n cuando sean negativas',5,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (63,'Les hago saber a los dem�s lo que quiero y lo que necesito ',5,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (64,'Mis amigos �ntimos dir�an que yo expreso mi aprecio por ellos',5,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (65,'Me guado mis sentimientos para m� solo',5,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (66,'Les hago saber a los dem�s cuando sentimiento desagradables intervienen en la manera como tabajamos',5,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (67,'Me cuesta trabajo pedir ayuda cuando la necesito',5,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (68,'Al tratar con los dem�s puedo percibir como se sienten',5,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (69,'Har�a cualquier cosa por no parecer tonto ante mis compa�eros',5,0,1,2,3);


/*Escala 6:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (70,'Puedo reconocer las emociones de otros mirandolos a los ojos',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (71,'Me cuesta trabajo hablar con personas que no comparten mis puntos de vista',6,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (72,'Me concentro de las cualidades positivas de los dem�s',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (73,'Rara vez siento ganas de re�ir a otro',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (74,'Pienso c�mo se sentir�n los dem�s antes de expresar mi opini�n',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (75,'Con cualquiera que hablo siempre lo escucho con atenci�n',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (76,'Puedo presentir el �nimo de un grupo cuando entro en un sal�n',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (77,'Yo puedo hacer que personas que acabo de conocer hablen de si mismas',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (78,'S� "leer entre l�neas " cuando alguien est� hablando',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (79,'Generalmente s� como piensan los dem�s sobre m�',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (80,'Puedo presentir los sentimientos de una persona aunque no lo exprese con palabras',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (81,'Cambio mi expresi�n emocional seg�n la persona con quien est�',6,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (82,'S� cuando un amigo est� preocupado',6,3,2,1,0);


/*Escala 7:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (83,'Puedo excluir toda distracci�n cuando tengo que concentrarme ',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (84,'Generalmente termino lo que comienzo',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (85,'S� decir que no cuando es necesario',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (86,'S� recompenzarme a m� mismo despu�s de alcanzar una meta',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (87,'Puedo hacer a un lado las recompenzas a corto plazo a cambio de una meta a largo plazo',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (88,'Puedo concentrarme completamente en una tarea cuando es necesario',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (89,'hago cosas que despu�s me arrepiento',7,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (90,'Acepto la responsabilidad de manejar mis emociones',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (91,'Cuando me veo con un preblema me gusta despacharlo lo m�s pronto posible',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (92,'Pienso qu� es lo que quiero antes de actuar ',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (93,'Puedo aplazar mi satisfacci�n personal a cambio de una meta m�s grande',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (94,'Cuando estoy de mal humor puedo superarlo hablando ',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (95,'Me da rabia cuando me critican ',7,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (96,'No s� cu�l es el origen en mi emfado en muchas situaciones',7,0,1,2,3);

/*Escala 8:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (97,'He recomendado proyectos novedosos a mi compa��a ',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (98,'Participo en compartir informaci�n e ideas',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (99,'Sue�o con el futuro para ayduarme a pensar hacia d�nde voy ',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (100,'Mis mejores ideas me vienen cuando no estoy pensando en ellas',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (101,'Tengo ideas brillantes que me han venido de pronto y ya completamente formadas',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (102,'Tengo un buen sentido de cu�ndo las ideas tendr�n �xito o fracasar�n',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (103,'Me fascinan los conceptos nuevos e inusuales',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (104,'He implementado proyectos novedosos en mi compa��a',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (105,'Me entusiasman las ideas y soluciones nuevas',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (106,'Me desempe�o bien haciendo tormentas de ideas para generar opciones sobre un problema',8,3,2,1,0);


/*Escala 9:*/


INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (107,'Puedo reacionar depu�s de haberme sentido desilucionado',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (108,'Puedo realizar lo que necesito si me dedico a ello',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (109,'Obst�culos o problemas en mi vida han producido cambios inesperados para mejorar',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (110,'Encuento f�cil esperar con paciencia cuando es mecesario',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (111,'Siempre hay m�s de una respuesta correcta',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (112,'S� c�mo dar satisfacci�n a todas las partes de m� mismo',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (113,'No me gusta dejar para ma�ana lo que se pueda hacer hoy',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (114,'Temo ensayar otra vez una cosa que ya me ha fallado antes',9,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (115,'pienso que hay problemas por los cuales no vale la pena preocuparse',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (116,'Yo me despreocupo cuando la tensi�n aumenta',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (117,'Puedo ver al aspecto humor�stico de las situaciones',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (118,'A menudo dejo una cosa a un lado por un tiempo para obtener una nueva perspectiva',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (119,'Cuando encuentro un problema me consentro en qu� se puede hacer para resolverlo',9,3,2,1,0);


/*  Escala 10: */

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (120,'Puedo lamentarme cuando pierdo algo que es muy importante para mi',10,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (121,'Me siento inc�modo cuando alguien se acerca demasiado a m� emocionalmente',10,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (122,'tengo varios amigos con quienes puedo contar en caso de dificultades',10,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (123,'Muestro indicador1 amor y afecto a mis amigos',10,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (124,'cuando tengo un poblema, s� a qui�n acudir o qu� hacer para ayudar a resolverlo',10,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (125,'Mis creencias y valores gu�an mi conducta diaria',10,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (126,'Mi familia est� siempre conmigo cuando la necesito',10,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (127,'Dudo de que mis colegas realmente me aprecien como persona',10,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (128,'Me cuesta trabajo hacer amistades',10,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (129,'Rara vez lloro',10,0,1,2,3);


/*escala 11*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (131,'Puedo contradecir con eficacia para producir un cambio',11,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (132,'No expresar�a mis sentimientos si creyera que con ello causar�a un desacuerdo',11,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (133,'En el fondo, yo s�lo puedo confiar en m� mismo para hacer las cosas',11,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (134,'Permanezo en calma aun en situaciones en que los dem�s se irritan',11,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (135,'Es mejor no alborotar problemas si se pueden evitar',11,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (136,'Me cuesta trabajo obtener consenso de mi equipo de trabajo',11,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (137,'Pido retroinformaci�n a mis colegas sobre mi rendimiento',11,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (138,'Tengo habilidad para organizar y motivar grupos de personas',11,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (139,'Me gusta hacer frente a los problemas en el trabajo y resolverlos',11,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (140,'Escucho la cr�tica con mente abierta y la acepto cuando es justa',11,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (141,'Dejo que las cosas crezcan hasta el punto cr�tico antes de hablar de ellas',11,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (142,'Cunado hago un comentario cr�tico, me concentro en la conducta y no en la persona',11,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (143,'Evito las disputas',11,0,1,2,3);

/*escala 12*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (144,'Yo puedo ver la mortificaci�n de los dem�s, aunque no la mencionen',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (145,'Puedo leer las emociones de la gente por sus ademanes',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (146,'Act�o con �tica en mi trato con los dem�s',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (147,'No vacilar�a en hacer un esfuerzo extra por ayudar a una persona que est� en dificultades',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (148,'Tengo en cuenta los sentimientos de los dem�s en mi trato con ellos',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (149,'Me puedo poner en el lugar de otra persona',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (150,'Hay personas a quienes jam�s perdono',12,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (151,'Puedo perdonarme a m� mismo por no ser perfecto',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (152,'Cuando tengo �xito en algo, me parece que pod�a haberlo hecho mejor',12,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (153,'Ayudo a los dem�s a quedar bien en situaciones dif�ciles',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (154,'Constantemente me preocupo por mis deficiencias',12,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (155,'Envidio a los que tienen m�s que yo',12,0,1,2,3);


/*Escala 13*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (156,'Veo el lado bueno de las cosas',13,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (157,'Amo mi vida',13,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (158,'S� que puedo encontrar soluciones a problemas dif�ciles',13,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (159,'Creo que las cosas generalmente salen bien',13,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (160,'Continuamente me he visto frustrado en la vida por la mala suerte',13,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (162,'Me gusta ser el que soy',13,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (163,'Veo los retos como oportunidades para aprender',13,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (164,'Bajo presi�n estoy seguro de que encontrar� una soluci�n',13,3,2,1,0);


/*escala 14*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (165,'A veces tengo la soluci�n correcta sin tener las razones',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (166,'Mis corazoindicador4s suelen ser acertadas',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (167,'Visualizo mis metas futuras',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (168,'Puedo ver el producto terminado o el cuadro antes de que est�n completos',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (169,'Creo en mis sue�os aun cuando otros no los vean ni los entiendan',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (170,'Cuando me veo ante una elecci�n dif�cil, sigo mi coraz�n',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (171,'Presto atenci�n cuando las cosas no me parecen del todo bien',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (172,'Una vez que me he decidido, rara vez cambio de opini�n',14,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (173,'La gente dice que yo soy un visionario',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (174,'Cuando alguien presenta una opini�n distinta de la m�a, me cuesta trabajo aceptarla',14,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (175,'Uso mis reacciones intuitivas para tomar decisiones dif�ciles',14,3,2,1,0);


/*escala 15*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (176,'Todos se aprovechar�a de m� si yo los dejara',15,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (177,'Conf�o en los dem�s hasta que tenga razones para no confiar',15,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (178,'Tengo indicador1 cuidado para decidirme a confiar en una persona',15,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (179,'Respeto a mis colegas',15,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (181,'Las personas parecidas a m� en mi compa��a han recibido m�s beneficios que yo v.gr., aumentos de sueldo, ascensos, oportunidades, recompensas, etc',15,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (182,'Las personas a quienes trato son dignas de confianza',15,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (183,'Parece que yo siempre salgo defraudado',15,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (184,'Muy indicador3 en la vida es justo o equitativo',15,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (185,'Cuando algo no funciona, yo trato de presentar un plan alterno',15,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (186,'Cuando conozco a una persona nueva, descubro muy indicador3 de informaci�n personal sobre m� mismo',15,0,1,2,3);

/*escala 16*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (187,'Yo puedo lograr que las cosas se hagan',16,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (188,'La suerte hace un papel muy importante en mi vida',16,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (189,'Encuentro in�til luchar con la jerarqu�a establecida en mi compa��a',16,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (190,'Las circunstancias est�n fuera de mi control',16,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (191,'Necesito reconomiento de los dem�s para que mi trabajo valga la pena',16,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (192,'Es f�cil que los dem�s gusten de m�',16,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (193,'Me cuesta indicador1 trabajo aceptar cumplidos',16,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (194,'Tengo la habilidad de conseguir lo que quiero',16,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (195,'Siento que controlo mi vida',16,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (196,'Si reflexiono sobre mi vida, podr�a sentir que b�sicamente no soy feliz',16,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (197,'Me siento asustado y creo que no tengo control de las cosas cuando �stas cambian r�pidamente',16,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (198,'Me gusta encargarme de una cosa',16,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (199,'Yo s� lo que quiero y lo busco',16,3,2,1,0);

/*escala 17*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (201,'Cuando cometo un error estoy dispuesto a reconocerlo',17,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (202,'Siento que estoy enga�ando a los dem�s',17,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (203,'Si no me apasionara mi trabajo, cambiar�a de oficio',17,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (204,'Mi oficio es una extensi�n de mi sistema personal de valores',17,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (205,'Jam�s digo una mentira',17,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (206,'Encuentro que me dejo llevar por una situaci�n aun cuando no est� de acuerdo con ella',17,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (207,'Exagero mis habilidades para poder avanzar',17,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (208,'Digo la verdad aun cuando sea dif�cil',17,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (209,'He hecho en mi oficio cosas contrarias a mis principios',17,0,1,2,3);

/*escala 18*/
	/*Sistomas fisicos*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (210,'Dolor de espalda',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (211,'Poblemas de peso (p�rdida o exceso de peso)',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (212,'Dolores de cabeza',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (213,'Jaquecas',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (214,'Catarros o problemas respiratorios',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (215,'Porblemas del est�mago (gases frecuentes, s�ndrome de irritabilidad intestinal, o �lceras)',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (216,'Dolor de pecho',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (217,'Dolores inexplicables',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (218,'Otros dolores cr�nicos no anotados en la lista anterior',18,0,1,2,3);


	/*sistomas de conducta*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (219,'Alimentaci�n (p�rdida del apetito, como con exceso, no tengo tiempo de comer)',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (220,'Fumo',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (221,'Tomo calmantes',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (222,'Tomo aspirina u otros analg�sicos',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (223,'Tomo otras drogas',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (224,'Huyo de las relaciones estrechas',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (225,'Critico, culpo o ridiculizo a los dem�s',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (226,'Me siento v�ctima, o que se aprovechan de m�',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (227,'Veo TV m�s de dos horas al d�a',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (228,'Practico juegos de video o computador, o uso la internet (m�s de dos horas al d�a)',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (229,'Me fastidian las personas con quienes me encuentro',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (230,'Accidentes o heridas',18,0,1,2,3);

	/*sintomas emocionales*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (231,'Me cuesta trabajo concentrarme ',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (232,'Me abruma el trabajo',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (233,'Me distraigo f�cimente',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (234,'No puedo quitarme una cosa de la cabeza y estoy siempre preocupado',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (235,'Me siento deprimido, desaletado o sin esperanza',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (236,'Me siento solo ',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (237,'Pierdo la memoria',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (238,'Me siento fatigado o abrumado',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (239,'Me cuesta trabajo resolverme o tomar decisiones',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (240,'Me cuesta trabajo empezar o tranquilizarme',18,0,1,2,3);

/* Escala 19 */

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (241,'Estoy muy satisfecho con mi vida',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (242,'Me siento en�rgico, f�liz y lleno de salud',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (243,'Tengo sentimiento de paz interior y bienestar',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (244,'Necesitar�a hacer indicador1s cambios en mi vida para ser realmente feliz',19,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (245,'Mi vida satisface mis m�s hondas necesidades ',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (246,'He obtenido menos de lo que esperaba de la vida',19,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (247,'Me gusta ser exactamente como soy',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (248,'Para mi el trabajo es una diversi�n',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (249,'he encotradao trabajo significativo',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (250,'Voy por un camino que me trae satifaci�n',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (251,'He aprovechado al m�ximo mis capacidades',19,3,2,1,0);

/* Escala 20 */


INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (252,'Hay personas con quienes me conecto a un nivel m�s hondo',20,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (253,'Soy franco con las personas sercanas a mi y ellas lo son conmigo',20,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (254,'He amado profundamente a otra persona',20,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (255,'Generalmente encuentro perosonas con quienes hacer vida social',20,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (256,'Soy capaz de hacer compromisos a largo plazo con otra perosona',20,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (257,'S� que soy importa para los que ent�n m�s serca d m�',20,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (258,'Encuentro f�cil decirles a los dem�s',20,3,2,1,0);

/* Escala 21 */


INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (259,'Estoy satisfecho con mi desempe�o en el trabajo',21,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (260,'Mis compa�eros de trabajo dir�an que yo facilito buenas comunicaciones entre los miembros de mi grupo',21,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (261,'Me siento distante en el trabajo y no participante',21,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (262,'Me es dif�cil prestar atenci�n a las tareas de trabajo',21,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (263,'En mi equipo de trabaajo participo en la toma de decisiones ',21,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (264,'Me cuesta trabajo cumplir los compromisos o completar las tareas',21,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (265,'Mi rendimiento en el trabajo es siempre el mejor de que soy capaz',21,3,2,1,0);


/*CORRECCION DE ORTOGRAFIA*/
UPDATE iem_item SET nombre='Despedido o renunci� o se jubil�
' WHERE id_item=1;
UPDATE iem_item SET nombre='Nuevo empleo o compa��a
' WHERE id_item=2;
UPDATE iem_item SET nombre='Nuevo tipo de trabajo
' WHERE id_item=3;
UPDATE iem_item SET nombre='Reducci�n o reorganizaci�n en la compa��a
' WHERE id_item=4;
UPDATE iem_item SET nombre='Alg�n otro cambio en el trabajo, no incluido en la lista anterior que le produjo angustia
' WHERE id_item=5;
UPDATE iem_item SET nombre='P�rdida econ�mica o reducci�n de ingresos
' WHERE id_item=6;
UPDATE iem_item SET nombre='Muerte de un amigo intimo o miembro de familia
' WHERE id_item=7;
UPDATE iem_item SET nombre='Mudanza o traslado
' WHERE id_item=8;
UPDATE iem_item SET nombre='Su separaci�n o divorcio
' WHERE id_item=9;
UPDATE iem_item SET nombre='Su matrimonio
' WHERE id_item=10;
UPDATE iem_item SET nombre='Compr� una nueva casa
' WHERE id_item=11;
UPDATE iem_item SET nombre='Fue v�ctima de un delito, asalto o atentado
' WHERE id_item=12;
UPDATE iem_item SET nombre='Nacimiento de un hijo, adopci�n, hijastros u otras personas allegadas al hogar
' WHERE id_item=13;
UPDATE iem_item SET nombre='Complicaciones en el sistema judicial
' WHERE id_item=14;
UPDATE iem_item SET nombre='Seria enfermedad personal o heridas
' WHERE id_item=15;
UPDATE iem_item SET nombre='Seria enfermedad o lesiones de un amigo cercano o miembro de la familia
' WHERE id_item=16;
UPDATE iem_item SET nombre='Aumento de responsabilidades de cuidar de un pariente viejo o inv�lido
' WHERE id_item=17;
UPDATE iem_item SET nombre='Cualquier otro cambio no incluido en la lista anterior que le produjo angustia
' WHERE id_item=18;
UPDATE iem_item SET nombre='Seguridad del empleo
' WHERE id_item=19;
UPDATE iem_item SET nombre='Relaciones con el jefe inmediato
' WHERE id_item=20;
UPDATE iem_item SET nombre='Cambio de prioridades en el trabajo
' WHERE id_item=21;
UPDATE iem_item SET nombre='Relaciones con compa�eros de trabajo
' WHERE id_item=22;
UPDATE iem_item SET nombre='Oportunidad de avanzar y desarrollarse
' WHERE id_item=23;
UPDATE iem_item SET nombre='Exceso de trabajo
' WHERE id_item=24;
UPDATE iem_item SET nombre='Control de la carga de trabajo
' WHERE id_item=25;
UPDATE iem_item SET nombre='Falta de flexibilidad para hacer frente a emergencias personales o familiares
' WHERE id_item=26;
UPDATE iem_item SET nombre='V�citima de favoritismo o injusticia en pol�ticas de contrataci�n y ascensos en el trabajo
' WHERE id_item=27;
UPDATE iem_item SET nombre='Constante vigilancia de su desempe�o en el oficio
' WHERE id_item=28;
UPDATE iem_item SET nombre='Trabajo aburrido o poco interesante
' WHERE id_item=29;
UPDATE iem_item SET nombre='Especial reconocimiento o premio en su oficio
' WHERE id_item=30;
UPDATE iem_item SET nombre='Presi�n por conflicto de fechas limites
' WHERE id_item=31;
UPDATE iem_item SET nombre='P�rdida de devoci�n al trabajo
' WHERE id_item=32;
UPDATE iem_item SET nombre='Se siente aprisionado en el papeleo e incapaz de realizar cosa alguna
' WHERE id_item=33;
UPDATE iem_item SET nombre='Flexibilidad de horas de trabajo
' WHERE id_item=34;
UPDATE iem_item SET nombre='El transporte de ida y regreso al trabajo
' WHERE id_item=35;
UPDATE iem_item SET nombre='Dificultades financieras
' WHERE id_item=36;
UPDATE iem_item SET nombre='Aumento de responsabilidades de cuidar de un adulto viejo o un pariente inv�lido
' WHERE id_item=37;
UPDATE iem_item SET nombre='Desavenencia con socio o c�nyuge
' WHERE id_item=38;
UPDATE iem_item SET nombre='Crianza de un hijo
' WHERE id_item=39;
UPDATE iem_item SET nombre='Estar separado del c�nyuge
' WHERE id_item=40;
UPDATE iem_item SET nombre='Deterioro de la salud personal
' WHERE id_item=41;
UPDATE iem_item SET nombre='Encontrar qui�n cuide del ni�o o problemas con actual situaci�n de dicho cuidado
' WHERE id_item=42;
UPDATE iem_item SET nombre='No tiene tiempo suficiente para pasar con los que est�n m�s cerca de usted
' WHERE id_item=43;
UPDATE iem_item SET nombre='Vecindario peligroso o inseguro
' WHERE id_item=44;
UPDATE iem_item SET nombre='Relaciones con un pariente cercano (padres, hermanos, yernos)
' WHERE id_item=45;
UPDATE iem_item SET nombre='Conflictos sexuales o frustraciones
' WHERE id_item=46;
UPDATE iem_item SET nombre='Conflicto trabajo-familiar
' WHERE id_item=47;
UPDATE iem_item SET nombre='Soledad o falta de intimidad
' WHERE id_item=48;
UPDATE iem_item SET nombre='Cuestiones de fecundidad o reproducci�n
' WHERE id_item=49;
UPDATE iem_item SET nombre='Puedo nombrar mis sentimientos
' WHERE id_item=50;
UPDATE iem_item SET nombre='He aprendido mucha acerca de m� mismo escuchando mis sentimientos
' WHERE id_item=51;
UPDATE iem_item SET nombre='Soy consciente de mis sentimientos la mayor parte del tiempo
' WHERE id_item=52;
UPDATE iem_item SET nombre='S� cuando me estoy alterando
' WHERE id_item=53;
UPDATE iem_item SET nombre='Cuando estoy triste, s� por qu�
' WHERE id_item=54;
UPDATE iem_item SET nombre='Me juzgo a mi mismo por la manera como creo que los dem�s me ven
' WHERE id_item=55;
UPDATE iem_item SET nombre='Gozo de mi vida emocional
' WHERE id_item=56;
UPDATE iem_item SET nombre='Me asustan las personas que muestran fuertes emociones
' WHERE id_item=57;
UPDATE iem_item SET nombre='A veces quisiera ser otra persona
' WHERE id_item=58;
UPDATE iem_item SET nombre='Presto atenci�n a mi estado f�sico para entender mis sentimientos
' WHERE id_item=59;
UPDATE iem_item SET nombre='Acepto mis sentimientos como propios
' WHERE id_item=60;
UPDATE iem_item SET nombre='Les hago saber a los dem�s cu�ndo est�n haciendo un buen trabajo
' WHERE id_item=61;
UPDATE iem_item SET nombre='Expreso mis emociones a�n cuando sean negativas
' WHERE id_item=62;
UPDATE iem_item SET nombre='Les hago saber a los dem�s lo que quiero y lo que necesito
' WHERE id_item=63;
UPDATE iem_item SET nombre='Mis amigos m�s cercanos dir�an que yo expreso mi aprecio por ellos
' WHERE id_item=64;
UPDATE iem_item SET nombre='Me guardo mis sentimientos para m� solo
' WHERE id_item=65;
UPDATE iem_item SET nombre='Les hago saber a los dem�s cuando sentimientos desagradables intervienen en la manera como trabajamos
' WHERE id_item=66;
UPDATE iem_item SET nombre='Me cuesta trabajo pedir ayuda cuando la necesito
' WHERE id_item=67;
UPDATE iem_item SET nombre='Al tratar con los dem�s puedo percibir c�mo se sienten
' WHERE id_item=68;
UPDATE iem_item SET nombre='Har�a cualquier cosa por no parecer tonto ante mis compa�eros
' WHERE id_item=69;
UPDATE iem_item SET nombre='Puedo reconocer las emociones de otros mir�ndolos a los ojos
' WHERE id_item=70;
UPDATE iem_item SET nombre='Me cuesta trabajo hablar con personas que no comparten mis puntos de vista
' WHERE id_item=71;
UPDATE iem_item SET nombre='Me concentro de las cualidades positivas de los dem�s
' WHERE id_item=72;
UPDATE iem_item SET nombre='Rara vez siento ganas de re�ir a otro
' WHERE id_item=73;
UPDATE iem_item SET nombre='Pienso c�mo se sentir�n los dem�s antes de expresar mi opini�n
' WHERE id_item=74;
UPDATE iem_item SET nombre='Con cualquiera que hablo siempre lo escucho con atenci�n
' WHERE id_item=75;
UPDATE iem_item SET nombre='Puedo presentir el �nimo de un grupo cuando entro en un sal�n
' WHERE id_item=76;
UPDATE iem_item SET nombre='Yo puedo hacer que personas que acabo de conocer hablen de s� mismas
' WHERE id_item=77;
UPDATE iem_item SET nombre='S� leer entre l�neas  cuando alguien est� hablando
' WHERE id_item=78;
UPDATE iem_item SET nombre='Generalmente s� como piensan los dem�s sobre m�
' WHERE id_item=79;
UPDATE iem_item SET nombre='Puedo presentir los sentimientos de una persona aunque no lo exprese con palabras
' WHERE id_item=80;
UPDATE iem_item SET nombre='Cambio mi expresi�n emocional seg�n la persona con quien est�
' WHERE id_item=81;
UPDATE iem_item SET nombre='S� cuando un amigo est� preocupado
' WHERE id_item=82;
UPDATE iem_item SET nombre='Puedo excluir toda distracci�n cuando tengo que concentrarme
' WHERE id_item=83;
UPDATE iem_item SET nombre='Generalmente termino lo que comienzo
' WHERE id_item=84;
UPDATE iem_item SET nombre='S� decir no cuando es necesario
' WHERE id_item=85;
UPDATE iem_item SET nombre='S� recompensarme a m� mismo despu�s de alcanzar una meta
' WHERE id_item=86;
UPDATE iem_item SET nombre='Puedo hacer a un lado las recompensas a corto plazo a cambio de una meta a largo plazo
' WHERE id_item=87;
UPDATE iem_item SET nombre='Puedo concentrarme completamente en una tarea cuando es necesario
' WHERE id_item=88;
UPDATE iem_item SET nombre='Hago cosas que despu�s me arrepiento
' WHERE id_item=89;
UPDATE iem_item SET nombre='Acepto la responsabilidad de manejar mis emociones
' WHERE id_item=90;
UPDATE iem_item SET nombre='Cuando me veo con un problema me gusta despacharlo lo m�s pronto posible
' WHERE id_item=91;
UPDATE iem_item SET nombre='Pienso qu� es lo que quiero antes de actuar
' WHERE id_item=92;
UPDATE iem_item SET nombre='Puedo aplazar mi satisfacci�n personal a cambio de una meta m�s grande
' WHERE id_item=93;
UPDATE iem_item SET nombre='Cuando estoy de mal humor puedo superarlo hablando
' WHERE id_item=94;
UPDATE iem_item SET nombre='Me da rabia cuando me critican
' WHERE id_item=95;
UPDATE iem_item SET nombre='No s� cu�l es el origen en mi enfado en muchas situaciones
' WHERE id_item=96;
UPDATE iem_item SET nombre='He recomendado proyectos novedosos a mi compa��a
' WHERE id_item=97;
UPDATE iem_item SET nombre='Participo en compartir informaci�n e ideas
' WHERE id_item=98;
UPDATE iem_item SET nombre='Sue�o con el futuro para ayudarme a pensar hacia d�nde voy
' WHERE id_item=99;
UPDATE iem_item SET nombre='Mis mejores ideas me vienen cuando no estoy pensando en ellas
' WHERE id_item=100;
UPDATE iem_item SET nombre='Tengo ideas brillantes que me han venido de pronto y ya completamente formadas
' WHERE id_item=101;
UPDATE iem_item SET nombre='Tengo un buen sentido de cu�ndo las ideas tendr�n �xito o fracasar�n
' WHERE id_item=102;
UPDATE iem_item SET nombre='Me fascinan los conceptos nuevos e inusuales
' WHERE id_item=103;
UPDATE iem_item SET nombre='He implementado proyectos novedosos en mi compa��a
' WHERE id_item=104;
UPDATE iem_item SET nombre='Me entusiasman las ideas y soluciones nuevas
' WHERE id_item=105;
UPDATE iem_item SET nombre='Me desempe�o bien haciendo tormentas de ideas para generar opciones sobre un problema
' WHERE id_item=106;
UPDATE iem_item SET nombre='Puedo reaccionar despu�s de haberme sentido desilusionado
' WHERE id_item=107;
UPDATE iem_item SET nombre='Puedo realizar lo que necesito si me dedico a ello
' WHERE id_item=108;
UPDATE iem_item SET nombre='Obst�culos o problemas en mi vida han producido cambios inesperados para mejorar
' WHERE id_item=109;
UPDATE iem_item SET nombre='Encuento f�cil esperar con paciencia cuando es necesario
' WHERE id_item=110;
UPDATE iem_item SET nombre='Siempre hay m�s de una respuesta correcta
' WHERE id_item=111;
UPDATE iem_item SET nombre='S� c�mo dar satisfacci�n a todas las partes de m� mismo
' WHERE id_item=112;
UPDATE iem_item SET nombre='No me gusta dejar para ma�ana lo que se pueda hacer hoy
' WHERE id_item=113;
UPDATE iem_item SET nombre='Temo ensayar otra vez una cosa que ya me ha fallado antes
' WHERE id_item=114;
UPDATE iem_item SET nombre='Pienso que hay problemas por los cuales no vale la pena preocuparse
' WHERE id_item=115;
UPDATE iem_item SET nombre='Yo me despreocupo cuando la tensi�n aumenta
' WHERE id_item=116;
UPDATE iem_item SET nombre='Puedo ver al aspecto humor�stico de las situaciones
' WHERE id_item=117;
UPDATE iem_item SET nombre='A menudo dejo una cosa a un lado por un tiempo para obtener una nueva perspectiva
' WHERE id_item=118;
UPDATE iem_item SET nombre='Cuando encuentro un problema me concentro en qu� se puede hacer para resolverlo
' WHERE id_item=119;
UPDATE iem_item SET nombre='Puedo lamentarme cuando pierdo algo que es muy importante para mi
' WHERE id_item=120;
UPDATE iem_item SET nombre='Me siento inc�modo cuando alguien se acerca demasiado a m� emocionalmente
' WHERE id_item=121;
UPDATE iem_item SET nombre='Tengo varios amigos con quienes puedo contar en caso de dificultades
' WHERE id_item=122;
UPDATE iem_item SET nombre='Muestro indicador1 amor y afecto a mis amigos
' WHERE id_item=123;
UPDATE iem_item SET nombre='Cuando tengo un problema, s� a qui�n acudir o qu� hacer para ayudar a resolverlo
' WHERE id_item=124;
UPDATE iem_item SET nombre='Mis creencias y valores gu�an mi conducta diaria
' WHERE id_item=125;
UPDATE iem_item SET nombre='Mi familia est� siempre conmigo cuando la necesito
' WHERE id_item=126;
UPDATE iem_item SET nombre='Dudo de que mis colegas realmente me aprecien como persona
' WHERE id_item=127;
UPDATE iem_item SET nombre='Me cuesta trabajo hacer amistades
' WHERE id_item=128;
UPDATE iem_item SET nombre='Rara vez lloro
' WHERE id_item=129;
UPDATE iem_item SET nombre='Puedo contradecir con eficacia para producir un cambio
' WHERE id_item=131;
UPDATE iem_item SET nombre='No expresar�a mis sentimientos si creyera que con ello causar�a un desacuerdo
' WHERE id_item=132;
UPDATE iem_item SET nombre='En el fondo, yo s�lo puedo confiar en m� mismo para hacer las cosas
' WHERE id_item=133;
UPDATE iem_item SET nombre='Permanezo en calma aun en situaciones en que los dem�s se irritan
' WHERE id_item=134;
UPDATE iem_item SET nombre='Es mejor no alborotar problemas si se pueden evitar
' WHERE id_item=135;
UPDATE iem_item SET nombre='Me cuesta trabajo obtener consenso de mi equipo de trabajo
' WHERE id_item=136;
UPDATE iem_item SET nombre='Pido retroinformaci�n a mis colegas sobre mi rendimiento
' WHERE id_item=137;
UPDATE iem_item SET nombre='Tengo habilidad para organizar y motivar grupos de personas
' WHERE id_item=138;
UPDATE iem_item SET nombre='Me gusta hacer frente a los problemas en el trabajo y resolverlos
' WHERE id_item=139;
UPDATE iem_item SET nombre='Escucho la cr�tica con mente abierta y la acepto cuando es justa
' WHERE id_item=140;
UPDATE iem_item SET nombre='Dejo que las cosas crezcan hasta el punto cr�tico antes de hablar de ellas
' WHERE id_item=141;
UPDATE iem_item SET nombre='Cuando hago un comentario cr�tico, me concentro en la conducta y no en la persona
' WHERE id_item=142;
UPDATE iem_item SET nombre='Evito las disputas
' WHERE id_item=143;
UPDATE iem_item SET nombre='Yo puedo ver la mortificaci�n de los dem�s, aunque no la mencionen
' WHERE id_item=144;
UPDATE iem_item SET nombre='Puedo leer las emociones de la gente por sus ademanes
' WHERE id_item=145;
UPDATE iem_item SET nombre='Act�o con �tica en mi trato con los dem�s
' WHERE id_item=146;
UPDATE iem_item SET nombre='No vacilar�a en hacer un esfuerzo extra por ayudar a una persona que est� en dificultades
' WHERE id_item=147;
UPDATE iem_item SET nombre='Tengo en cuenta los sentimientos de los dem�s en mi trato con ellos
' WHERE id_item=148;
UPDATE iem_item SET nombre='Me puedo poner en el lugar de otra persona
' WHERE id_item=149;
UPDATE iem_item SET nombre='Hay personas a quienes jam�s perdono
' WHERE id_item=150;
UPDATE iem_item SET nombre='Puedo perdonarme a m� mismo por no ser perfecto
' WHERE id_item=151;
UPDATE iem_item SET nombre='Cuando tengo �xito en algo, me parece que pod�a haberlo hecho mejor
' WHERE id_item=152;
UPDATE iem_item SET nombre='Ayudo a los dem�s a quedar bien en situaciones dif�ciles
' WHERE id_item=153;
UPDATE iem_item SET nombre='Constantemente me preocupo por mis deficiencias
' WHERE id_item=154;
UPDATE iem_item SET nombre='Envidio a los que tienen m�s que yo
' WHERE id_item=155;
UPDATE iem_item SET nombre='Veo el lado bueno de las cosas
' WHERE id_item=156;
UPDATE iem_item SET nombre='Amo mi vida
' WHERE id_item=157;
UPDATE iem_item SET nombre='S� que puedo encontrar soluciones a problemas dif�ciles
' WHERE id_item=158;
UPDATE iem_item SET nombre='Creo que las cosas generalmente salen bien
' WHERE id_item=159;
UPDATE iem_item SET nombre='Continuamente me he visto frustrado en la vida por la mala suerte
' WHERE id_item=160;
UPDATE iem_item SET nombre='Me gusta ser el que soy
' WHERE id_item=162;
UPDATE iem_item SET nombre='Veo los retos como oportunidades para aprender
' WHERE id_item=163;
UPDATE iem_item SET nombre='Bajo presi�n estoy seguro de que encontrar� una soluci�n
' WHERE id_item=164;
UPDATE iem_item SET nombre='A veces tengo la soluci�n correcta sin tener las razones
' WHERE id_item=165;
UPDATE iem_item SET nombre='Mis corazonadas suelen ser acertadas
' WHERE id_item=166;
UPDATE iem_item SET nombre='Visualizo mis metas futuras
' WHERE id_item=167;
UPDATE iem_item SET nombre='Puedo ver el producto terminado o el cuadro antes de que est�n completos
' WHERE id_item=168;
UPDATE iem_item SET nombre='Creo en mis sue�os aun cuando otros no los vean ni los entiendan
' WHERE id_item=169;
UPDATE iem_item SET nombre='Cuando me veo ante una elecci�n dif�cil, sigo mi coraz�n
' WHERE id_item=170;
UPDATE iem_item SET nombre='Presto atenci�n cuando las cosas no me parecen del todo bien
' WHERE id_item=171;
UPDATE iem_item SET nombre='Una vez que me he decidido, rara vez cambio de opini�n
' WHERE id_item=172;
UPDATE iem_item SET nombre='La gente dice que yo soy un visionario
' WHERE id_item=173;
UPDATE iem_item SET nombre='Cuando alguien presenta una opini�n distinta de la m�a, me cuesta trabajo aceptarla
' WHERE id_item=174;
UPDATE iem_item SET nombre='Uso mis reacciones intuitivas para tomar decisiones dif�ciles
' WHERE id_item=175;
UPDATE iem_item SET nombre='Todos se aprovechar�a de m� si yo los dejara
' WHERE id_item=176;
UPDATE iem_item SET nombre='Conf�o en los dem�s hasta que tenga razones para no confiar
' WHERE id_item=177;
UPDATE iem_item SET nombre='Tengo cuidado para decidirme a confiar en una persona
' WHERE id_item=178;
UPDATE iem_item SET nombre='Respeto a mis colegas
' WHERE id_item=179;
UPDATE iem_item SET nombre='Las personas parecidas a m� en mi compa��a han recibido m�s beneficios que yo v.gr., aumentos de sueldo, ascensos, oportunidades, recompensas, etc
' WHERE id_item=181;
UPDATE iem_item SET nombre='Las personas a quienes trato son dignas de confianza
' WHERE id_item=182;
UPDATE iem_item SET nombre='Parece que yo siempre salgo defraudado
' WHERE id_item=183;
UPDATE iem_item SET nombre='Muy poco en la vida es justo o equitativo
' WHERE id_item=184;
UPDATE iem_item SET nombre='Cuando algo no funciona, yo trato de presentar un plan alterno
' WHERE id_item=185;
UPDATE iem_item SET nombre='Cuando conozco a una persona nueva, descubro muy poco de informaci�n personal sobre m� mismo
' WHERE id_item=186;
UPDATE iem_item SET nombre='Yo puedo lograr que las cosas se hagan
' WHERE id_item=187;
UPDATE iem_item SET nombre='La suerte hace un papel muy importante en mi vida
' WHERE id_item=188;
UPDATE iem_item SET nombre='Encuentro in�til luchar con la jerarqu�a establecida en mi compa��a
' WHERE id_item=189;
UPDATE iem_item SET nombre='Las circunstancias est�n fuera de mi control
' WHERE id_item=190;
UPDATE iem_item SET nombre='Necesito reconocimiento de los dem�s para que mi trabajo valga la pena
' WHERE id_item=191;
UPDATE iem_item SET nombre='Es f�cil que los dem�s gusten de m�
' WHERE id_item=192;
UPDATE iem_item SET nombre='Me cuesta mucho trabajo aceptar cumplidos
' WHERE id_item=193;
UPDATE iem_item SET nombre='Tengo la habilidad de conseguir lo que quiero
' WHERE id_item=194;
UPDATE iem_item SET nombre='Siento que controlo mi vida
' WHERE id_item=195;
UPDATE iem_item SET nombre='Si reflexiono sobre mi vida, podr�a sentir que b�sicamente no soy feliz
' WHERE id_item=196;
UPDATE iem_item SET nombre='Me siento asustado y creo que no tengo control de las cosas cuando �stas cambian r�pidamente
' WHERE id_item=197;
UPDATE iem_item SET nombre='Me gusta encargarme de una cosa
' WHERE id_item=198;
UPDATE iem_item SET nombre='Yo s� lo que quiero y lo busco
' WHERE id_item=199;
UPDATE iem_item SET nombre='Cuando cometo un error estoy dispuesto a reconocerlo
' WHERE id_item=201;
UPDATE iem_item SET nombre='Siento que estoy enga�ando a los dem�s
' WHERE id_item=202;
UPDATE iem_item SET nombre='Si no me apasionara mi trabajo, cambiar�a de oficio
' WHERE id_item=203;
UPDATE iem_item SET nombre='Mi oficio es una extensi�n de mi sistema personal de valores
' WHERE id_item=204;
UPDATE iem_item SET nombre='Jam�s digo una mentira
' WHERE id_item=205;
UPDATE iem_item SET nombre='Encuentro que me dejo llevar por una situaci�n aun cuando no est� de acuerdo con ella
' WHERE id_item=206;
UPDATE iem_item SET nombre='Exagero mis habilidades para poder avanzar
' WHERE id_item=207;
UPDATE iem_item SET nombre='Digo la verdad aun cuando sea dif�cil
' WHERE id_item=208;
UPDATE iem_item SET nombre='He hecho en mi oficio cosas contrarias a mis principios
' WHERE id_item=209;
UPDATE iem_item SET nombre='Dolor de espalda
' WHERE id_item=210;
UPDATE iem_item SET nombre='Poblemas de peso (p�rdida o exceso de peso)
' WHERE id_item=211;
UPDATE iem_item SET nombre='Dolores de cabeza
' WHERE id_item=212;
UPDATE iem_item SET nombre='Jaquecas
' WHERE id_item=213;
UPDATE iem_item SET nombre='Catarros o problemas respiratorios
' WHERE id_item=214;
UPDATE iem_item SET nombre='Porblemas del est�mago (gases frecuentes, s�ndrome de irritabilidad intestinal, o �lceras)
' WHERE id_item=215;
UPDATE iem_item SET nombre='Dolor de pecho
' WHERE id_item=216;
UPDATE iem_item SET nombre='Dolores inexplicables
' WHERE id_item=217;
UPDATE iem_item SET nombre='Otros dolores cr�nicos no anotados en la lista anterior
' WHERE id_item=218;
UPDATE iem_item SET nombre='Alimentaci�n (p�rdida del apetito, como con exceso, no tengo tiempo de comer)
' WHERE id_item=219;
UPDATE iem_item SET nombre='Fumo
' WHERE id_item=220;
UPDATE iem_item SET nombre='Tomo calmantes
' WHERE id_item=221;
UPDATE iem_item SET nombre='Tomo aspirina u otros analg�sicos
' WHERE id_item=222;
UPDATE iem_item SET nombre='Tomo otras drogas
' WHERE id_item=223;
UPDATE iem_item SET nombre='Huyo de las relaciones estrechas o cercanas
' WHERE id_item=224;
UPDATE iem_item SET nombre='Critico, culpo o ridiculizo a los dem�s
' WHERE id_item=225;
UPDATE iem_item SET nombre='Me siento v�ctima, o siento que se aprovechan de m�
' WHERE id_item=226;
UPDATE iem_item SET nombre='Veo TV m�s de dos horas al d�a
' WHERE id_item=227;
UPDATE iem_item SET nombre='Practico juegos de video o computador, o uso la internet (m�s de dos horas al d�a)
' WHERE id_item=228;
UPDATE iem_item SET nombre='Me fastidian las personas con quienes me encuentro
' WHERE id_item=229;
UPDATE iem_item SET nombre='Accidentes o heridas
' WHERE id_item=230;
UPDATE iem_item SET nombre='Me cuesta trabajo concentrarme
' WHERE id_item=231;
UPDATE iem_item SET nombre='Me abruma el trabajo
' WHERE id_item=232;
UPDATE iem_item SET nombre='Me distraigo f�cilmente
' WHERE id_item=233;
UPDATE iem_item SET nombre='No puedo quitarme una cosa de la cabeza y estoy siempre preocupado
' WHERE id_item=234;
UPDATE iem_item SET nombre='Me siento deprimido, desalentado o sin esperanza
' WHERE id_item=235;
UPDATE iem_item SET nombre='Me siento solo
' WHERE id_item=236;
UPDATE iem_item SET nombre='Pierdo la memoria
' WHERE id_item=237;
UPDATE iem_item SET nombre='Me siento fatigado o abrumado
' WHERE id_item=238;
UPDATE iem_item SET nombre='Me cuesta trabajo resolverme o tomar decisiones
' WHERE id_item=239;
UPDATE iem_item SET nombre='Me cuesta trabajo empezar o tranquilizarme
' WHERE id_item=240;
UPDATE iem_item SET nombre='Estoy muy satisfecho con mi vida
' WHERE id_item=241;
UPDATE iem_item SET nombre='Me siento en�rgico, feliz y lleno de salud
' WHERE id_item=242;
UPDATE iem_item SET nombre='Tengo sentimiento de paz interior y bienestar
' WHERE id_item=243;
UPDATE iem_item SET nombre='Necesitar�a hacer indicador1s cambios en mi vida para ser realmente feliz
' WHERE id_item=244;
UPDATE iem_item SET nombre='Mi vida satisface mis m�s hondas necesidades
' WHERE id_item=245;
UPDATE iem_item SET nombre='He obtenido menos de lo que esperaba de la vida
' WHERE id_item=246;
UPDATE iem_item SET nombre='Me gusta ser exactamente como soy
' WHERE id_item=247;
UPDATE iem_item SET nombre='Para mi el trabajo es una diversi�n
' WHERE id_item=248;
UPDATE iem_item SET nombre='He encontrado trabajo significativo
' WHERE id_item=249;
UPDATE iem_item SET nombre='Voy por un camino que me trae satisfacci�n
' WHERE id_item=250;
UPDATE iem_item SET nombre='He aprovechado al m�ximo mis capacidades
' WHERE id_item=251;
UPDATE iem_item SET nombre='Hay personas con quienes me conecto a un nivel m�s hondo
' WHERE id_item=252;
UPDATE iem_item SET nombre='Soy franco con las personas cercanas a mi y ellas lo son conmigo
' WHERE id_item=253;
UPDATE iem_item SET nombre='He amado profundamente a otra persona
' WHERE id_item=254;
UPDATE iem_item SET nombre='Generalmente encuentro personas con quienes hacer vida social
' WHERE id_item=255;
UPDATE iem_item SET nombre='Soy capaz de hacer compromisos a largo plazo con otra persona
' WHERE id_item=256;
UPDATE iem_item SET nombre='S� que soy importa para los que est�n m�s cerca de m�
' WHERE id_item=257;
UPDATE iem_item SET nombre='Encuentro f�cil decirles a los dem�s
' WHERE id_item=258;
UPDATE iem_item SET nombre='Estoy satisfecho con mi desempe�o en el trabajo
' WHERE id_item=259;
UPDATE iem_item SET nombre='Mis compa�eros de trabajo dir�an que yo facilito buenas comunicaciones entre los miembros de mi grupo
' WHERE id_item=260;
UPDATE iem_item SET nombre='Me siento distante en el trabajo y no participante
' WHERE id_item=261;
UPDATE iem_item SET nombre='Me es dif�cil prestar atenci�n a las tareas de trabajo
' WHERE id_item=262;
UPDATE iem_item SET nombre='En mi equipo de trabajo participo en la toma de decisiones
' WHERE id_item=263;
UPDATE iem_item SET nombre='Me cuesta trabajo cumplir los compromisos o completar las tareas
' WHERE id_item=264;
UPDATE iem_item SET nombre='Mi rendimiento en el trabajo es siempre el mejor de que soy capaz' WHERE id_item=265;
