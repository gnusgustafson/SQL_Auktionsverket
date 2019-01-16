SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

-- Skapa leverantörer
insert into mydb.Leverantör (Namn, Provisionsnivå)
values ('Benkes Bakelitfrukter', 0.05);
insert into mydb.Leverantör (Namn, Provisionsnivå)
values ('Tråkiga Trätroll', 0.10);
insert into mydb.Leverantör (Namn, Provisionsnivå)
values ('Lasses Lampetter', 0.15);
insert into mydb.Leverantör (Namn, Provisionsnivå)
values ('Brorsans Bil AB', 0.05);
insert into mydb.Leverantör (Namn, Provisionsnivå)
values ('Kul Krimskrams', 0.10);


-- Skapa produkter
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 1
VALUES ('3', 'Snygg Lampa', 'Cool lampa', '500', '50', '2019-01-02', '2019-01-06');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 2
VALUES ('4', 'Sabb 900', 'rostig', '15000', '5000', '2019-01-02', '2019-01-06');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 3
VALUES ('1', 'Citron', 'sur', '100', '5', '2019-01-02', '2019-01-06');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 4
VALUES ('5', 'Dator', 'Snabb', '4500', '1000', '2019-01-02', '2019-01-12');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 5
VALUES ('3', 'Taklampa', 'lyser bra', '900', '150', '2019-01-02', '2019-01-12');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 6
VALUES ('1', 'Banan', 'Gul i bakelt', '350', '30', '2019-01-07', '2019-01-30');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 7
VALUES ('2', 'Sagan om ringen troll', 'Mycket nördig, jättestor', '700', '100', '2019-01-03', '2019-01-20');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 8
VALUES ('3', 'Ficklampa', 'Ingen lampett, men lyser starkt', '300', '70', '2019-01-03', '2019-01-25');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 9
VALUES ('4', 'Dodge Viper', 'Kvaddad', '300000', '50000', '2019-01-07', '2019-02-09');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 10
VALUES ('5', 'Snusdosa', 'Sprillans ny General Portion', '50', '10', '2019-01-02', '2019-01-25');

-- Utgångsdatumet paserat
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 11
VALUES ('1', 'Äpple', 'Rött och sött!', '8000', '2500', '2018-01-10', '2018-01-24');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 12
VALUES ('2', 'Bergatroll', 'Hård, grå och bara lite ful', '3000', '2000', '2018-01-09', '2018-01-22');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 13
VALUES ('3', 'Guldlampett', 'Nästan 100% äkta guld, inte alls smutsig', '1500', '500', '2018-02-06', '2018-02-19');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 14
VALUES ('4', 'Lådbil', 'Kartong, silertejp och massor av kärlek', '35000', '10000', '2018-02-06', '2018-02-28');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 15
VALUES ('5', 'Strumpor', 'Bättre begagnade', '300', '80', '2018-03-07', '2018-03-15');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 16
VALUES ('1', 'Päron', 'Grönt och skönt!', '40', '5', '2018-03-08', '2018-03-27');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 17
VALUES ('2', 'Vanligt troll', 'Mycket mycket vanlig, snidad av EK i Gävle, 1898', '10000', '2000', '2018-04-08', '2018-04-02');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 18
VALUES ('3', 'Båtlampett', 'För båten, eller huset', '650', '200', '2018-04-09', '2018-04-12');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 19
VALUES ('4', 'Folkracebil', 'För den händiga fartdåren', '4000', '2000', '2018-05-08', '2018-05-20');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 20
VALUES ('5', 'Presentkort', 'Gäller på OKQ8, okänt värde', '900', '1', '2018-06-01', '2018-06-29');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 21
VALUES ('1', 'Kokosnöt', 'Lite hårig, ganska god', '666', '200', '2018-07-01', '2018-07-01');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 22
VALUES ('2', 'Troll', 'Jättestor, byggd av dagisbarn någon gång tidigt 2000-tal', '50', '5', '2019-08-04', '2018-08-28');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 23
VALUES ('3', 'Vanlig lampett', 'Otroligt vanlig', '5000', '800', '2018-09-04', '2018-09-26');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 24
VALUES ('4', 'Batmobilen', 'Tidigare känd ägare, ganska många mil på mätaren', '7000', '1800', '2018-10-02', '2018-10-28');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 25
VALUES ('5', 'Groda', 'Levande sist vi kollade, levereras med trasigt terrarium', '550', '100', '2018-11-02', '2018-11-18');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 26
VALUES ('5', 'Halsband', 'I plast', '300', '50', '2018-12-02', '2018-12-18');

-- Grejer som passerat slutdatumet och inte har något bud, ska skickas till Gunnar
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 27
VALUES ('4', 'Lastbil', 'Scania, Stor', '700000', '50000', '2018-10-02', '2018-10-28');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 28
VALUES ('5', 'Stekpanna', 'Gjorde i plast, antagligen inte eldsäker', '8000', '100', '2018-11-02', '2018-11-18');
INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)-- 29
VALUES ('5', 'Mobilskal', 'Passar Nokia 5110, Motiv med kattungar', '300', '50', '2018-12-02', '2018-12-18');





