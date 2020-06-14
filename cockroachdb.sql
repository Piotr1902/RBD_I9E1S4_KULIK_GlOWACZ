CREATE DATABASE IF NOT EXISTS SLEDZENIEPACZEK WITH ENCODING = 'UTF-8';

CREATE TABLE IF NOT EXISTS KLIENT 
(
   ID_KLIENTA           INT               not null,
   IMIE_NAZWISKO        STRING                 not null,
   ADRES                STRING,
   INDEX(ID_KLIENTA),
   constraint PK_KLIENT primary key (ID_KLIENTA)
);

CREATE TABLE IF NOT EXISTS KURIER 
(
   ID_KURIERA           INT               not null,
   IMIE_NAZWISKO        STRING                 not null,
   TELEFON              STRING                 not null,
   INDEX(ID_KURIERA),
   constraint PK_KURIER primary key (ID_KURIERA)
);

CREATE TABLE IF NOT EXISTS LOKALIZACJA 
(
   ID_LOKALIZACJI       INT               not null,
   LOKALIZACJA          STRING                 not null,
   INDEX(ID_LOKALIZACJI),
   constraint PK_LOKALIZACJA primary key (ID_LOKALIZACJI)
);

CREATE TABLE IF NOT EXISTS PACZKA 
(
   ID_PACZKI            INT               not null,
   ID_KLIENTA           INT,
   ID_KURIERA           INT,
   ZAWARTOSC            STRING                 not null,
   WARTOSC              FLOAT,
   INDEX(ID_PACZKI),
   INDEX(ID_KLIENTA,ID_KURIERA),
   INDEX(ID_KLIENTA),
   INDEX(ID_KURIERA),
   constraint PK_PACZKA primary key (ID_PACZKI)
);

CREATE TABLE IF NOT EXISTS STATUS_PACZKI 
(
   ID_STATUSU           INT               not null,
   ID_PACZKI            INT,
   ID_LOKALIZACJI       INT,
   DATA_CZAS            TIMESTAMP,
   INDEX(ID_STATUSU),
   INDEX(ID_PACZKI) STORING(ID_LOKALIZACJI),
   constraint PK_STATUS_PACZKI primary key (ID_STATUSU)
);

INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (1,'Indigo Sharp','P.O. Box 587, 7698 Amet Av.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (2,'Dacey Wilkinson','P.O. Box 789, 7432 Vitae Road');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (3,'Moana Case','1235 Tincidunt Ave');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (4,'Nigel Rich','835-5204 Sociis Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (5,'Maris Mullins','8714 Neque Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (6,'Willa Giles','151-5521 Mauris Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (7,'Drew Case','P.O. Box 641, 6288 Morbi St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (8,'Cassidy Maxwell','8073 Tempor Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (9,'Morgan Carver','3486 Vestibulum Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (10,'Nathaniel Charles','P.O. Box 864, 5163 Duis Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (11,'Sara Roberson','Ap #561-6184 Hendrerit. Road');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (12,'Branden Summers','P.O. Box 176, 5522 Turpis Avenue');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (13,'Kylee Kelly','P.O. Box 813, 8090 Imperdiet Ave');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (14,'Asher Sharpe','913-2752 Suscipit St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (15,'Pandora May','Ap #280-5954 Pulvinar St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (16,'Natalie Hess','P.O. Box 691, 6928 Amet Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (17,'Naomi Graves','161-4126 Metus St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (18,'Quynn Fleming','160-932 Quis Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (19,'Paul Solomon','2130 Augue, Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (20,'Price Foley','4077 Eu, St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (21,'Ian Russo','P.O. Box 269, 3724 Ullamcorper Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (22,'Dakota Snow','1975 Posuere St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (23,'Buckminster Mendoza','6145 Aliquam Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (24,'Dean Tucker','591-3599 Donec Road');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (25,'Eugenia Maldonado','152-4753 Nunc Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (26,'Ivory Whitfield','Ap #464-2014 Et, Av.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (27,'Wendy Noel','199-663 Risus. St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (28,'McKenzie Williamson','Ap #108-1566 Imperdiet Avenue');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (29,'Julian Banks','4126 Integer Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (30,'Ima Franco','Ap #827-3529 Nullam St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (31,'Willow Weber','P.O. Box 212, 2939 Aenean Av.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (32,'Zorita Peterson','4654 Natoque Avenue');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (33,'Neve Ballard','357-7926 Varius. Road');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (34,'Myra Gonzales','Ap #746-1927 Nibh. St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (35,'Remedios Pittman','Ap #943-3126 Non, Avenue');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (36,'Buffy Howard','9688 Orci Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (37,'Ann Raymond','231-8870 Faucibus St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (38,'Kerry Austin','7853 Sit Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (39,'Medge Gibson','907-5168 Egestas St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (40,'Benedict Gutierrez','420-4398 Odio Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (41,'Lee Vaughan','937-858 Vitae, Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (42,'Abra Alvarez','340-5085 Malesuada Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (43,'Hamish Sanders','3547 Sem Ave');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (44,'Carly Strickland','8264 At, Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (45,'Joseph Hansen','Ap #990-6211 Ornare. Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (46,'Aiko Deleon','5387 Id, Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (47,'Davis Vance','806 Fusce St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (48,'Brittany Lawson','P.O. Box 705, 6698 Dictum Ave');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (49,'Ursa Campbell','111-2049 Vivamus Road');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (50,'Ivana Cunningham','500-1045 Aliquam Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (51,'Jemima Terry','866-4619 Non, St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (52,'Martha Spencer','P.O. Box 784, 9794 Convallis, Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (53,'Judith Forbes','Ap #620-1613 Dolor. Road');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (54,'Debra Tillman','Ap #141-2070 In Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (55,'Zahir Mejia','753-590 Diam. Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (56,'Nadine Watkins','115-5961 Neque. Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (57,'Lee Maldonado','Ap #250-1056 Mollis Road');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (58,'Yuli Powers','P.O. Box 387, 3665 Lacinia St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (59,'Timon Hill','P.O. Box 901, 4845 Magnis St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (60,'Alyssa Morgan','2337 Sed Road');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (61,'Dai Jensen','361-2332 Luctus. Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (62,'Joseph Gentry','Ap #343-9331 Diam Ave');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (63,'Vernon Crosby','P.O. Box 354, 4589 Eu Ave');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (64,'Martha Ruiz','P.O. Box 683, 6584 Elit St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (65,'Ila Best','317-7850 Dolor, St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (66,'Maxwell Burch','318-6801 Odio St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (67,'Grant Peters','721-3135 Tellus. Ave');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (68,'Heidi Mckinney','5611 Odio. Avenue');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (69,'Omar Jackson','644-3485 Ipsum St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (70,'Adrienne Gallegos','503-7798 Imperdiet Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (71,'Winifred Hopper','P.O. Box 573, 6569 Sed Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (72,'Emma Shepherd','Ap #505-156 Cras Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (73,'Perry Calhoun','464-924 Sagittis Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (74,'Carol Leach','4828 Dis St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (75,'Nelle Buchanan','835-916 Molestie Ave');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (76,'Macon Adams','2963 Aliquet Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (77,'Chiquita Jackson','P.O. Box 643, 6442 Quisque St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (78,'Fallon Mills','Ap #853-9593 Cum Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (79,'Latifah Gardner','813-4289 Egestas St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (80,'Nasim Hendrix','1255 Blandit Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (81,'Porter Delgado','P.O. Box 818, 8591 Vitae Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (82,'Venus Strong','P.O. Box 890, 6654 Quis, Avenue');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (83,'Griffin Sanders','136-3542 Parturient Av.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (84,'Kellie Glass','P.O. Box 463, 4204 Blandit Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (85,'Tatyana Underwood','Ap #138-6251 Mauris Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (86,'Steven Roberts','P.O. Box 590, 3843 Sit Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (87,'Leilani Nieves','4587 Donec Avenue');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (88,'Dalton Patton','6917 Erat Street');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (89,'Maisie Parsons','623-2823 Integer Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (90,'Rajah Mills','6478 Nibh Road');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (91,'Sylvester Hartman','Ap #872-4036 Nulla Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (92,'Amery Pitts','P.O. Box 274, 9621 Bibendum. Avenue');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (93,'Ifeoma Pollard','Ap #113-6352 Sagittis St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (94,'Angela Mcgowan','493-9441 Gravida Avenue');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (95,'Hannah Whitaker','Ap #170-7371 Vivamus Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (96,'Kareem England','348-8139 Curabitur Rd.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (97,'Nell Booker','3598 Risus Ave');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (98,'Destiny Watson','P.O. Box 777, 8365 Eget Road');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (99,'Mollie Hebert','Ap #626-481 Dictum St.');
INSERT INTO Klient (id_klienta,imie_nazwisko,adres) VALUES (100,'Jaquelyn Norman','8150 Mauris Rd.');

INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (1,'Jane Moody','794312109');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (2,'Simone Herring','671647910');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (3,'Nissim Guy','634198507');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (4,'Sage Mckay','713097031');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (5,'Adele Steele','360432186');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (6,'Jasper Patterson','621991133');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (7,'Imogene Vang','324890729');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (8,'Quinn Moses','541126983');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (9,'Drew Stein','484315429');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (10,'Adam Combs','859680637');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (11,'Caldwell Chambers','435102123');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (12,'Lane Myers','908155267');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (13,'Elijah Mathews','761344938');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (14,'Mia Malone','966040360');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (15,'Tashya Short','338076991');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (16,'Iola Lee','935823387');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (17,'Scarlett Combs','325898953');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (18,'Tamara Kirk','415752292');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (19,'Shannon Moss','879977225');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (20,'Madonna Pollard','644532246');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (21,'Carol Farley','140857025');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (22,'Lois Griffith','200076690');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (23,'Juliet Pena','948666787');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (24,'Abra Pruitt','271279417');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (25,'Colby Burt','422106301');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (26,'Remedios Cooke','636718829');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (27,'Karina Gray','944680204');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (28,'Eric Mcfarland','230037257');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (29,'Kiara Byers','842037172');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (30,'Shafira Mullins','166384765');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (31,'Xavier Pope','664972851');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (32,'Summer Mooney','992862806');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (33,'Samson Hess','458642540');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (34,'Justina Townsend','988247860');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (35,'Maryam Garner','480448004');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (36,'Ifeoma Rhodes','918257924');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (37,'Virginia Underwood','754432944');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (38,'Desiree Johnson','186003260');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (39,'Jade Preston','520023555');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (40,'Farrah Combs','598559921');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (41,'Barry Forbes','158552705');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (42,'Ella Madden','975202325');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (43,'Howard Davis','589348782');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (44,'Brittany Cole','144352791');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (45,'Quamar Hamilton','272393544');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (46,'Walter Howe','892022674');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (47,'Larissa Middleton','644174765');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (48,'Orli Pennington','616063017');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (49,'Hakeem Ward','184196620');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (50,'Lenore Morin','732272451');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (51,'Dustin Fisher','315163153');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (52,'Naomi Gray','854188344');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (53,'Angela Huber','175868408');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (54,'Jenna Doyle','191748184');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (55,'Alexa Waters','584599210');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (56,'Leroy Harper','386480909');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (57,'Odette Medina','817628535');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (58,'Shelly Wilder','261613914');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (59,'Janna Dixon','795604940');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (60,'Winifred Soto','683969677');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (61,'Brady Hester','403756368');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (62,'Lawrence Manning','449649385');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (63,'Rose Phelps','598588483');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (64,'Cameron Pena','154458509');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (65,'Ivan Ewing','349524868');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (66,'Damian Valenzuela','502085849');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (67,'Karly Cox','125568569');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (68,'Wendy Parker','155866103');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (69,'Hilel Serrano','224739093');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (70,'Aidan Herring','361390486');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (71,'Kiona Mendez','130119951');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (72,'Bernard Tran','685493730');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (73,'Rahim Matthews','591026738');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (74,'Jameson Floyd','159491368');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (75,'Slade Wilson','242034279');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (76,'Lysandra Mccray','420003439');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (77,'Libby Stafford','719489593');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (78,'Aquila Hammond','929733194');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (79,'Tanya Mullins','289641801');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (80,'Lisandra Beck','587063756');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (81,'Christian Spence','216289669');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (82,'Lysandra Branch','816495200');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (83,'Owen Campbell','396487584');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (84,'Chaney Odom','879451893');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (85,'Ali Mccray','557809458');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (86,'Anne Mullins','105969622');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (87,'Sylvia Snyder','839532738');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (88,'Rose King','527754222');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (89,'Fitzgerald Wilder','590739542');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (90,'Shaine Cochran','514417650');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (91,'Shannon Walker','541205301');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (92,'TaShya Sandoval','318072953');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (93,'Simon Pugh','568495388');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (94,'Hiroko Macias','200240971');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (95,'Luke Rowland','638761922');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (96,'Calista Spence','698383406');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (97,'Jameson Harmon','317213209');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (98,'Talon Farley','312423618');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (99,'Claudia Lawrence','533537128');
INSERT INTO Kurier (id_kuriera,imie_nazwisko,telefon) VALUES (100,'Orson Pearson','454410791');

INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (1,52,52,'eget lacus.','2.16');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (2,97,66,'nec tempus','0.19');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (3,93,72,'Mauris ut','7.87');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (4,92,1,'Praesent eu','6.29');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (5,100,91,'lacus, varius','7.72');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (6,86,57,'Donec est','9.79');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (7,82,71,'Nullam suscipit,','6.59');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (8,2,35,'erat vel','7.07');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (9,91,55,'sollicitudin adipiscing','4.02');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (10,21,69,'scelerisque neque.','3.70');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (11,74,7,'tellus faucibus','6.38');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (12,61,71,'eros. Nam','0.37');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (13,56,87,'elit, dictum','7.31');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (14,3,32,'non lorem','0.64');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (15,36,65,'enim non','7.74');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (16,72,86,'enim. Suspendisse','8.12');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (17,56,6,'Sed nulla','6.61');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (18,9,78,'lacus pede','5.60');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (19,66,6,'porta elit,','3.70');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (20,14,46,'mollis. Integer','8.72');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (21,94,72,'cursus et,','0.10');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (22,21,34,'mus. Proin','0.52');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (23,41,29,'tincidunt vehicula','7.64');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (24,52,87,'Duis ac','5.77');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (25,30,90,'malesuada ut,','8.80');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (26,59,51,'tellus eu','6.75');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (27,92,85,'sit amet','8.10');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (28,69,10,'Proin ultrices.','8.20');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (29,23,17,'eu eros.','5.94');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (30,32,94,'Nunc sed','6.37');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (31,99,22,'massa. Vestibulum','5.59');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (32,79,32,'dictum eu,','5.71');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (33,66,99,'Mauris vestibulum,','1.90');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (34,48,10,'eu, accumsan','2.05');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (35,28,38,'sed pede','8.43');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (36,88,77,'aliquam adipiscing','9.66');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (37,24,62,'vitae, erat.','3.74');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (38,34,84,'magna. Praesent','9.74');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (39,70,46,'magnis dis','8.13');
INSERT INTO Paczka (id_paczki,id_klienta,id_kuriera,zawartosc,wartosc) VALUES (40,67,12,'ultricies dignissim','4.32');

INSERT INTO Lokalizacja (id_lokalizacji,lokalizacja) VALUES(1,'Dostarczono do klienta');
INSERT INTO Lokalizacja (id_lokalizacji,lokalizacja) VALUES(2,'Oddzial 2 Warszawa');
INSERT INTO Lokalizacja (id_lokalizacji,lokalizacja) VALUES(3,'Oddzial 1 Piaseczno');
INSERT INTO Lokalizacja (id_lokalizacji,lokalizacja) VALUES(4,'Oddzial 2 Piaseczno');
INSERT INTO Lokalizacja (id_lokalizacji,lokalizacja) VALUES(5,'Oddzial 1 Grodzisk Mazowiecki');
INSERT INTO Lokalizacja (id_lokalizacji,lokalizacja) VALUES(6,'Oddzial 1 Katowica');
INSERT INTO Lokalizacja (id_lokalizacji,lokalizacja) VALUES(7,'Oddzial 1 Wrocław');
INSERT INTO Lokalizacja (id_lokalizacji,lokalizacja) VALUES(8,'Oddzial 1 Warszawa');
INSERT INTO Lokalizacja (id_lokalizacji,lokalizacja) VALUES(9,'Oddzial 1 Wierzbno');
INSERT INTO Lokalizacja (id_lokalizacji,lokalizacja) VALUES(10,'Oddzial 1 Zielona góra');

INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (1,83,2,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (2,47,1,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (3,30,6,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (4,36,8,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (5,10,8,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (6,100,2,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (7,40,2,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (8,76,5,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (9,34,4,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (10,10,7,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (11,50,6,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (12,40,4,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (13,21,4,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (14,13,8,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (15,61,5,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (16,78,6,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (17,15,7,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (18,15,2,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (19,18,7,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (20,50,4,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (21,81,10,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (22,85,1,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (23,93,9,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (24,3,7,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (25,34,10,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (26,68,3,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (27,99,6,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (28,4,2,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (29,31,4,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (30,96,2,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (31,12,8,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (32,89,10,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (33,98,8,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (34,7,6,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (35,7,7,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (36,49,9,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (37,60,3,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (38,22,10,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (39,90,2,current_timestamp);
INSERT INTO Status_paczki (id_statusu,id_paczki,id_lokalizacji,data_czas) VALUES (40,52,9,current_timestamp);