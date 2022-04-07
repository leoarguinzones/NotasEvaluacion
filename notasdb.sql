DROP DATABASE IF EXISTS notasdb;
CREATE DATABASE notasdb;
USE notasdb;

CREATE TABLE users (userID INT NOT NULL AUTO_INCREMENT,
					userName VARCHAR(20) NOT NULL,
					userEmail VARCHAR(40) NOT NULL,
					PRIMARY KEY (userID));
			
CREATE TABLE categories (categoryID INT NOT NULL AUTO_INCREMENT,
					name VARCHAR(40) NOT NULL,
					PRIMARY KEY (categoryID));
							
CREATE TABLE notes (noteID INT NOT NULL AUTO_INCREMENT,
					title VARCHAR(100) NOT NULL,
					description TEXT,
					disposable BIT NOT NULL,
					created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
					modif DATETIME NULL ON UPDATE  CURRENT_TIMESTAMP,
					userID INT NOT NULL, 
					PRIMARY KEY (noteID),
					FOREIGN KEY (userID) REFERENCES users(userID));

CREATE TABLE NotesCategories (notescategoriesID INT NOT NULL AUTO_INCREMENT,
					noteID INT NOT NULL,
					categoryID INT NOT NULL, 
					PRIMARY KEY (notescategoriesID),
					FOREIGN KEY (noteID) REFERENCES notes(noteID),
					FOREIGN KEY (categoryID) REFERENCES categories(categoryID));

INSERT INTO users (userName, userEmail) VALUES ('ltorrealba', 'leot5865@gmail.com'),
												('leoarguinzones', 'ltorrealba@megatlon.com.ar'),
												('JavierTorrealba', 'leotorre@mail.com'),
												('SofiAiani', 'sofi@hotmail.com'),
												('BeluSolis', 'belu.solis@gmail.com'),
												('Yanito8', 'yanito8@gmail.com'),
												('JaneisaAR', 'janeisa2@outlook.com'),
												('munecaPet', 'impet@hotmail.com'),
												('elbichote', 'bichote@yahoo.com.ar'),
												('ultimoUsuario', 'ultimousuario@mailfinal.com');
											
											
INSERT INTO categories (name) VALUES ('Recordatorios'),
										('Numeros de Teléfono'),
										('Lista de Compras'),
										('Direcciones'),
										('Letras de Canciones'),
										('Poesias'),
										('Conversaciones'),
										('Links'),
										('Diarias'),
										('Laborales');
									
									
									
