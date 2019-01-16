DELIMITER //

CREATE PROCEDURE `procedure_kolla_given_auktion` (IN x INT)
BEGIN
select bud.bud as 'Bud', produkt.namn as 'Produkt', kund.förnamn as 'Budare'
from bud, produkt, kund
where bud.produktid = x and produkt.produktid = x and kund.kundid = bud.kundid
ORDER BY bud.bud DESC;
END //_SYNTAX_ERROR_SYNTAX_ERROR

DELIMITER ;

DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `procedure_lägg_bud`(in Bud double, in ProduktID int, in KundID int)
BEGIN
INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES (Bud, ProduktID, KundID);
END //

DELIMITER //

DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `procedure_registrera_produkt`(IN LeverantörsID INT, IN Namn VARCHAR(45),
 IN Beskrivning VARCHAR(250), IN Acceptpris DOUBLE, IN Utgångspris DOUBLE, IN Startdatum DATETIME, IN Slutdatum DATETIME)
BEGIN

INSERT INTO `mydb`.`produkt` (`LeverantörsID`, `Namn`, `Beskrivning`, `Acceptpris`, `Utropspris`, `Startdatum`, `Slutdatum`)
VALUES (LeverantörsID, Namn, Beskrivning, Acceptpris, Utgångspris , Startdatum, Slutdatum);



END //

DELIMITER ;

DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `procedure_rensa_budhistorik`()
BEGIN


DECLARE x INT;
declare y INT;


SET x = (select count(*) from avslutad);
-- SET x = (select max(avslutad.avslutadid) from avslutad);


  
  while x >= 1 DO
  
  set y =(select avslutad.produktid from avslutad where avslutadid = x);
  DELETE FROM `mydb`.`bud` WHERE (`produktid` = y);

	SET x = x - 1;
  
    END WHILE;



END //

DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `procedure_timecheck`()
BEGIN

DECLARE x  INT;
 
DECLARE currentdate DATE;
DECLARE auctiondate DATE;
    
  SET currentdate = CURDATE();
  SET x = (select max(produkt.produktid) from produkt);

  
  while x >= 1 DO
  
    SET auctiondate = (select produkt.slutdatum from produkt where produkt.produktid = x);
  
  
  
  if(currentdate >= auctiondate) THEN
	

	if((select MAX(bud.bud) from bud where produktid = x) is null) THEN
    
    INSERT INTO
	Avslutad (ProduktID, LeverantörsID, Namn, Beskrivning, Acceptpris, Utropspris, Startdatum, Slutdatum, Provisionsnivå)
	select p.produktid, l.leverantörsid, p.namn, p.beskrivning, p.acceptpris, p.utropspris, p.startdatum, p.slutdatum, l.provisionsnivå
	from produkt p
    inner join leverantör l on p.leverantörsid = l.leverantörsid
    WHERE p.produktid = x;
    
    INSERT INTO avslutadKategori(KategoriID, AvslutadID)
	SELECT phk.KategoriID, a.AvslutadID from produkt_has_kategori phk
	INNER JOIN Avslutad a on phk.produktid = a.produktid
	where a.produktid =x;

	DELETE from produkt_has_kategori where produktid = x;

	DELETE from produkt where produktid = x;
    
    
    ELSE
  
	INSERT INTO
	Avslutad (ProduktID, LeverantörsID, Namn, Beskrivning, Acceptpris, Utropspris, Slutpris, Startdatum, Slutdatum, Provisionsnivå, KundID)
	select p.produktid, l.leverantörsid, p.namn, p.beskrivning, p.acceptpris, p.utropspris, b.bud as 'Slutpris', p.startdatum, p.slutdatum, l.provisionsnivå, b.kundid
	from bud b
	inner join produkt p on p.produktid = b.produktid
    inner join leverantör l on p.leverantörsid = l.leverantörsid
    WHERE b.bud = (SELECT MAX(bud) FROM bud WHERE produktid = p.produktid) and p.produktid = x;


	INSERT INTO avslutadKategori(KategoriID, AvslutadID)
	SELECT phk.KategoriID, a.AvslutadID from produkt_has_kategori phk
	INNER JOIN Avslutad a on phk.produktid = a.produktid
	where a.produktid =x;

	SET FOREIGN_KEY_CHECKS=0;
    DELETE from produkt_has_kategori where produktid = x;

	DELETE from produkt where produktid = x;
	SET FOREIGN_KEY_CHECKS=1;

    
  
	END IF;
    END IF;
    set x = x - 1;
    END WHILE;


END //

DELIMITER ;

DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `procedure_acceptvalue`(IN x INT)
BEGIN

		INSERT INTO
		Avslutad (ProduktID, LeverantörsID, Namn, Beskrivning, Acceptpris, Utropspris, Slutpris, Startdatum, Slutdatum, Provisionsnivå, KundID)
		select p.produktid, l.leverantörsid, p.namn, p.beskrivning, p.acceptpris, p.utropspris, b.bud as 'Slutpris', p.startdatum, p.slutdatum, l.provisionsnivå, b.kundid
		from bud b
		inner join produkt p on p.produktid = b.produktid
		inner join leverantör l on p.leverantörsid = l.leverantörsid
		WHERE b.bud = (SELECT MAX(bud) FROM bud WHERE produktid = p.produktid) and p.produktid = x;


		INSERT INTO avslutadKategori(KategoriID, AvslutadID)
		SELECT phk.KategoriID, a.AvslutadID from produkt_has_kategori phk
		INNER JOIN Avslutad a on phk.produktid = a.produktid
		where a.produktid =x;

SET FOREIGN_KEY_CHECKS=0;
		DELETE from produkt_has_kategori where produktid = x;

		DELETE from produkt where produktid = x;
        
        
SET FOREIGN_KEY_CHECKS=1;       

END //

DELIMITER ;

DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `procedure_avslutade_tidsintervall`(in Datum1 date, in Datum2 date)
BEGIN

SELECT a.*, a.slutpris * a.provisionsnivå as 'faktiskt provision'
from avslutad a
where a.slutdatum >= datum1 and a.slutdatum <= datum2;


END //

DELIMITER ;