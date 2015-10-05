-- MySQL Script generated by MySQL Workbench
-- 10/05/15 22:56:27
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Factuur`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Factuur` (
  `idOfferte` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `VloerAantal` INT NOT NULL COMMENT '',
  `VloerPrijs` INT NOT NULL COMMENT '',
  `ProductAantal` INT NOT NULL COMMENT '',
  `ProductPrijs` INT NOT NULL COMMENT '',
  `TotaalPrijsInclBTW` INT NOT NULL COMMENT '',
  `TotaalprijsExclBTW` INT NULL COMMENT '',
  `Expiratiedatum` DATETIME NULL COMMENT '',
  `Opmerkingen` TEXT NULL COMMENT '',
  `idVloer` INT NOT NULL COMMENT '',
  `idProduct` INT NOT NULL COMMENT '',
  PRIMARY KEY (`idOfferte`)  COMMENT '',
  INDEX `fk_Factuur_Vloer1_idx` (`idVloer` ASC)  COMMENT '',
  INDEX `fk_Factuur_Product1_idx` (`idProduct` ASC)  COMMENT '',
  CONSTRAINT `fk_Factuur_Vloer1`
    FOREIGN KEY (`idVloer`)
    REFERENCES `mydb`.`Vloer` (`idVloer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Factuur_Product1`
    FOREIGN KEY (`idProduct`)
    REFERENCES `mydb`.`Product` (`idProduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Leverancier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Leverancier` (
  `idLeverancier` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `Bedrijfsnaam` VARCHAR(45) NULL COMMENT '',
  `Contactpersoon` VARCHAR(45) NULL COMMENT '',
  `Emailadres` VARCHAR(45) NULL COMMENT '',
  `FacturenOpen` BLOB NULL COMMENT '',
  `FacturenBetaald` BLOB NULL COMMENT '',
  `Leveringen` VARCHAR(45) NULL COMMENT '',
  `Producten` VARCHAR(45) NULL COMMENT '',
  `Opmerkingen` TEXT NULL COMMENT '',
  PRIMARY KEY (`idLeverancier`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Productgroep`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Productgroep` (
  `idProductgroep` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `Type` VARCHAR(8) NOT NULL COMMENT '',
  `Materiaal` VARCHAR(45) NOT NULL COMMENT '',
  `AfmetingM2` INT NOT NULL COMMENT '',
  PRIMARY KEY (`idProductgroep`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Offerte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Offerte` (
  `idOfferte` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `VloerAantal` INT NOT NULL COMMENT '',
  `VloerPrijs` INT NOT NULL COMMENT '',
  `ProductAantal` INT NOT NULL COMMENT '',
  `ProductPrijs` INT NOT NULL COMMENT '',
  `TotaalPrijsInclBTW` INT NOT NULL COMMENT '',
  `TotaalprijsExclBTW` INT NULL COMMENT '',
  `Expiratiedatum` DATETIME NULL COMMENT '',
  `Opmerkingen` TEXT NULL COMMENT '',
  PRIMARY KEY (`idOfferte`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Werkbon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Werkbon` (
  `idWerkbon` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `VloerAantal` INT NOT NULL COMMENT '',
  `ProductAantal` INT NOT NULL COMMENT '',
  `Opmerkingen` TEXT NOT NULL COMMENT '',
  PRIMARY KEY (`idWerkbon`)  COMMENT '')
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
