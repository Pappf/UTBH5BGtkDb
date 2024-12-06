create database elso;

create table elso.dolgozo (
id int PRIMARY KEY NOT NULL,
nev varchar(40),
mkor varchar(60),
szulido date,
szemsz char(13)
);


create table elso.telefonszam (
id int NOT NULL,
mobil char(9),
foreign key (id) REFERENCES elso.dolgozo(id)
);