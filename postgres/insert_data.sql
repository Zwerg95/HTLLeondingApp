select * from standort;

insert into adresse (plz, ort, strasse, hausnr)
values (4060, 'Leonding', 'Limesstraße', '12-14');

insert into standort (xkoordinate, ykoordinate, adresse)
values (48.268428922989735, 14.25177602790489, 1);

insert into kategorie (bezeichnung, typeofpoi)
values ('Sehenswürdigkeit', 1),
       ('Restaurant', 2),
       ('Hotel', 3);

insert into pointofinterest (name, bewertung, standort, website, kategorie)
values ('HTL Leonding', 4, 1, 'https://www.htl-leonding.at/', 1);

insert into "user" (standort)
values (1);

insert into adresse (plz, ort, strasse, hausnr)
values (4060, 'Leonding', 'Dr. Herbert-Sperl-Ring', '2');

insert into standort (xkoordinate, ykoordinate, adresse)
values (48.26315561380409, 14.259889582968887, 2);

insert into pointofinterest (name, bewertung, standort, website, kategorie)
values ('Taifun', 4, 2, 'https://www.asiarestaurant-taifun.at', 2);

insert into adresse (plz, ort, strasse, hausnr)
values (4060, 'Leonding', 'Michaelsbergstraße', '39');

insert into standort (xkoordinate, ykoordinate, adresse)
values (48.28240744541508, 14.249916457671814, 3);

insert into pointofinterest (name, bewertung, standort, website, kategorie)
values ('Ristorante La Ruffa Leonding', 4, 3, 'https://www.ristorante-laruffa.at/leonding/', 2);

insert into adresse (plz, ort, strasse, hausnr)
values (4060, 'Leonding', 'Holzheimer Straße', '7');

insert into standort (xkoordinate, ykoordinate, adresse)
values (48.29166359300169, 14.266733628303045, 4);

insert into pointofinterest (name, bewertung, standort, website, kategorie)
values ('Restaurant Bergdiele', 4, 4, 'https://www.bergdiele-linz.at/?lang=de', 2);