INSERT INTO notes (title, description, disposable, userID) VALUES
												('Mi primera nota', 
												'TENGO QUE MAÑANA ACORDARME DE HACER TALES Y CUALES COSAS.
												TENGO QUE MAÑANA ACORDARME DE HACER TALES Y CUALES COSAS. 
												TENGO QUE MAÑANA ACORDARME DE HACER TALES Y CUALES COSAS. 
												TENGO QUE MAÑANA ACORDARME DE HACER TALES Y CUALES COSAS.
												TENGO QUE MAÑANA ACORDARME DE HACER TALES Y CUALES COSAS. 
												TENGO QUE MAÑANA ACORDARME DE HACER TALES Y CUALES COSAS.',
												0,
												2),
												
												('Numeros Importantes', 
												'1139157831, 02128713336, 04123600894, 04242378119, 115858213459, 89498498498, 8949818949, 8498498498, 4894895495',
												1,
												8),
												
												('Para no perderme',
												'Av. Rodriguez Peña 123123: casa; Chacabuco 124: BOLICHE, 9 de Julio: MetroBus, Av. Diaz Velez 1231: Hospital Durand',
												1,
												5),
												
												('Los Aretes de la luna',
												'Los aretes que le faltan a la luna los tengo guardados para hacerte un collar, los halle una mañana en la bruma cuando caminaba junto al inmenso mar. Privilegio que agradezco al cielo porque ningún poeta los pudo encontrar, yo los guardo en un cofre dorado son mi única fortuna y te los voy a dar. los aretes que le faltan a la luna los tengo guardados en el fondo del mar.',
												0,
												10),
												
												('Te va a doler de Maelo',
												'Se que algún día te hará falta mi amor Y no lo digo por despecho aunque parezca Te equivocaste al elegir Entre el y yo Pero te vas arrepentir la vida entera',
												0,
												9),
												
												('Conversacion Discord',
												'LucasSequeira — ayer a las 23:13 El script.sql debe tener la siguiente estructura Alejandro Jabo — ayer a las 23:13  LucasSequeira — ayer a las 23:14 @everyone aclaro la estructura Alejandro Jabo — ayer a las 23:14 LucasSequeira — ayer a las 23:16 Debe tener CREATE DATABASE ..... CREATE TABLE AAA.... CREATE TABLE BBB....... CREATE TABLE CCC..... CREATE TABLE DDD..... INSERT INTO AAA..... (X10) INSERT INTO BBB...... (X10) INSERT INTO CCC.....(X10) INSERT INTO DDD.....(X10) FIN :pepesuicide: Alejandro Jabo — ayer a las 23:16 ez LucasSequeira — ayer a las 23:17 Yo tengo que ser capas de poner play y que Levante todo, base de datos tablas y haga el insert Salvador — ayer a las 23:17 Gracias Lucas!! LucasSequeira — ayer a las 23:17 Es igual al script que ustedes tienen de musimundo Salvador — ayer a las 23:17 Hasta que hora te podemos entregar? jaja LucasSequeira — ayer a las 23:17 O de movies Alejandro Jabo — ayer a las 23:17 LucasSequeira — ayer a las 23:17 Hasta mañana a las 23:59hs :sipcat:',
												1, 
												7),
												
												('Conver grego',
												'Gregory House — hoy a las 8:57 Git hub entiendo q dijo Lucas ctalamilla(Cristian) — hoy a las 8:57 hay q subir el pdf, y el sql en un repo nada mas? son solo dos lineas verdad? osea dos registros Gregory House — hoy a las 8:58 Así es Pdf y script ctalamilla(Cristian) — hoy a las 8:59 okis gracias! Gregory House — hoy a las 9:00 Yo no sé si llego hoy por el laburo asiq seguro voy a recuperatorio  como en el cole ctalamilla(Cristian) — hoy a las 9:03 humildad!!!!! ya lo tenes hecho ! confeza Gregory House — hoy a las 9:04 Jajajajajajaj Ni ahí',
												0,
												6),
												
												('Paginas que recomiendo', 
												'futbollibre.net; hsbc.com; gmail.com; as.com; realmadrid.net; flowhot.net; tubolitasexy.com',
												0,
												3),
												
												('Manuelita Tortuguita',
												'Manuelitavivía en Pehuajó pero un día se marcó. Nadie supo bien por qué a París ella se fue un poquito caminando y otro poquitito a pie. Manuelita, Manuelita, Manuelita dónde vas con tu traje de malaquita y tu paso tan audaz. Manuelita una vez se enamoró de un tortugo que pasó. Dijo: ¿Qué podré yo hacer? Vieja no me va a querer, en Europa y con paciencia me podrán embellecer. En la tintorería de París la pintaron con barniz. La plancharon en francés del derecho y del revés. Le pusieron peluquita y botines en los pies. Tantos años tardó en cruzar el mar que allí se volvió a arrugar y por eso regresó vieja como se marchó a buscar a su tortugo que la espera en Pehuajó',
												1,
												2),
												
												('Poema Español', 
												'Recuerdos de aquel tiempo perdido en el horizonte recuerdo de telefilmes recuerdo de uniformes de aquella España que hoy ni tan siquiera reconocemos; de esta tierra baldía que ayer fue espeso monte. Recuerdos de aquel tiempo en el que no sabíamos casi nada pero lo intuíamos casi todo; cuando éramos nosotros los que teníamos que buscar el oro. Y no como ahora, tiempo ingrato, en el que todo nos llega con sólo apretar un botón. Hable al son de las viejas normas mi corazón.',
												0,
												4);
												
INSERT INTO notescategories (noteID, categoryID) VALUES (1, 1), (2, 2), (3,3), (4,4), (5,4), (6,7), (7,7), (8,8), (9,6), (10,6);