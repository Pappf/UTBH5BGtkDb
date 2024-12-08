create database elso;

create table elso.termek (
tkod int PRIMARY KEY,
nev char(50),
ear int NOT NULL,
CHECK (ear > 0),
gyarto int, 
FOREIGN KEY (gyarto) REFERENCES elso.gyarto(adoszam)
);
