create database elso;

create table elso.komponens (
termek int NOT NULL,
alkatresz int NOT NULL,
FOREIGN KEY (termek) REFERENCES elso.termek(tkod),
FOREIGN KEY (alkatresz) REFERENCES elso.alkatresz(akod)
);


