CREATE TABLE fundacion (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(30));

CREATE TABLE poblacion (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(30),
Region VARCHAR(30));

CREATE TABLE ayuda (
fundacion_id INT NOT NULL REFERENCES fundacion(ID),
poblacion_id INT NOT NULL REFERENCES poblacion(ID),
PRIMARY KEY (fundacion_id, poblacion_id));

CREATE TABLE permiso (
ID INT PRIMARY KEY AUTO_INCREMENT,
Fecha_Inicio DATE,
Fecha_Fin DATE,
Estacion VARCHAR(10),
poblacion_id INT,
FOREIGN KEY (poblacion_id) REFERENCES poblacion(ID));

CREATE TABLE pozo (
ID INT PRIMARY KEY AUTO_INCREMENT,
fecha_creacion DATE,
fecha_revision DATE,
formato_extraccion VARCHAR(15),
precio INT,
calidad_agua VARCHAR(10),
tipo_pozo VARCHAR(15),
grupos VARCHAR(15),
estado VARCHAR(8),
ubicacion VARCHAR(50),
fundacion_id INT,
poblacion_id INT,
FOREIGN KEY (fundacion_id) REFERENCES fundacion(ID),
FOREIGN KEY (poblacion_id) REFERENCES poblacion(ID));

CREATE TABLE autorizacion (
pozo_id INT NOT NULL REFERENCES pozo(ID),
permiso_id INT NOT NULL REFERENCES permiso(ID),
PRIMARY KEY (pozo_id, permiso_id));
