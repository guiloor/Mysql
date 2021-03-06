DROP DATABASE IF EXISTS AgenciaViajes;

CREATE DATABASE AgenciaViajes;

USE AgenciaViajes;

CREATE TABLE CLIENTE(
DNI VARCHAR (9) PRIMARY KEY,
Nombre VARCHAR (20),
Apellido1 VARCHAR (20),
Apellido2 VARCHAR (20));


INSERT INTO CLIENTE VALUES('02753635','Pepe','Perez','Reverte');
INSERT INTO CLIENTE VALUES('02753655','Fernan','Flow','Flow');
INSERT INTO CLIENTE VALUES('02751635','Guille','Faking','Master');
INSERT INTO CLIENTE VALUES('02744635','Pedro','El','Yonki');
INSERT INTO CLIENTE VALUES('02787635','Jesucristo','Super','Start');


CREATE TABLE BILLETE(
Tipo VARCHAR(30),
Clases VARCHAR(20),
Precio SMALLINT,
Compañia VARCHAR (20),
NºMaletas SMALLINT,
CodBillete INT PRIMARY KEY);
CONSTRAINT CLIENTEFK FOREIGN KEY (DNI) REFERENCES CLIENTE (DNI));

INSERT INTO BILLETE VALUES('IDA/VUELTA ','Turista','60','Iberia','3','1930143');
INSERT INTO BILLETE VALUES('IDA','Business','80','ryanair','6','1253574');
INSERT INTO BILLETE VALUES('IDA','Primera','100','easyjet','4','4362462');
INSERT INTO BILLETE VALUES('IDA/VUELTA ','Primera','110','Vueling','1','6357345');
INSERT INTO BILLETE VALUES('IDA/VUELTA ','Turista','64','AirEuropa','2','7647346');');


CREATE TABLE VUELO(
Fecha DATE,
Origen VARCHAR (20),
Destino VARCHAR (20),
HoraLlegada TIME,
HoraSalida TIME,
NºVuelo VARCHAR (30) PRIMARY KEY,
NºPasajeros INT);
CONSTRAINT BILLETE_VUELOFK FOREIGN KEY (CodBillete) REFERENCES BILLETE (CodBillete)
);

INSERT INTO VUELO VALUES('2017/09/17','Madrid','Dublin','12:09','14:43','2415','1');
INSERT INTO VUELO VALUES('2017/06/20','Berlin','Paris','16:45','18:30','3425','2');
INSERT INTO VUELO VALUES('2017/12/01','Venecia','reykjavik','01:15','3:16','1922','5');
INSERT INTO VUELO VALUES('2017/05/07','Roma','Lanzarote','18:25','20:10','9583','3');
INSERT INTO VUELO VALUES('2017/06/27','Malaga','Moscu','06:45','10:00','5637','1');



