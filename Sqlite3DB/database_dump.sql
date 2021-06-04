PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE user  (
person_id INTEGER PRIMARY KEY AUTOINCREMENT
);
CREATE TABLE oeffentlicheverkehrsmittel  (
verkehrsmittel_id INTEGER PRIMARY KEY AUTOINCREMENT

);
CREATE TABLE route(
route_id INTEGER PRIMARY KEY AUTOINCREMENT
);
CREATE TABLE ausgangspunkt (
ausgangspunkt_id INTEGER PRIMARY KEY AUTOINCREMENT

);
CREATE TABLE endpunkt (
endpunkt_id INTEGER PRIMARY KEY AUTOINCREMENT

);
CREATE TABLE verlauf (
verlauf_id INTEGER PRIMARY KEY AUTOINCREMENT

);
CREATE TABLE adresse (
adresse_id INTEGER PRIMARY KEY AUTOINCREMENT,

    lokationsID INTEGER,
    plz INTEGER,
    ort TEXT,
    strasse TEXT,
    stiege INTEGER,
    stock INTEGER,
    tuer INTEGER

);
INSERT INTO adresse VALUES(1,1,4060,'Leonding','Limesstrasse',NULL,NULL,NULL);
CREATE TABLE teilstrecke (
teilstrecke_id INTEGER PRIMARY KEY AUTOINCREMENT
    

);
CREATE TABLE flusstrecke (
flusstrecke_id INTEGER PRIMARY KEY AUTOINCREMENT,
    distanz INTEGER

);
CREATE TABLE oeffistrecke (
oeffistrecke_id INTEGER PRIMARY KEY AUTOINCREMENT,
    linie TEXT

);
CREATE TABLE haltestelle (
haltestelle_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    standort TEXT

);
CREATE TABLE standort (
standort_id INTEGER PRIMARY KEY AUTOINCREMENT,
    xkoordinate DOUBLE,
    ykoordinate DOUBLE,
    adresse TEXT,
    adresszusatz TEXT

);
INSERT INTO standort VALUES(1,48.268628204981752103,14.251821479618998367,'1',NULL);
CREATE TABLE restaurant (
restaurant_id INTEGER PRIMARY KEY AUTOINCREMENT,
    speisekarte TEXT,
    hauben INTEGER

);
CREATE TABLE hotel (
hotel_id INTEGER PRIMARY KEY AUTOINCREMENT,
    bettenanzahl INTEGER

);
CREATE TABLE kategorie (
kategorie_id INTEGER PRIMARY KEY AUTOINCREMENT,
    bezeichnung TEXT,
    typeofpoi INTEGER

);
CREATE TABLE sehenswürdigkeiten (
sehenswürdigkeiten_id INTEGER PRIMARY KEY AUTOINCREMENT,
    beschreibung TEXT
   
);
CREATE TABLE pointofinterest (
pointofinterest_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    bewertung FLOAT,
    standort TEXT,
    website TEXT
   
);
CREATE TABLE linie (
linie_id ,
    fahrplan TEXT

);
INSERT INTO linie VALUES(4,'Haltestelle Mühlkreisbahnhof');
INSERT INTO linie VALUES(4,'Haltestelle Biegung');
INSERT INTO linie VALUES(4,'Haltestelle Rudolfstraße');
INSERT INTO linie VALUES(4,'Haltestelle Hauptplatz');
INSERT INTO linie VALUES(4,'Haltestelle Taubenmarkt');
INSERT INTO linie VALUES(4,'Haltestelle Mozartkreuzung');
INSERT INTO linie VALUES(4,'Haltestelle Bürgerstraße');
INSERT INTO linie VALUES(4,'Haltestelle Goethekreuzung');
INSERT INTO linie VALUES(4,'Haltestelle Hauptbahnhof');
INSERT INTO linie VALUES(4,'Haltestelle Untergaumberg');
INSERT INTO linie VALUES(4,'Haltestelle Gaumberg');
INSERT INTO linie VALUES(4,'Haltestelle Haag');
INSERT INTO linie VALUES(4,'Haltestelle Poststraße');
INSERT INTO linie VALUES(4,'Haltestelle Meixnerkreuzung ');
INSERT INTO linie VALUES(4,'Haltestelle Harterfeldsiedlung');
INSERT INTO linie VALUES(4,'Haltestelle Doblerholz');
INSERT INTO linie VALUES(4,'Haltestelle Im Bäckerfeld');
INSERT INTO linie VALUES(4,'Haltestelle Langholzfeld');
INSERT INTO linie VALUES(4,'Haltestelle Plus City');
INSERT INTO linie VALUES(4,'Haltestelle Wagram');
INSERT INTO linie VALUES(4,'Haltestelle Trauner Kreuzung ');
INSERT INTO linie VALUES(4,'Haltestelle Schloss Traun ');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('adresse',1);
INSERT INTO sqlite_sequence VALUES('standort',1);
COMMIT;
