#create database projekt;
use projekt;
#drop table wydarzenia;
#drop table rodzic;
#drop table dziecko;
#drop table miejsca;
#drop table logowanie;

create table rodzic(
id_r INT PRIMARY KEY AUTO_INCREMENT,
imie_r VARCHAR(25) NOT NULL,
wiek_r VARCHAR(35) NOT NULL,
adres_r VARCHAR(100),
kod_pocztowy_r varchar(6)
);


create table dziecko(
id_dz INT primary key AUTO_INCREMENT,
imie_dz VARCHAR(25),
wiek_dz INT NOT NULL,
id_r INT NOT NULL,
FOREIGN KEY (id_r) REFERENCES rodzic (id_r)
);

create table miejsca(
id_mi INT primary key AUTO_INCREMENT,
nazwa_mi VARCHAR(35),
adres_mi VARCHAR(100),
kod_pocztowy_mi varchar(6),
id_r INT NOT NULL,
FOREIGN KEY (id_r) REFERENCES rodzic (id_r)
);

create table wydarzenia(
id_w INT primary key AUTO_INCREMENT,
nazwa_w VARCHAR(100),
data_w DATE NOT NULL,
godz_w TIME NOT NULL,
link_w VARCHAR(150),
adres_w VARCHAR(100),
kod_pocztowy_w varchar(6),
id_r INT NOT NULL,
FOREIGN KEY (id_r) REFERENCES rodzic (id_r)
);

create table logowanie(
id_l INT primary key AUTO_INCREMENT,
e_mail_r VARCHAR(50),
haslo_r VARCHAR(20),
id_r INT NOT NULL ,
FOREIGN KEY (id_r) REFERENCES rodzic (id_r)
);

insert into rodzic
(id_r, imie_r, wiek_r, adres_r, kod_pocztowy_r)
values
(1, 'Marcin', 28, 'Niska', '00-179'),
(2, 'Bożena', 21, 'Rudawska','02-069'),
(3, 'Anna', 29, 'Banioska', '00-736'),
(4, 'Bonifacy', 25, 'Kossaka', '01-576'),
(5, 'Agnieszka', 18, 'Stalowa', '03-425'),
(6, 'Maria', 32, 'Nadwiślańska', '03-349'),
(7, 'Małgorzata', 35, 'Miła', '05-075'),
(8, 'Izabela', 27, 'Stefana_Baryły', '02-685'),
(9, 'Monika', 22, 'Miączyńska', '02-637'),
(10,'Agnieszka', 39, 'Czerniakowska', '00-714')
;

insert into dziecko
(id_dz, imie_dz, wiek_dz , id_r)
values
(1, 'Paweł', 5, 2),
(2, 'Maria', 1, 1),
(3, 'Krzysztof', 4, 2),
(4, 'Anna', 2, 7),
(5, 'Zenon', 7, 3),
(6, 'Franciszek', 9, 5),
(7, 'Jacek', 6, 6),
(8, 'Agnieszka', 3, 9),
(9, 'Karolina', 4, 10),
(10, 'Michał', 9, 4)
;

insert into miejsca
(id_mi, nazwa_mi, adres_mi, kod_pocztowy_mi, id_r)
values
(1, 'Kolorado centrum zabaw', 'Konarskiego', '01-355', 5), 
(2, 'salon zabaw Bambino', 'Klinowa', '04-030', 4),
(3, 'Basil & Lime', 'Puławska', '02-508', 1),
(4, 'La Bottega Toscana', 'Cybernetyki' ,'02-691', 10),
(5, 'Izumi Sushi', 'Biały_Kamień', '02-593', 2),
(6, 'LIF', 'Aleja_Niepodległości', '02-626', 3),
(7, 'NABO', 'zakręt', '02-907', 1),
(8, 'videlec', 'Grójecka', '02-390', 7),
(9, 'Boska!', 'Stefana_Okrzei','03-714', 8),
(10, 'Bombaj Masala', 'Aleja Jana Pawła II','00-854', 2),
(11, 'Der Elefant', 'Plac bankowy', '00-144', 9),
(12, 'El Greco', 'Grzybowska', '00-131', 5),
(13, 'Four Seasons', 'Hoża', '00-521' ,2),
(14, 'Flaming & Co.', 'Chopina', '00-559', 6),
(15, 'Why Thai', 'wiejska', '00-480', 9),
(16, 'Zushi Poin', 'Świętokrzyska', '01-999', 2),
(17, 'Kura Domowa', 'zwoleńska', '04-761', 3),
(18, 'Kuźnia Kulturalna', 'Stanisława_Kostki_Potockiego', '02-958', 7),
(19, 'Dom', 'Ludwika_MIerosławskiego', '01-558', 4)
;

