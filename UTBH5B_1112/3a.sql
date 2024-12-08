create table elso.dolgozo1 (
Did int(4),
Nev varchar(40),
Mkor char(15),
Szulido date,
Szemsz int(13),
FOREIGN KEY (Did) References elso.Telefonszám(Tid)
);

