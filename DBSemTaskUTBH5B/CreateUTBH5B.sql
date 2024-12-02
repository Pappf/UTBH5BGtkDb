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

INSERT INTO bolt.vásárló (VásárlóID, Név, EMAIL, Telefonszám) VALUES
('100', 'Kiss Béla', 'kissbela@gmail.com', '706148344'),
('101', 'Nagy Hunor', 'hunorn@gmail.com', '705136233'),
('102', 'Nagy Ádám', 'adamnagy@gmail.com', '706146532'),
('103', 'Havasi Henrik', 'henrikh@gmail.com', '705338933'),
('104', 'Kocsi László', 'lacikocs@gmail.com', '705438922');

INSERT INTO bolt.Rendelés (RendelésID, Összeg, Dátum, Mennyiség, VásárlóID) VALUES
('0001', '800', '3', '2', '103'),
('0002', '3000', '5', '3', '100'),
('0003', '10000', '2', '10', '101'),
('0004', '800', '12', '4', '102'),
('0005', '500', '6', '1', '104');

INSERT INTO bolt.Termék (Tkód, Név, Ár, Kategória) VALUES
('200', 'Tej', '1000', 'Tejtermék'),
('201', 'Kakakóscsiga', '200', 'Pékáru'),
('202', 'Hell', '400', 'Innivaló'),
('203', 'Kávé', '500', 'Innivaló'),
('204', 'Répa', '1000', 'Zöldség');

INSERT INTO bolt.Rendelés_Termék (RendelésID, Tkód) VALUES
('0001', '202'),
('0002', '200'),
('0003', '204'),
('0004', '201'),
('0005', '203');

INSERT INTO bolt.Vezető (ID, Email, Név, Telefonszám) VALUES
('10', 'zsigmondk@gmail.com', 'Kocsis Zsigmond', '708926644'),
('11', 'tothbr@gmail.com', 'Tóth Brúnó', '703417984'),
('12', 'Lakatosi@gmail.com', 'Lakatos István', '706439833'),
('13', 'kism@gmail.com', 'Kis Magor', '702139952'),
('14', 'hujanos@gmail.com', 'Hű János', '708492276');

INSERT INTO bolt.Üzlet (ÜzletID, Név, Város, Adószám, ID) VALUES
('300', 'Kisbolt', 'Miskolc', '10823465', '11'),
('301', 'ABC', 'Nyíregyháza', '82645786', '12'),
('302', 'CBA', 'Budapest', '96725643', '10'),
('303', 'SarkiABC', 'Miskolc', '10769823', '13'),
('304', 'SarkiCBA', 'Szeged', '12657896', '14');

INSERT INTO bolt.Termék_Üzlet (ÜzletID, Tkód, Készlet) VALUES
('300', '202', '400'),
('301', '200', '200'),
('302', '201', '100'),
('303', '204', '300'),
('304', '203', '150');