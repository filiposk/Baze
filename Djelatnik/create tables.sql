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