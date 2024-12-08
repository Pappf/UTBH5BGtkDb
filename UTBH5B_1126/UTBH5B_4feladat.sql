
create table elso.Termék (
tkód int PRIMARY KEY NOT NULL,
Név char(30) NOT NULL,
Ear char(30) NOT NULL,
Egység_db int NOT NULL,
Adószám int NOT NULL,
FOREIGN KEY (Adószám) REFERENCES Gyártó(Adószám)
);

create table elso.Gyártó (
Adószám int PRIMARY KEY NOT NULL,
Név char(30) NOT NULL,
Telephely char(30) NOT NULL,
irsz int NOT NULL,
város char(30) NOT NULL,
utcaszám char(30) NOT NULL
);


create table Alkatrész (
akod int PRIMARY KEY NOT NULL,
Név char (30) NOT NULL
);

create table Alkatrész_Termék (
akod int NOT NULL,
Tkód int NOT NULL,
PRIMARY KEY (akod, Tkód),
FOREIGN KEY (akod) REFERENCES Alkatrész(akod),
FOREIGN KEY (Tkód) REFERENCES Termék(Tkód)
);
