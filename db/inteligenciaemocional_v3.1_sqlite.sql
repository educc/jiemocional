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

INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(1,'Sucesos de la Vida','Piense en el año pasado. En la lista siguiente cuánta aflicción le causó cada uno de de los sucesos de trabajo y personales que se anotan',1,'Mucha','Moderada','Poca','Nada / No Ocurrió');
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(2,'Presiones del trabajo','Piense en el mes pasado. En la lista siguiente indique cuánta aflicción le produjo cada una de las presiones del trabajo que se anotan',1,'Mucha','Moderada','Poca','Nada / No Ocurrió') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(3,'Presiones personales','Piense en el mes pasado. En la lista siguiente indique cuánta aflicción le produjo cada una de las presiones personales que se anotan',1,'Mucha','Moderada','Poca','Nada / No Ocurrió') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(4,'Conciencias emocionales en sí mismo','En la lista siguiente indique cómo describe cada reglón la manera como usted piensa y siente sobre usted',2,'Mucha','Moderadamente bien','Un poco','Nada / No Ocurrió') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(5,'Expresión emocional','En la lista siguiente indique cómo describe cada reglón la manera como usted piensa y siente sobre usted actualmente',2,'Muy bien','Moderadamente bien','Un poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(6,'Concienca emocional de otros','En la lista siguiente indique cómo describe cada reglón la manera como usted piensa y siente como usted actualmente ',2,'Mucha','Moderada','Un poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(7,'Intención','Piense en el mes pasado. El la lista siguiente indique cómo describe cada renglón su conducta o intensión',3,'Mucho','Moderado','Un Poco','Nada bien'); 
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(8,'Creatividad','Piense en el mes pasado. El la lista siguiente indique cómo describe cada renglón su conducta o intensión',3,'Mucho','Moderado','Un Poco','Nada bien'); 
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(9,'Elasticidad','Piense en el mes pasado. El la lista siguiente indique cómo describe cada renglón su conducta o intensión',3,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(10,'Conexiones interpersonales','Piense en el mes pasado. El la lista siguiente indique cómo describe cada renglón su conducta o intensión',3,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(11,'Descontento constructivo','Piense en el mes pasado. El la lista siguiente indique cómo describe cada renglón su conducta o intensión',3,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(12,'Compasión','Piense en el mes pasado. El la lista siguiente indique cómo describe cada renglón su conducta o intensión',4,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(13,'Perspectiva','Piense en el mes pasado. El la lista siguiente indique cómo describe cada renglón su conducta o intensión ',4,'Mucho','Moderado','Un Poco','Nada bien'); 
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(14,'Intuición','Piense en el mes pasado. El la lista siguiente indique cómo describe cada renglón su conducta o intensión',4,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(15,'Radio de Confianza','Piense en el mes pasado. El la lista siguiente indique cómo describe cada renglón su conducta o intensión',4,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(16,'Poder personal','Piense en el mes pasado. El la lista siguiente indique cómo describe cada renglón su conducta o intensión',4,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(17,'Integridad','Piense en el mes pasado. En la lista siguiente indique cómo describe cada renglón su conducta o intención',4,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(18,'Salud General','Piense en el mes pasado con qué fecuencia a experimentado los síntomas siguientes',5,'Nunca','Uno o dos veces al mes','Todas las semanas','Casi todos los días') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(19,'Calidad de la vida','En la lista siguiente indique cómo describe cada reglón la manera como usted piensa y siente sobre usted actualmente',5,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(20,'Cociente de relaciones','En la lista siguiente indique cómo describe cada reglón la manera como usted piensa y siente sobre usted actualmente',5,'Mucho','Moderado','Un Poco','Nada bien') ;
INSERT INTO iem_escala (id_escala,nombre,descripcion,id_seccion,indicador1,indicador2,indicador3,indicador4)values(21,'Óptimo rendimiento','En la lista siguiente indique cómo describe cada reglón la manera como usted piensa y siente sobre usted actualmente',5,'Mucho','Moderado','Un Poco','Nada bien') ;



/*INSERCION DE  ITEMS*/

/*Escala 1:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (1,'Despedido o renunció o es jubiló',1,3,2,1,0);	
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (2,'Nuevo empleo o compañía',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (3,'Nuevo tipo de trabajo ',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (4,'reduccion o reorganización en la compañia',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (5,'Algún otro cambio en el trabajo, no incluido en la lista anterior que le produjo angustia',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (6,'Pérdida económica o reducción de ingresos',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (7,'Muerto de un amigo intimo o miembro de familia',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (8,'Mudanza o traslado',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (9,'Su separación o divorcio',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (10,'Su matrimonio',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (11,'Compró una nueva casa',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (12,'Fue víctima de un crimen',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (13,'Nacimiento de un hijo, adopción, hijastros u otras personas agregadas al hogar',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (14,'Complicación en sistema judicial',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (15,'Seria enfermedad personal o heridas',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (16,'Seria enfermedad o lesiones de un amigo íntimo o miembro de la familia',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (17,'Aumento de responsabilidades de cuidar de un pariente viejo o inválido',1,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (18,'Cualquier otro cambio no incluido en la lista anterior que le produjo angustia',1,3,2,1,0);


/*Escala 2:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (19,'Seguridad del empleo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (20,'Relaciones con el jefe inmediato',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (21,'Cambio de prioridades en el trabajo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (22,'Relaciones con compañeros de trabajo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (23,'Oportunidad de avanzar y desarrollarse',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (24,'Exeso de trabajo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (25,'Control de la carga de trabajo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (26,'Falta de flexibilidad para hacer frente a emergencias de familia o personales ',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (27,'Favorismo o injusticia en politicas de contratación y ascensos en el trabajo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (28,'Constante vigilancia de su desempeño en el oficio',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (29,'Trabajo aburrido o poca interesante',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (30,'Especial reconocimiento o premio en su oficio',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (31,'Presión por conflicto de fechas limites',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (32,'Péridida de devoción al trabajo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (33,'Se siente aprisionado en el papeleo e incapaz de realizar cosa alguna',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (34,'Felxibilidad de horas de trabajo',2,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (35,'El transporte de ida y regreso al trabajo',2,3,2,1,0);

/*Escala 3:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (36,'Dificultades Financieras',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (37,'Aumento de responsabilidades de cuidar de un adulto viejo o un pariente inválido',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (38,'Desavenencia con socio o cónyuge',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (39,'Crianza de un hijo',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (40,'Estar separar separado del marido o la esposa',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (41,'Deterioro de la salud personal',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (42,'Encontrar quién cuide del niño, o problemas con actual situación de dicho cuidado',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (43,'No tiene tiempo suficiente para pasar con los que están más cerca de usted',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (44,'Vecindario peligroso o no seguro',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (45,'Relaciones con un pariente íntimo (padres,hermanos, yernos)',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (46,'Conflictos sexuales o frustaciones',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (47,'Coflicto trabajo-familiar',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (48,'Soledad o falta de intimidad',3,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (49,'Cuestiones de fecundidad o reproduccción',3,3,2,1,0);

 
/*Escala 4:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (50,'Puedo nombrar mis sentimientos',4,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (51,'He aprendido mucha acerca de mi mismo escuchando mis sentimientos',4,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (52,'Soy consiente de mis sentimientos la mayor parte del timpo',4,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (53,'Sé cuendo me estoy alterando',4,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (54,'Cuando estoy triste, sé por qué',4,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (55,'Me juzgo a mi mismo por la manera como creo que los demás me ven ',4,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (56,'Gozo de mi vida emosional',4,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (57,'Me asustan las personas que muestran fuertes emociones',4,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (58,'A veces quiciera ser otra persona',4,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (59,'Presto atención a mi estado físico para entender mis sentimientos',4,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (60,'Acepto mis sentimientos como propios',4,3,2,1,0);

/*Escala 5:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (61,'Les hago saber a los demás cuándo están haciendo un buen trabajo',5,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (62,'Expreso mis emociones aún cuando sean negativas',5,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (63,'Les hago saber a los demás lo que quiero y lo que necesito ',5,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (64,'Mis amigos íntimos dirían que yo expreso mi aprecio por ellos',5,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (65,'Me guado mis sentimientos para mí solo',5,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (66,'Les hago saber a los demás cuando sentimiento desagradables intervienen en la manera como tabajamos',5,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (67,'Me cuesta trabajo pedir ayuda cuando la necesito',5,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (68,'Al tratar con los demás puedo percibir como se sienten',5,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (69,'Haría cualquier cosa por no parecer tonto ante mis compañeros',5,0,1,2,3);


/*Escala 6:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (70,'Puedo reconocer las emociones de otros mirandolos a los ojos',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (71,'Me cuesta trabajo hablar con personas que no comparten mis puntos de vista',6,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (72,'Me concentro de las cualidades positivas de los demás',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (73,'Rara vez siento ganas de reñir a otro',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (74,'Pienso cómo se sentirán los demás antes de expresar mi opinión',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (75,'Con cualquiera que hablo siempre lo escucho con atención',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (76,'Puedo presentir el ánimo de un grupo cuando entro en un salón',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (77,'Yo puedo hacer que personas que acabo de conocer hablen de si mismas',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (78,'Sé "leer entre líneas " cuando alguien está hablando',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (79,'Generalmente sé como piensan los demás sobre mí',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (80,'Puedo presentir los sentimientos de una persona aunque no lo exprese con palabras',6,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (81,'Cambio mi expresión emocional según la persona con quien esté',6,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (82,'Sé cuando un amigo está preocupado',6,3,2,1,0);


/*Escala 7:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (83,'Puedo excluir toda distracción cuando tengo que concentrarme ',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (84,'Generalmente termino lo que comienzo',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (85,'Sé decir que no cuando es necesario',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (86,'Sé recompenzarme a mí mismo después de alcanzar una meta',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (87,'Puedo hacer a un lado las recompenzas a corto plazo a cambio de una meta a largo plazo',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (88,'Puedo concentrarme completamente en una tarea cuando es necesario',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (89,'hago cosas que después me arrepiento',7,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (90,'Acepto la responsabilidad de manejar mis emociones',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (91,'Cuando me veo con un preblema me gusta despacharlo lo más pronto posible',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (92,'Pienso qué es lo que quiero antes de actuar ',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (93,'Puedo aplazar mi satisfacción personal a cambio de una meta más grande',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (94,'Cuando estoy de mal humor puedo superarlo hablando ',7,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (95,'Me da rabia cuando me critican ',7,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (96,'No sé cuál es el origen en mi emfado en muchas situaciones',7,0,1,2,3);

/*Escala 8:*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (97,'He recomendado proyectos novedosos a mi compañía ',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (98,'Participo en compartir información e ideas',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (99,'Sueño con el futuro para ayduarme a pensar hacia dónde voy ',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (100,'Mis mejores ideas me vienen cuando no estoy pensando en ellas',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (101,'Tengo ideas brillantes que me han venido de pronto y ya completamente formadas',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (102,'Tengo un buen sentido de cuándo las ideas tendrán éxito o fracasarán',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (103,'Me fascinan los conceptos nuevos e inusuales',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (104,'He implementado proyectos novedosos en mi compañía',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (105,'Me entusiasman las ideas y soluciones nuevas',8,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (106,'Me desempeño bien haciendo tormentas de ideas para generar opciones sobre un problema',8,3,2,1,0);


/*Escala 9:*/


INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (107,'Puedo reacionar depués de haberme sentido desilucionado',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (108,'Puedo realizar lo que necesito si me dedico a ello',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (109,'Obstáculos o problemas en mi vida han producido cambios inesperados para mejorar',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (110,'Encuento fácil esperar con paciencia cuando es mecesario',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (111,'Siempre hay más de una respuesta correcta',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (112,'Sé cómo dar satisfacción a todas las partes de mí mismo',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (113,'No me gusta dejar para mañana lo que se pueda hacer hoy',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (114,'Temo ensayar otra vez una cosa que ya me ha fallado antes',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (115,'pienso que hay problemas por los cuales no vale la pena preocuparse',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (116,'Yo me despreocupo cuando la tensión aumenta',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (117,'Puedo ver al aspecto humorístico de las situaciones',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (118,'A menudo dejo una cosa a un lado por un tiempo para obtener una nueva perspectiva',9,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (119,'Cuando encuentro un problema me consentro en qué se puede hacer para resolverlo',9,3,2,1,0);


/*  Escala 10: */

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (120,'Puedo lamentarme cuando pierdo algo que es muy importante para mi',10,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (121,'Me siento incómodo cuando alguien se acerca demasiado a mí emocionalmente',10,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (122,'tengo varios amigos con quienes puedo contar en caso de dificultades',10,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (123,'Muestro indicador1 amor y afecto a mis amigos',10,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (124,'cuando tengo un poblema, sé a quién acudir o qué hacer para ayudar a resolverlo',10,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (125,'Mis creencias y valores guían mi conducta diaria',10,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (126,'Mi familia está siempre conmigo cuando la necesito',10,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (127,'Dudo de que mis colegas realmente me aprecien como persona',10,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (128,'Me cuesta trabajo hacer amistades',10,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (129,'Rara vez lloro',10,0,1,2,3);


/*escala 11*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (131,'Puedo contradecir con eficacia para producir un cambio',11,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (132,'No expresaría mis sentimientos si creyera que con ello causaría un desacuerdo',11,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (133,'En el fondo, yo sólo puedo confiar en mí mismo para hacer las cosas',11,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (134,'Permanezo en calma aun en situaciones en que los demás se irritan',11,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (135,'Es mejor no alborotar problemas si se pueden evitar',11,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (136,'Me cuesta trabajo obtener consenso de mi equipo de trabajo',11,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (137,'Pido retroinformación a mis colegas sobre mi rendimiento',11,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (138,'Tengo habilidad para organizar y motivar grupos de personas',11,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (139,'Me gusta hacer frente a los problemas en el trabajo y resolverlos',11,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (140,'Escucho la crítica con mente abierta y la acepto cuando es justa',11,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (141,'Dejo que las cosas crezcan hasta el punto crítico antes de hablar de ellas',11,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (142,'Cunado hago un comentario crítico, me concentro en la conducta y no en la persona',11,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (143,'Evito las disputas',11,0,1,2,3);

/*escala 12*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (144,'Yo puedo ver la mortificación de los demás, aunque no la mencionen',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (145,'Puedo leer las emociones de la gente por sus ademanes',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (146,'Actúo con ética en mi trato con los demás',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (147,'No vacilaría en hacer un esfuerzo extra por ayudar a una persona que esté en dificultades',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (148,'Tengo en cuenta los sentimientos de los demás en mi trato con ellos',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (149,'Me puedo poner en el lugar de otra persona',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (150,'Hay personas a quienes jamás perdono',12,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (151,'Puedo perdonarme a mí mismo por no ser perfecto',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (152,'Cuando tengo éxito en algo, me parece que podía haberlo hecho mejor',12,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (153,'Ayudo a los demás a quedar bien en situaciones difíciles',12,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (154,'Constantemente me preocupo por mis deficiencias',12,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (155,'Envidio a los que tienen más que yo',12,0,1,2,3);


/*Escala 13*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (156,'Veo el lado bueno de las cosas',13,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (157,'Amo mi vida',13,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (158,'Sé que puedo encontrar soluciones a problemas difíciles',13,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (159,'Creo que las cosas generalmente salen bien',13,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (160,'Continuamente me he visto frustrado en la vida por la mala suerte',13,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (162,'Me gusta ser el que soy',13,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (163,'Veo los retos como oportunidades para aprender',13,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (164,'Bajo presión estoy seguro de que encontraré una solución',13,3,2,1,0);


/*escala 14*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (165,'A veces tengo la solución correcta sin tener las razones',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (166,'Mis corazoindicador4s suelen ser acertadas',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (167,'Visualizo mis metas futuras',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (168,'Puedo ver el producto terminado o el cuadro antes de que estén completos',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (169,'Creo en mis sueños aun cuando otros no los vean ni los entiendan',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (170,'Cuando me veo ante una elección difícil, sigo mi corazón',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (171,'Presto atención cuando las cosas no me parecen del todo bien',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (172,'Una vez que me he decidido, rara vez cambio de opinión',14,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (173,'la gente dice que yo soy un visionario',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (174,'cuando alguien presenta una opinión distinta de la mía, me cuesta trabajo aceptarla',14,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (175,'Uso mis reacciones intuitivas para tomar decisiones difíciles',14,3,2,1,0);


/*escala 15*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (176,'Todos se aprovecharía de mí si yo los dejara',15,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (177,'Confío en los demás hasta que tenga razones para no confiar',15,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (178,'Tengo indicador1 cuidado para decidirme a confiar en una persona',15,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (179,'Respeto a mis colegas',15,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (181,'Las personas parecidas a mí en mi compañía han recibido más beneficios que yo v.gr., aumentos de sueldo, ascensos, oportunidades, recompensas, etc',15,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (182,'Las personas a quienes trato son dignas de confianza',15,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (183,'Parece que yo siempre salgo defraudado',15,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (184,'Muy indicador3 en la vida es justo o equitativo',15,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (185,'Cuando algo no funciona, yo trato de presentar un plan alterno',15,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (186,'Cuando conozco a una persona nueva, descubro muy indicador3 de información personal sobre mí mismo',15,0,1,2,3);

/*escala 16*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (187,'Yo puedo lograr que las cosas se hagan',16,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (188,'La suerte hace un papel muy importante en mi vida',16,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (189,'Encuentro inútil luchar con la jerarquía establecida en mi compañía',16,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (190,'Las circunstancias están fuera de mi control',16,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (191,'Necesito reconomiento de los demás para que mi trabajo valga la pena',16,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (192,'Es fácil que los demás gusten de mí',16,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (193,'Me cuesta indicador1 trabajo aceptar cumplidos',16,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (194,'Tengo la habilidad de conseguir lo que quiero',16,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (195,'Siento que controlo mi vida',16,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (196,'Si reflexiono sobre mi vida, podría sentir que básicamente no soy feliz',16,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (197,'Me siento asustado y creo que no tengo control de las cosas cuando éstas cambian rápidamente',16,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (198,'Me gusta encargarme de una cosa',16,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (199,'Yo sé lo que quiero y lo busco',16,3,2,1,0);

/*escala 17*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (201,'Cuando cometo un error estoy dispuesto a reconocerlo',17,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (202,'Siento que estoy engañando a los demás',17,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (203,'Si no me apasionara mi trabajo, cambiaría de oficio',17,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (204,'Mi oficio es una extensión de mi sistema personal de valores',17,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (205,'Jamás digo una mentira',17,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (206,'Encuentro que me dejo llevar por una situación aun cuando no esté de acuerdo con ella',17,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (207,'Exagero mis habilidades para poder avanzar',17,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (208,'Digo la verdad aun cuando sea difícil',17,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (209,'He hecho en mi oficio cosas contrarias a mis principios',17,0,1,2,3);

/*escala 18*/
	/*Sistomas fisicos*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (210,'Dolor de espalda',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (211,'Poblemas de peso (pérdida o exceso de peso)',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (212,'Dolores de cabeza',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (213,'Jaquecas',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (214,'Catarros o problemas respiratorios',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (215,'Porblemas del estómago (gases frecuentes, síndrome de irritabilidad intestinal, o úlceras)',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (216,'Dolor de pecho',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (217,'Dolores inexplicables',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (218,'Otros dolores crónicos no anotados en la lista anterior',18,0,1,2,3);


	/*sistomas de conducta*/

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (219,'Alimentación (pérdida del apetito, como con exceso, no tengo tiempo de comer)',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (220,'Fumo',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (221,'Tomo calmantes',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (222,'Tomo aspirina u otros analgésicos',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (223,'Tomo otras drogas',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (224,'Huyo de las relaciones estrechas',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (225,'Critico, culpo o ridiculizo a los demás',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (226,'Me siento víctima, o que se aprovechan de mí',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (227,'Veo TV más de dos horas al día',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (228,'Practico juegos de video o computador, o uso la internet (más de dos horas al día)',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (229,'Me fastidian las personas con quienes me encuentro',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (230,'Accidentes o heridas',18,0,1,2,3);

	/*sintomas emocionales*/
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (231,'Me cuesta trabajo concentrarme ',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (232,'Me abruma el trabajo',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (233,'Me distraigo fácimente',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (234,'No puedo quitarme una cosa de la cabeza y estoy siempre preocupado',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (235,'Me siento deprimido, desaletado o sin esperanza',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (236,'Me siento solo ',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (237,'Pierdo la memoria',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (238,'Me siento fatigado o abrumado',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (239,'Me cuesta trabajo resolverme o tomar decisiones',18,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (240,'Me cuesta trabajo empezar o tranquilizarme',18,0,1,2,3);

/* Escala 19 */

INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (241,'Estoy muy satisfecho con mi vida',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (242,'Me siento enérgico, féliz y lleno de salud',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (243,'Tengo sentimiento de paz interior y bienestar',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (244,'Necesitaría hacer indicador1s cambios en mi vida para ser realmente feliz',19,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (245,'Mi vida satisface mis más hondas necesidades ',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (246,'He obtenido menos de lo que esperaba de la vida',19,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (247,'Me gusta ser exactamente como soy',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (248,'Para mi el trabajo es una diversión',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (249,'he encotradao trabajo significativo',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (250,'Voy por un camino que me trae satifación',19,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (251,'He aprovechado al máximo mis capacidades',19,3,2,1,0);

/* Escala 20 */


INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (252,'Hay personas con quienes me conecto a un nivel más hondo',20,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (253,'Soy franco con las personas sercanas a mi y ellas lo son conmigo',20,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (254,'He amado profundamente a otra persona',20,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (255,'Generalmente encuentro perosonas con quienes hacer vida social',20,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (256,'Soy capaz de hacer compromisos a largo plazo con otra perosona',20,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (257,'Sé que soy importa para los que entán más serca d mí',20,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (258,'Encuentro fácil decirles a los demás',20,3,2,1,0);

/* Escala 21 */


INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (259,'Estoy satisfecho con mi desempeño en el trabajo',21,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (260,'Mis compañeros de trabajo dirían que yo facilito buenas comunicaciones entre los miembros de mi grupo',21,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (261,'Me siento distante en el trabajo y no participante',21,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (262,'Me es difícil prestar atención a las tareas de trabajo',21,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (263,'En mi equipo de trabaajo participo en la toma de decisiones ',21,3,2,1,0);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (264,'Me cuesta trabajo cumplir los compromisos o completar las tareas',21,0,1,2,3);
INSERT INTO  iem_item  (id_item ,nombre,id_escala,indicador1,indicador2,indicador3,indicador4) values (265,'Mi rendimiento en el trabajo es siempre el mejor de que soy capaz',21,3,2,1,0);
