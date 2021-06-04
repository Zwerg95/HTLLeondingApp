insert into Adresse(plz, ort, strasse) values(4030, 'Linz', 'Im Südpark');
insert into Adresse(plz, ort, strasse) values(4030, 'Linz', 'Traundorfer Straße');
insert into Adresse(plz, ort, strasse) values(4030, 'Linz', 'Tötes Kreuzung');
insert into Adresse(plz, ort, strasse) values(4060, 'Leonding', 'Ehrenfellner Straße');
insert into Adresse(plz, ort, strasse) values(4060, 'Leonding', 'Ehrenfellner Straße');
insert into Adresse(plz, ort, strasse) values(4020, 'Linz', 'Ruflinger Straße');
insert into Adresse(plz, ort, strasse) values(4020, 'Linz', 'Kärntnerstraße');
insert into Adresse(plz, ort, strasse) values(4020, 'Linz', 'Industriezeile');

insert into Standort(xKoordinate, yKoordinate, adresse) values(48.244125087438995, 14.38097074381988, 5);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.262788559217114, 14.258978574714446, 6);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.26602189745143, 14.244323895970417, 7);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.26855273180912, 14.25176238479757, 8);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.29135545346561, 14.291187458189484, 9);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.252074716903344, 14.347165027541182, 10);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.25007677676249, 14.287936107918993, 11);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.298605117135885, 14.322676539132388, 12);

insert into Haltestelle(name, standort) values('Pichlinger See', 5);
insert into Haltestelle(name, standort) values('Bahnhof Ebelsberg', 6);
insert into Haltestelle(name, standort) values('Neue Heimat', 7);
insert into Haltestelle(name, standort) values('Meixnerkreuzung', 8);
insert into Haltestelle(name, standort) values('Limesstraße', 9);
insert into Haltestelle(name, standort) values('Leonding-Schule', 10);
insert into Haltestelle(name, standort) values('Hauptbahnhof', 11);
insert into Haltestelle(name, standort) values('Fernheizkraftwerk', 12);

insert into linie(name) values('19');

insert into TeilStrecke(startHaltestelle, zielHaltestelle, dauer, davor) values(1, 2, 28, null);
insert into TeilStrecke(startHaltestelle, zielHaltestelle, dauer, davor) values(2, 3, 20, 1);
insert into TeilStrecke(startHaltestelle, zielHaltestelle, dauer, davor) values(3, 4, 15, 2);
insert into TeilStrecke(startHaltestelle, zielHaltestelle, dauer, davor) values(4, 5, 4, 3);
insert into TeilStrecke(startHaltestelle, zielHaltestelle, dauer, davor) values(5, 6, 2, 4);
insert into TeilStrecke(startHaltestelle, zielHaltestelle, dauer, davor) values(6, 7, 23, 5);
insert into TeilStrecke(startHaltestelle, zielHaltestelle, dauer, davor, danach) values(7, 8, 33, 6, null);

update teilstrecke set danach = 2 where id = 1;
update teilstrecke set danach = 3 where id = 2;
update teilstrecke set danach = 4 where id = 3;
update teilstrecke set danach = 5 where id = 4;
update teilstrecke set danach = 6 where id = 5;
update teilstrecke set danach = 7 where id = 6;

update teilstrecke set oe_linie = '19' where 1 = 1;