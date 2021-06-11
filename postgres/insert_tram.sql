/*Linie 3*/
insert into Adresse(plz, ort, strasse) values(4040, 'Linz', 'Landgutstraße');
insert into Adresse(plz, ort, strasse) values(4020, 'Linz', 'Hauptplatz');
insert into Adresse(plz, ort, strasse) values(4020, 'Linz', 'Landstraße');
insert into Adresse(plz, ort, strasse) values(4020, 'Linz', 'Kärntnerstraße');
insert into Adresse(plz, ort, strasse) values(4060, 'Leonding', 'Gaumbergstraße');
insert into Adresse(plz, ort, strasse) values(4060, 'Leonding', 'Ehrenfellner Straße');
insert into Adresse(plz, ort, strasse) values(4061, 'Pasching', 'Kremstalstraße');
insert into Adresse(plz, ort, strasse) values(4050, 'Traun', 'Kürnbergstraße');

insert into Standort(xKoordinate, yKoordinate, adresse) values(48.311079, 14.277665, 13);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.306544, 14.285989, 14);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.304074, 14.288119, 15);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.25007677676249, 14.287936107918993, 16);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.277939, 14.276254, 17);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.26855273180912, 14.25176238479757, 18);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.243070, 14.237171, 19);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.233795, 14.234922, 20);

insert into Haltestelle(name, standort) values('Landgutstraße', 13);
insert into Haltestelle(name, standort) values('Hauptplatz', 14);
insert into Haltestelle(name, standort) values('Taubenmarkt', 15);
insert into Haltestelle(name, standort) values('Hauptbahnhof', 16);
insert into Haltestelle(name, standort) values('Gaumberg', 17);
insert into Haltestelle(name, standort) values('Meixnerkreuzung', 18);
insert into Haltestelle(name, standort) values('Plus City', 19);
insert into Haltestelle(name, standort) values('Trauner Kreuzung', 20);

insert into linie(name) values('3');

/*Linie 4*/
insert into Adresse(plz, ort, strasse) values(4040, 'Linz', 'Landgutstraße');
insert into Adresse(plz, ort, strasse) values(4020, 'Linz', 'Hauptplatz');
insert into Adresse(plz, ort, strasse) values(4020, 'Linz', 'Landstraße');
insert into Adresse(plz, ort, strasse) values(4020, 'Linz', 'Kärntnerstraße');
insert into Adresse(plz, ort, strasse) values(4060, 'Leonding', 'Ehrenfellner Straße');
insert into Adresse(plz, ort, strasse) values(4061, 'Pasching', 'Kremstalstraße');
insert into Adresse(plz, ort, strasse) values(4050, 'Traun', 'Kürnbergstraße');
insert into Adresse(plz, ort, strasse) values(4050, 'Traun', 'Kremstalstraße');

insert into Standort(xKoordinate, yKoordinate, adresse) values(48.311079, 14.277665, 21);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.306544, 14.285989, 22);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.304074, 14.288119, 23);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.25007677676249, 14.287936107918993, 24);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.26855273180912, 14.25176238479757, 25);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.243070, 14.237171, 26);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.233795, 14.234922, 27);
insert into Standort(xKoordinate, yKoordinate, adresse) values(48.218587, 14.238541, 28);

insert into Haltestelle(name, standort) values('Landgutstraße', 21);
insert into Haltestelle(name, standort) values('Hauptplatz', 22);
insert into Haltestelle(name, standort) values('Taubenmarkt', 23);
insert into Haltestelle(name, standort) values('Hauptbahnhof', 24);
insert into Haltestelle(name, standort) values('Meixnerkreuzung', 25);
insert into Haltestelle(name, standort) values('Plus City', 26);
insert into Haltestelle(name, standort) values('Trauner Kreuzung', 27);
insert into Haltestelle(name, standort) values('Schloss Traun', 28);

insert into linie(name) values('4');
