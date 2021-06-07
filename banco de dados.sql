CREATE DATABASE pet_monitor;

CREATE TABLE consulta(

dt_inicial DATE, 
dt_final DATE,
s_pet  VARCHAR(20)

)DEFAULT CHARACTER SET UTF8;

INSERT INTO consulta
(dt_inicial, dt_final, s_pet )
VALUES
( -- first row: values for the columns in the list above
 '2019-03-02', '2019-03-02', 'REX'
),
( -- first row: values for the columns in the list above
 '2019-03-02', '2019-03-02', 'KALISTA'
),
( -- first row: values for the columns in the list above
 '2019-03-02', '2019-03-02', 'DINO'
);


CREATE TABLE mostrar_consulta(
id_rastreador int NOT NULL AUTO_INCREMENT, 

longitude VARCHAR(20),
latitude VARCHAR(20),
data_m DATE,
hora TIME,
primary key (id_rastreador)

)DEFAULT CHARACTER SET UTF8;


-- Insert rows into table 'TableName'
INSERT INTO mostrar_consulta
( -- columns to insert data into
 longitude, latitude, data_m,hora 
)
VALUES
( -- first row: values for the columns in the list above
 '-7.945505',' -36.206866 ', '2019-03-02','05:00:00'
),
( -- first row: values for the columns in the list above
 '-7.987366', '-38.290065 ', '2019-08-20','10:00:00'
),
( -- first row: values for the columns in the list above
 '-5.192050', '-39.291737 ', '2019-06-10','05:00:00'
);

CREATE TABLE DADOS_DO_PET(
id_rastreador int NOT NULL AUTO_INCREMENT ,
nome VARCHAR(20),
tipo ENUM('CANINO','FELINO','AVE'),
idade DATE,
sexo ENUM('F','M'),
primary key (id_rastreador)
)DEFAULT CHARACTER SET UTF8;


-- Insert rows into table 'TableName'
INSERT INTO DADOS_DO_PET
( -- columns to insert data into
 nome, tipo, idade,sexo 
)
VALUES
( -- first row: values for the columns in the list above
 'REX',' CANINO ', '2011-09-02','M'
),
( -- first row: values for the columns in the list above
 'KALISTA', 'FELINO ', '2012-01-20','F'
),
( -- first row: values for the columns in the list above
 'DINO', 'CANINO ', '2013-02-10','M'
);

CREATE TABLE RASTREADOR_MOVEL(
id_rastreador int NOT NULL AUTO_INCREMENT ,
dt_ativacao DATE,
primary key (id_rastreador)
)DEFAULT CHARACTER SET UTF8;


-- Insert rows into table 'TableName'
INSERT INTO RASTREADOR_MOVEL
( -- columns to insert data into
 dt_ativacao 
)
VALUES
( -- first row: values for the columns in the list above
 '2019-09-02'
),
( -- first row: values for the columns in the list above
 '2019-01-20'
),
( -- first row: values for the columns in the list above
 '2019-02-10'
);
