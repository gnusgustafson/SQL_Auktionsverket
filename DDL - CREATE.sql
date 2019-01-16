-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `Leverantör`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Leverantör` (
  `LeverantörsID` INT NOT NULL AUTO_INCREMENT,
  `Namn` VARCHAR(45) NOT NULL,
  `Provisionsnivå` DOUBLE NOT NULL,
  PRIMARY KEY (`LeverantörsID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Produkt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Produkt` (
  `ProduktID` INT NOT NULL AUTO_INCREMENT,
  `LeverantörsID` INT NOT NULL,
  `Namn` VARCHAR(45) NOT NULL,
  `Beskrivning` VARCHAR(250) NOT NULL,
  `Acceptpris` DOUBLE NULL,
  `Utropspris` DOUBLE NULL,
  `Startdatum` DATE NULL,
  `Slutdatum` DATE NULL,
  PRIMARY KEY (`ProduktID`),
  INDEX `fk_Produkt_Leverantör1_idx` (`LeverantörsID` ASC) VISIBLE,
  CONSTRAINT `fk_Produkt_Leverantör1`
    FOREIGN KEY (`LeverantörsID`)
    REFERENCES `Leverantör` (`LeverantörsID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Postadress`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Postadress` (
  `Postnummer` INT NOT NULL,
  `Postadress` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Postnummer`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Kund`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Kund` (
  `KundID` INT NOT NULL AUTO_INCREMENT,
  `Förnamn` VARCHAR(45) NOT NULL,
  `Efternamn` VARCHAR(45) NOT NULL,
  `Mail` VARCHAR(45) NOT NULL,
  `Gatuadress` VARCHAR(45) NOT NULL,
  `Gatunummer` INT(10) NOT NULL,
  `Postnummer` INT NOT NULL,
  PRIMARY KEY (`KundID`),
  INDEX `fk_Kund_Postadress1_idx` (`Postnummer` ASC) VISIBLE,
  CONSTRAINT `fk_Kund_Postadress1`
    FOREIGN KEY (`Postnummer`)
    REFERENCES `Postadress` (`Postnummer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Kategori`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Kategori` (
  `KategoriID` INT NOT NULL AUTO_INCREMENT,
  `Namn` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`KategoriID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Produkt_has_Kategori`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Produkt_has_Kategori` (
  `ProduktID` INT NOT NULL,
  `KategoriID` INT NOT NULL,
  `Produkt_has_KategoriID` INT NOT NULL AUTO_INCREMENT,
  INDEX `fk_Produkt_has_Kategori_Kategori1_idx` (`KategoriID` ASC) VISIBLE,
  INDEX `fk_Produkt_has_Kategori_Produkt1_idx` (`ProduktID` ASC) VISIBLE,
  PRIMARY KEY (`Produkt_has_KategoriID`),
  CONSTRAINT `fk_Produkt_has_Kategori_Produkt1`
    FOREIGN KEY (`ProduktID`)
    REFERENCES `Produkt` (`ProduktID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Produkt_has_Kategori_Kategori1`
    FOREIGN KEY (`KategoriID`)
    REFERENCES `Kategori` (`KategoriID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Bud`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Bud` (
  `BudID` INT NOT NULL AUTO_INCREMENT,
  `Bud` DOUBLE NOT NULL,
  `ProduktID` INT NOT NULL,
  `KundID` INT NOT NULL,
  INDEX `fk_Bud_Produkt1_idx` (`ProduktID` ASC) VISIBLE,
  INDEX `fk_Bud_Kund1_idx` (`KundID` ASC) VISIBLE,
  PRIMARY KEY (`BudID`),
  CONSTRAINT `fk_Bud_Produkt1`
    FOREIGN KEY (`ProduktID`)
    REFERENCES `Produkt` (`ProduktID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Bud_Kund1`
    FOREIGN KEY (`KundID`)
    REFERENCES `Kund` (`KundID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Avslutad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Avslutad` (
  `AvslutadID` INT NOT NULL AUTO_INCREMENT,
  `ProduktID` INT NOT NULL,
  `LeverantörsID` INT NOT NULL,
  `Namn` VARCHAR(45) NOT NULL,
  `Beskrivning` VARCHAR(250) NOT NULL,
  `Acceptpris` DOUBLE NULL,
  `Utropspris` DOUBLE NULL,
  `Slutpris` DOUBLE NULL,
  `Startdatum` DATE NOT NULL,
  `Slutdatum` DATE NOT NULL,
  `Provisionsnivå` DOUBLE NULL,
  `KundID` INT NULL,
  PRIMARY KEY (`AvslutadID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AvslutadKategori`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AvslutadKategori` (
  `KategoriID` INT NOT NULL,
  `AvslutadID` INT NOT NULL,
  `AvslutadKategoriID` INT NOT NULL AUTO_INCREMENT,
  INDEX `fk_Kategori_has_Avslutad_Avslutad1_idx` (`AvslutadID` ASC) VISIBLE,
  INDEX `fk_Kategori_has_Avslutad_Kategori1_idx` (`KategoriID` ASC) VISIBLE,
  PRIMARY KEY (`AvslutadKategoriID`),
  CONSTRAINT `fk_Kategori_has_Avslutad_Kategori1`
    FOREIGN KEY (`KategoriID`)
    REFERENCES `Kategori` (`KategoriID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Kategori_has_Avslutad_Avslutad1`
    FOREIGN KEY (`AvslutadID`)
    REFERENCES `Avslutad` (`AvslutadID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MailLista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MailLista` (
  `EjSåldID` INT NOT NULL AUTO_INCREMENT,
  `AvslutadID` INT NOT NULL,
  `LeverantörsID` INT NOT NULL,
  PRIMARY KEY (`EjSåldID`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
