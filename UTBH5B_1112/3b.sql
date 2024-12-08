create table elso.dolgozo1 (
Did int(4),
Nev varchar(40),
Mkor char(15),
Szulido date,
Szemsz int(13),
FOREIGN KEY (Did) References elso.Telefonszám(Tid)
);

create table elso.Telefonszám (
Tid int(4) PRIMARY KEY,
Mobil varchar(10),
Tulaj char(2)
);