insert into wydarzenia 
(id_w ,nazwa_w, data_w, godz_w, link_w, adres_w, kod_pocztowy_w, id_r) 
values 
(1, 'Pierwszy kroczek', '2017-09-21', '10:30', 'https://www.facebook.com/KlubOsiedlowySurma/', 'Białobrzeska', '02-364', 2),
(2, 'Bezpłatne zajęcia nauki jazdy na łyżwach', '2017-09-20', '16:15', 'https://www.facebook.com/events/397759407305145/', 'Łazienkowska', '00-449', 1),
(3, 'Teatrzyk dla dzieci', '2017-09-21', '17:30', 'http://www.koszykowa.pl/', 'Koszykowa', '00-950', 4),
(4, 'Koncert Filharmonii Narodowej dla dzieci', '2017-09-22', '10:45', 'http://domkulturywesola.net/','Jana_Pawła_II','05-077', 7),
(5, 'PIKNIK RODZINNY „POŻEGNANIE LATA” 2017', '2017-09-23', '10:00', 'https://www.facebook.com/events/1528401243861749/', 'Kawęczyńska', '03-771', 7),
(6, 'Pieski małe dwa - zajęcia muzyczno-plastyczne', '2017-09-23', '11:00', 'http://fundacjaroro.org/zarezerwuj-miejsce/?ee=123', 'Woronicz', '02-640',3),
(7, 'Kino z tatą: Przebudzenie mocy', '2017-09-24', '19:30', 'http://www.nutkacafe.strefa.pl/repertuar.html#specjalne', 'Obozowa', '01-434', 10),
(8, 'Opowiedz mi bajkę - warsztaty improwizacji dla dzieci', '2017-09-30', '10:00', 'https://www.facebook.com/events/1753808917972094/', 'Kolegiacka', '02-960',5),
(9, 'Seanse filmowe dla dzieci: HOKUS POKUS ALBERCIE ALBERTSONIE', '2017-10-05', '18:00', 'http://ursynow.pl/bezplatne-seanse-filmowe-jesien-2017/', 'Aleja_Komisji_Edukacji_Narodowej','02-777', 6),
(10, 'Kino na Poduchach','2017-10-15', '16:30','http://www.nutkacafe.strefa.pl/' , 'Obozowa', '01-434', 3)
;

insert into logowanie
(id_l, e_mail_r, haslo_r,id_r)
values
(1, 'marcinmucha@wp.pl', '1234', 1),
(2, 'bozenakol@gmail.com', '1234', 2),
(3, 'anna251996@op.pl', '1234' ,3),
(4, 'boni25@vp.pl', '1234', 4),
(5, 'agamala@02.pl','1234', 5 ),
(6, 'MarianPieszalek@gmail.pl', '1234' ,6),
(7, 'malgo35@gmail.com;', '1234', 7),
(8, 'iza90@wp.pl', '1234', 8),
(9, 'monkakowalska@o2.pl','1234', 9),
(10, 'aganieszkaka@gmail.com', '1234', 10)
;

select * from rodzic;
select * from dziecko;
select * from miejsca;
select * from wydarzenia;
select * from logowanie;