-- Skapa kategori
insert into mydb.Kategori (Namn) 
values ('Frukt');-- 1
insert into mydb.Kategori (Namn)
values ('50-tal');-- 2
insert into mydb.Kategori (Namn)
values ('70-tal');-- 3
insert into mydb.Kategori (Namn)
values ('Allmoge');-- 4
insert into mydb.Kategori (Namn)
values ('Barock');-- 5
insert into mydb.Kategori (Namn)
values ('Bil');-- 6
insert into mydb.Kategori (Namn)
values ('Fordon');-- 7
insert into mydb.Kategori (Namn)
values ('Klädesplagg');-- 8
insert into mydb.Kategori (Namn)
values ('Musikinstrument');-- 9
insert into mydb.Kategori (Namn)
values ('Tyskland');-- 10

-- Tilldela kategorier
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (1,2);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (1,1);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (2,7);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (2,6);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (3,1);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (4,10);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (5,5);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (5,10);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (6,1);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (7,10);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (7,2);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (8,3);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (8,4);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (8,10);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (9,6);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (9,7);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (10,10);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (10,3);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (11,1);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (12,10);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (13,5);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (14,6);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (14,7);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (15,8);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (16,1);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (17,4);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (18,2);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (19,6);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (19,7);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (20,3);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (21,1);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (22,4);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (23,5);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (24,6);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (24,7);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (25,10);
insert into mydb.Produkt_has_kategori (ProduktID, KategoriID)
values (26,4);




-- Skapa postadresser
insert into mydb.Postadress (Postnummer, Postadress)
values (12941, 'Hägersten');
insert into mydb.Postadress (Postnummer, Postadress)
values (42338, 'Torslanda');
insert into mydb.Postadress (Postnummer, Postadress)
values (76456, 'Grisslehamn');
insert into mydb.Postadress (Postnummer, Postadress)
values (23436, 'Lomma');
insert into mydb.Postadress (Postnummer, Postadress)
values (87123, 'Härnösand');

-- Skapa kunder
insert into mydb.Kund (Förnamn, Efternamn, Mail, Gatuadress, Gatunummer, Postnummer)
values ('INGET BUD', 'INGET BUD', 'INGET BUD', 'INGET BUD', 0, 0);
insert into mydb.Kund (Förnamn, Efternamn, Mail, Gatuadress, Gatunummer, Postnummer)
values ('Mårten', 'Jönsson', '420420@clubclub.com', 'Dalagatan', 34, 42338);
insert into mydb.Kund (Förnamn, Efternamn, Mail, Gatuadress, Gatunummer, Postnummer)
values ('Mohammed', 'Salonen', 'ilovetequila@hotmale.com', 'Bananbacken', 54, 76456);
insert into mydb.Kund (Förnamn, Efternamn, Mail, Gatuadress, Gatunummer, Postnummer)
values ('Dan', 'Bernadott', 'royal4life@hovet.se', 'Kungsgatan', 666, 23436);
insert into mydb.Kund (Förnamn, Efternamn, Mail, Gatuadress, Gatunummer, Postnummer)
values ('Ragnhild', 'Räserbajsson', 'catsarelove@gmail.com', 'Albanoplan', 22, 87123);
insert into mydb.Kund (Förnamn, Efternamn, Mail, Gatuadress, Gatunummer, Postnummer)
values ('Stina', 'Grötenberg', 'risgryn@svenskaakademien.se', 'Brunbygård', 34, 12941);
insert into mydb.Kund (Förnamn, Efternamn, Mail, Gatuadress, Gatunummer, Postnummer)
values ('Gösta', 'Grötenberg', 'Lillagoran@svenskaakademien.se', 'Brunbygård', 34, 12941);

-- Skapa bud
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('100', '1', '3');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('200', '1', '2');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('300', '1', '3');

INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('5000', '2', '4');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('6000', '2', '5');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('7000', '2', '6');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('8000', '2', '3');

-- acceptpriset uppnått datumet har inte gått ut
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('5', '3', '6');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('70', '3', '5');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('100', '3', '3');

INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('1000', '4', '2');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('2000', '4', '6');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('2200', '4', '5');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('2400', '4', '2');

INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('150', '5', '4');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('700', '5', '3');

-- Acceptpris uppnått datumet har inte gått ut
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('350', '6', '4');

-- Acceptpris uppnått datumet har inte gått ut
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('100', '7', '2');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('150', '7', '3');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('300', '7', '4');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('350', '7', '5');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('500', '7', '6');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('700', '7', '5');

INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('70', '8', '6');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('150', '8', '3');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('220', '8', '4');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('300', '8', '2');

INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('5000', '9', '2');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('6000', '9', '5');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('7000', '9', '6');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('8000', '9', '2');

INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('10', '10', '5');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('15', '10', '3');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('16', '10', '2');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('17', '10', '3');

-- bud nedan är lagda på avslutade auktioner
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('3500', '11', '4');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('1500', '12', '3');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('800', '13', '5');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('22000', '14', '2');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('250', '15', '2');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('400', '16', '2'); -- över accepetpris
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('6500', '17', '6');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('500', '18', '5');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('2500', '19', '3');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('100', '20', '4');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('666', '21', '5'); -- exakt acceptpris
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('40', '22', '5');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('4000', '23', '5');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('5500', '24', '2');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('400', '25', '3');
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('180', '26', '4');






SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;