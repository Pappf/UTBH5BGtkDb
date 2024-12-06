create database bolt;

create table bolt.vásárló (
VásárlóID INT(3) NOT NULL PRIMARY KEY,
Név CHAR(20) NOT NULL,
EMAIL CHAR(30),
Telefonszám INT(9) NOT NULL
);

create table bolt.Rendelés (
RendelésID INT(4) NOT NULL PRIMARY KEY,
Összeg INT(6) NOT NULL,
Dátum INT(2) NOT NULL,
Mennyiség INT(2) NOT NULL,
VásárlóID INT(3) NOT NULL,
FOREIGN KEY (VásárlóID) REFERENCES bolt.vásárló(VásárlóID)
);

create table bolt.Termék (
Tkód INT(3) NOT NULL PRIMARY KEY,
Név CHAR(20) NOT NULL,
Ár INT(5) NOT NULL,
Kategória CHAR(15) NOT NULL
);

create table bolt.Rendelés_Termék (
RendelésID INT(4) NOT NULL,
Tkód INT(3) NOT NULL,
PRIMARY KEY (RendelésID, Tkód),
FOREIGN KEY (RendelésID) REFERENCES bolt.Rendelés(RendelésID),
FOREIGN KEY (Tkód) REFERENCES bolt.Termék(Tkód)
);

create table bolt.Vezető (
ID INT(2) NOT NULL PRIMARY KEY,
Email CHAR(30),
Név CHAR(20) NOT NULL,
Telefonszám INT(9) NOT NULL
);

create table bolt.Üzlet (
ÜzletID INT(3) NOT NULL PRIMARY KEY,
Név CHAR(10) NOT NULL,
Város CHAR(15) NOT NULL,
Adószám INT(8) NOT NULL,
ID INT(2) NOT NULL,
FOREIGN KEY (ID) REFERENCES bolt.Vezető(ID)
);

create table bolt.Termék_Üzlet (
ÜzletID INT(3) NOT NULL,
Tkód INT(3) NOT NULL,
Készlet INT(4) NOT NULL,
PRIMARY KEY (ÜzletID, Tkód),
FOREIGN KEY (ÜzletID) REFERENCES bolt.Üzlet(ÜzletID),
FOREIGN KEY (Tkód) REFERENCES bolt.Termék (Tkód)
);
