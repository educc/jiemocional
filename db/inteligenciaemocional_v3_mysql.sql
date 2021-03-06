/*
	AUTOR:
		Cacho Casas Edward
		Alza Mesa Arturo
	VERSION:
		3.0
	FECHA:
		14 de diciembre de 2011
*/

CREATE TABLE iem_seccion (
	id_seccion INT NOT NULL PRIMARY KEY ,
	nombre VARCHAR( 100 ) NOT NULL 
);

CREATE TABLE iem_escala (
	id_escala 		INT NOT NULL PRIMARY KEY ,
	id_seccion		INT NOT NULL REFERENCES iem_seccion(id_seccion),
	nombre			VARCHAR( 80 ) NOT NULL ,
	descripcion 	VARCHAR( 200 ) NOT NULL ,
	indicador1		varchar(50) NOT NULL,
	indicador2		varchar(50) NOT NULL,
	indicador3		varchar(50) NOT NULL,
	indicador4		varchar(50) NOT NULL
);

CREATE TABLE iem_item (
	id_item 			INT NOT NULL PRIMARY KEY ,
	nombre 				VARCHAR( 400 ) NOT NULL ,
	indicador1 			INT( 1 ) NOT NULL , /*mucho*/
	indicador2 			INT( 1 ) NOT NULL , /*moderado*/
	indicador3 			INT( 1 ) NOT NULL , /*poco*/
	indicador4 			INT( 1 ) NOT NULL , /*nada*/
	id_escala 			INT NOT NULL 
);

CREATE TABLE iem_usuario (
	id_usuario		INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	nombre			VARCHAR( 50 ) NOT NULL ,
	contrasenia 	VARCHAR( 50 ) NOT NULL
);

create table iem_test (
	id_test			INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	fecha			DATE NOT NULL,
	id_usuario		INT NOT NULL REFERENCES iem_usuario(id_usuario)
);

CREATE TABLE iem_respuestasTest (
	id_test			INT NOT NULL REFERENCES iem_test(id_test),
	id_item			INT NOT NULL REFERENCES iem_item(id_item),
	valor			INT NOT NULL
);

/*INSERCION DE SECCIONES */

INSERT INTO iem_seccion (id_seccion, nombre) values (1,'Ambiente General');
INSERT INTO iem_seccion (id_seccion, nombre) values (2,'Conocimiento Emocional');
INSERT INTO iem_seccion (id_seccion, nombre) values (3,'Competencias de CE');
INSERT INTO iem_seccion (id_seccion, nombre) values (4,'Valores de CE y creencias');
INSERT INTO iem_seccion (id_seccion, nombre) values (5,'Resultados de CE');

/*INSERCION DE  ESCALAS*/

INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(1,'Sucesos de la Vida','Piense en el a�o pasado. En la lista siguiente cu�nta aflicci�n le caus� cada uno de de los sucesos de trabajo y personales que se anotan',1,'Mucha','Moderada','Poca','Nada / No Ocurri�');
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(2,'Presiones del trabajo','Piense en el mes pasado. En la lista siguiente indique cu�nta aficci�n le produjo cada uan de las presiones del trabajo que se anotan',1,'Mucha','Moderada','Poca','Nada / No Ocurri�') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(3,'Presiones personales','Piense en el mes pasado. En la lista siguiente indique cu�nta aficci�n le produjo cada uan de las presiones personales que se anotan',1,'Mucha','Moderada','Poca','Nada / No Ocurri�') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(4,'Conciencias emocionales en s� mismo','En la lista siguiente indique c�mo describe cada regl�n la manera como usted piensa y siente sobre usted',2,'Mucha','Moderadamente bien','Un poco','Nada / No Ocurri�') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(5,'Expresi�n emocional','En la lista siguiente indique c�mo describe cada regl�n la manera como usted piensa y siente sobre usted actualmente',2,'Muy bien','Moderadamente bien','Un poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(6,'Concienca emocional de otros','En la lista siguiente indique c�mo describe cada regl�n la manera como usted piensa y siente como usted actualmente ',2,'Mucha','Moderada','Un poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(7,'Intenci�n','piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',3,'Mucho','Moderado','Un Poco','Nada bien'); 
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(8,'Creatividad','piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',3,'Mucho','Moderado','Un Poco','Nada bien'); 
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(9,'Elasticidad','piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',3,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(10,'Conexiones interpersonales','piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',3,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(11,'Descontento constructivo','piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',3,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(12,'Compasi�n','piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',4,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(13,'Perspectiva','piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n ',4,'Mucho','Moderado','Un Poco','Nada bien'); 
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(14,'Intuici�n','piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',4,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(15,'Radio de Confianza','piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',4,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(16,'Poder personal','piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',4,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(17,'Integridad','piense en el mes pasado. El la lista siguiente indique c�mo describe cada rengl�n su conducta o intensi�n',4,'Mucho','Moderado','Un Poco','Nada bien') ;
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
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (114,'Temo ensayar otra vez una cosa que ya me ha fallado antes',9,3,2,1,0);
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
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (173,'la gente dice que yo soy un visionario',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (174,'cuando alguien presenta una opini�n distinta de la m�a, me cuesta trabajo aceptarla',14,3,2,1,0);
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
