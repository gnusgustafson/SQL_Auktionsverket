DELIMITER //

CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`Bud_AFTER_INSERT` AFTER INSERT ON `Bud` FOR EACH ROW
BEGIN
DECLARE acceptValue INT;

    
	SELECT Produkt.acceptpris
    INTO acceptValue
    from Produkt
    where Produkt.ProduktID = NEW.ProduktID;
    
    IF NEW.Bud >= acceptValue THEN

    CALL procedure_acceptvalue(NEW.produktid);
    END IF;

END //

DELIMITER ;

DELIMITER //

CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`Avslutad_BEFORE_INSERT` BEFORE INSERT ON `Avslutad` FOR EACH ROW
BEGIN


	IF NEW.Slutpris is null THEN
    SET NEW.Slutpris = 0;
	END IF;
    
	IF NEW.KundID = 1 THEN
    SET NEW.KundID = NULL;
	END IF;

END //

DELIMITER ;

DELIMITER //

CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`Produkt_AFTER_INSERT` AFTER INSERT ON `Produkt` FOR EACH ROW
BEGIN

	INSERT INTO `mydb`.`bud` (`Bud`, `ProduktID`, `KundID`) VALUES ('0', NEW.ProduktID, '1');

	

END //

DELIMITER ;

DELIMITER //

CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`Avslutad_AFTER_INSERT` AFTER INSERT ON `Avslutad` FOR EACH ROW
BEGIN

    
    IF NEW.Slutpris = 0 THEN
    
    INSERT INTO `mydb`.`MailLista` (`AvslutadID`, `LeverantörsID`) VALUES (NEW.AvslutadID, NEW. LeverantörsID);

    
    END IF;

END //

DELIMITER ;

DELIMITER //

CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`Bud_BEFORE_INSERT` BEFORE INSERT ON `Bud` FOR EACH ROW
BEGIN

DECLARE acceptValue INT;

    
	SELECT Produkt.acceptpris
    INTO acceptValue
    from Produkt
    where Produkt.ProduktID = NEW.ProduktID;
    
    IF NEW.Bud >= acceptValue THEN

    SET NEW.Bud = acceptValue;
    
    END IF;

END //

DELIMITER ;