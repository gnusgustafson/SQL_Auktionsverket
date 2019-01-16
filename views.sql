CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `mydb`.`pågåendeauktioner` (`ProduktID` , `Produktnamn` , `Maxbud` , `Kundnamn`) AS
    SELECT 
        `p`.`ProduktID` AS `ProduktID`,
        `p`.`Namn` AS `Namn`,
        `b`.`Bud` AS `bud`,
        `k`.`Förnamn` AS `förnamn`
    FROM
        ((`mydb`.`produkt` `p`
        JOIN `mydb`.`bud` `b` ON ((`p`.`ProduktID` = `b`.`ProduktID`)))
        JOIN `mydb`.`kund` `k` ON ((`k`.`KundID` = `b`.`KundID`)))
    WHERE
        (`b`.`Bud` = (SELECT 
                MAX(`mydb`.`bud`.`Bud`)
            FROM
                `mydb`.`bud`
            WHERE
                (`mydb`.`bud`.`ProduktID` = `p`.`ProduktID`)));
                
	CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `mydb`.`vilka_som_köpt_vad_och_för_hur_mycket` AS
    SELECT 
        `a`.`KundID` AS `kundid`,
        `k`.`Förnamn` AS `förnamn`,
        SUM(`a`.`Slutpris`) AS `Totalt köpt`
    FROM
        (`mydb`.`avslutad` `a`
        JOIN `mydb`.`kund` `k` ON ((`a`.`KundID` = `k`.`KundID`)))
    GROUP BY `a`.`KundID`;
    
    
    
    CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `mydb`.`provisionpermånad` (`År` , `Månad` , `Provision`) AS
    SELECT 
        YEAR(`a`.`Slutdatum`) AS `year(a.slutdatum)`,
        MONTH(`a`.`Slutdatum`) AS `month(a.slutdatum)`,
        SUM((`a`.`Slutpris` * `a`.`Provisionsnivå`)) AS `Total provision`
    FROM
        `mydb`.`avslutad` `a`
    GROUP BY YEAR(`a`.`Slutdatum`), MONTH(`a`.`Slutdatum`);
                
                