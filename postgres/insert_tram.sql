/*Linie 3*/
insert into Adresse(plz, ort, strasse) values(4040, 'Linz', 'Landgutstra�e');
insert into Adresse(plz, ort, strasse) values(4020, 'Linz', 'Hauptplatz');
insert into Adresse(plz, ort, strasse) values(4020, 'Linz', 'Landstra�e');
insert into Adresse(plz, ort, strasse) values(4020, 'Linz', 'K�rntnerstra�e');
insert into Adresse(plz, ort, strasse) values(4060, 'Leonding', 'Gaumbergstra�e');
insert into Adresse(plz, ort, strasse) values(4060, 'Leonding', 'Ehrenfellner Stra�e');
insert into Adresse(plz, ort, strasse) values(4061, 'Pasching', 'Kremstalstra�e');
insert into Adresse(plz, ort, strasse) values(4050, 'Traun', 'K�rnbergstra�e');

insert into Standort(xKoordinate, yKoordinate, adresse) values(48.311079, 14.277665, 13);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.306544, 14.285989, 14);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.304074, 14.288119, 15);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.25007677676249, 14.287936107918993, 16);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.277939, 14.276254, 17);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.26855273180912, 14.25176238479757, 18);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.243070, 14.237171, 19);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.233795, 14.234922, 20);

insert into Haltestelle(name, standort) values('Landgutstra�e', 13);
insert into Haltestelle(name, standort) values('Hauptplatz', 14);
insert into Haltestelle(name, standort) values('Taubenmarkt', 15);
insert into Haltestelle(name, standort) values('Hauptbahnhof', 16);
insert into Haltestelle(name, standort) values('Gaumberg', 17);
insert into Haltestelle(name, standort) values('Meixnerkreuzung', 18);
insert into Haltestelle(name, standort) values('Plus City', 19);
insert into Haltestelle(name, standort) values('Trauner Kreuzung', 20);

insert into linie(name) values('3');

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

update teilstrecke set oe_linie = '3' where 1 = 1;

/*Linie 4*/
insert into Adresse(plz, ort, strasse) values(4040, 'Linz', 'Landgutstra�e');
insert into Adresse(plz, ort, strasse) values(4020, 'Linz', 'Hauptplatz');
insert into Adresse(plz, ort, strasse) values(4020, 'Linz', 'Landstra�e');
insert into Adresse(plz, ort, strasse) values(4020, 'Linz', 'K�rntnerstra�e');
insert into Adresse(plz, ort, strasse) values(4060, 'Leonding', 'Ehrenfellner Stra�e');
insert into Adresse(plz, ort, strasse) values(4061, 'Pasching', 'Kremstalstra�e');
insert into Adresse(plz, ort, strasse) values(4050, 'Traun', 'K�rnbergstra�e');
insert into Adresse(plz, ort, strasse) values(4050, 'Traun', 'Kremstalstra�e');

insert into Standort(xKoordinate, yKoordinate, adresse) values(48.311079, 14.277665, 21);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.306544, 14.285989, 22);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.304074, 14.288119, 23);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.25007677676249, 14.287936107918993, 24);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.26855273180912, 14.25176238479757, 25);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.243070, 14.237171, 26);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.233795, 14.234922, 27);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.218587, 14.238541, 28);

insert into Haltestelle(name, standort) values('Landgutstra�e', 21);
insert into Haltestelle(name, standort) values('Hauptplatz', 22);
insert into Haltestelle(name, standort) values('Taubenmarkt', 23);
insert into Haltestelle(name, standort) values('Hauptbahnhof', 24);
insert into Haltestelle(name, standort) values('Meixnerkreuzung', 25);
insert into Haltestelle(name, standort) values('Plus City', 26);
insert into Haltestelle(name, standort) values('Trauner Kreuzung', 27);
insert into Haltestelle(name, standort) values('Schloss Traun', 28);

insert into linie(name) values('4');

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

update teilstrecke set oe_linie = '4' where 1 = 1;