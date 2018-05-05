DROP DATABASE IF EXISTS Djelatnik;

CREATE DATABASE Djelatnik;

USE Djelatnik;
CREATE TABlE RadnoMjesto(
    Sifra int PRIMARY KEY NOT NULL auto_increment,
    Naziv varchar(20) NOT NULL,
    Koeficijent decimal(18,2)
);

CREATE TABlE Zaposlenik(
    Sifra int PRIMARY KEY NOT NULL auto_increment,
    Ime varchar(50) NOT NULL,
    Prezime varchar(50) NOT NULL,
    Nadredeni int,
    RadnoMjesto int NOT NULL
);

ALTER TABLE Zaposlenik ADD FOREIGN KEY(Nadredeni) references Zaposlenik(Sifra);
ALTER TABLE Zaposlenik ADD FOREIGN KEY(RadnoMjesto) references RadnoMjesto(Sifra);

insert into RadnoMjesto(Sifra,Naziv,Koeficijent) values (null,'Direktor',5.7),(null,'Savjetnik',4.8),(null,'Predradnik',3.5),(null,'Radnik 1.vrste',2.4);

insert into Zaposlenik(Sifra,Ime,Prezime,Nadredeni,RadnoMjesto)
values(null,'Mario','Kurt',null,1);

insert into Zaposlenik(Sifra,Ime,Prezime,Nadredeni,RadnoMjesto)
values(null,'Marin','Hed',1,2);

insert into Zaposlenik(Sifra,Ime,Prezime,Nadredeni,RadnoMjesto)
values(null,'Ivana','Kur',1,3);

insert into Zaposlenik(Sifra,Ime,Prezime,Nadredeni,RadnoMjesto)
values(null,'Zvonko','Mig',3,4);

insert into Zaposlenik(Sifra,Ime,Prezime,Nadredeni,RadnoMjesto)
values(null,'Ana','Kal',3,4);

update zaposlenik set Nadredeni=1 where Sifra=5;
update zaposlenik set Nadredeni=5 where Sifra=3;
update zaposlenik set Nadredeni=5 where Sifra=4;

delete from Zaposlenik where Sifra=3;


