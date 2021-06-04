drop table Route cascade;
drop table "user" cascade;
drop table Adresse cascade;
drop table Standort cascade;
drop table Haltestelle cascade;
drop table HaltestelleRoute cascade;
drop table TeilStrecke cascade;
drop table Linie cascade;
drop table Kategorie cascade;
drop table PointOfInterest cascade;

create table Adresse
(
    lokationsId serial primary key not null,
    plz         integer,
    ort         varchar,
    strasse     varchar,
    hausnr      varchar,
    stiege      smallint,
    stock       smallint,
    tuer        smallint
);
create table Standort
(
    id           serial primary key not null,
    xKoordinate  numeric(15)        not null,
    yKoordinate  numeric(15)        not null,
    adresse      integer            not null references Adresse (lokationsId),
    adresszusatz varchar
);
create table "user"
(
    id       serial primary key not null,
    standort integer            not null references Standort (id)
);
create table Haltestelle
(
    id       serial primary key not null,
    name     varchar            not null,
    standort integer            not null references Standort (id)
);
create table Linie
(
    name     varchar primary key not null,
    fahrplan json
);
create table TeilStrecke
(
    id               serial primary key not null,
    startHaltestelle integer            not null references Haltestelle (id),
    zielHaltestelle  integer            not null references Haltestelle (id),
    dauer            integer,
    oe_linie         varchar references Linie (name),
    f_distanz        integer
);
create table Route
(
    id                  serial  not null primary key,
    ersteTeilStreckenId integer not null references TeilStrecke (id),
    ausgangspunkt       integer not null references Standort (id),
    endpunkt            integer not null references Standort (id),
    userId              integer not null references "user" (id)
);
alter table TeilStrecke
    add column davor    integer references TeilStrecke (id),
    add column danach   integer references TeilStrecke (id),
    add column routenId integer references Route (id);

create table HaltestelleRoute
(
    hid integer not null references haltestelle (id),
    rid integer not null references Route (id)
);
create table Kategorie
(
    id          serial primary key,
    bezeichnung varchar,
    typeOfPOI   smallint
);
create table PointOfInterest
(
    id             serial primary key,
    name           varchar not null,
    bewertung      real    not null default 0,
    standort       integer not null references Standort (id),
    website        varchar,
    kategorie      integer not null references Kategorie (id),
    s_beschreibung varchar,
    h_bettenAnzahl integer,
    r_speisekarte  json,
    r_hauben       integer
);