CREATE DATABASE valdivia;
USE valdivia;
CREATE TABLE persona(
	pk_RUT VARCHAR(20) NOT NULL,
	nombre VARCHAR(45) NOT NULL,
	edad INT(2) NOT NULL,
	PRIMARY KEY (pk_RUT)
);

CREATE TABLE lugar_de_interes(
	pk_lugar int(3) auto_increment,
	descripcion VARCHAR(70) NOT NULL,
	categoria VARCHAR(45) NOT NULL,
	latitud FLOAT(20) NOT NULL,
	longitud FLOAT(20) NOT NULL,
	PRIMARY KEY (pk_lugar)
);

CREATE TABLE desplazarse(
	pk_RUT VARCHAR(20) NOT NULL,
	fecha VARCHAR(45) NOT NULL,
	latitud FLOAT(20) NOT NULL,
	longitud FLOAT(20) NOT NULL,
	FOREIGN KEY (pk_RUT) REFERENCES persona(pk_RUT) 
);

 INSERT INTO persona values(
	'18957998-5','Miguel',23),
    (
	'14354634-k','Pedro',23),
    (
	'17562346-0','Gabriela',23),
    (
	'21443654-5','Camila',23),
    (
	'19463462-3','Zabala',23);
    

 INSERT INTO lugar_de_interes values(
	1,'corona','local',0.23,7.45),
    (
	2,'austral','universidad',23.34,125.5124),
    (
	3,'austral miraflores','universidad',123.35,54.512),
    (
	4,'falabella','local',23.5,23.4),
    (
	5,'ripley','local',25,65.2);
    
 INSERT INTO desplazarse values(
	'18957998-5','12 octubre 2018',0.43,7.44),
    (
	'14354634-k','12 septiembre 2018',23.54,125.5621),
    (
	'17562346-0','12 enero 2017',123.35,54.532),
    (
	'21443654-1','12 abril 2018',24.5,13.4),
    (
	'19463462-3','12 diciembre 2017',26,63.2);


     