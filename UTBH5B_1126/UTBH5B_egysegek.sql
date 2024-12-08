create database elso;

create table elso.egységek (
aru int NOT NULL,
db int NOT NULL,
CHECK (db > 0),
FOREIGN KEY (aru) REFERENCES elso.termek(tkod)
);


