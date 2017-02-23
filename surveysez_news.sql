-- MySQL Workbench Forward Engineering
/*
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema surveysez_news
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `surveysez_news` ;

-- -----------------------------------------------------
-- Schema surveysez_news
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `surveysez_news` DEFAULT CHARACTER SET utf8mb4 ;
*/

USE `surveysez_news` ;

-- -----------------------------------------------------
-- Table `surveysez_news`.`categories`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `surveysez_news`.`categories` ;

CREATE TABLE IF NOT EXISTS `surveysez_news`.`categories` (
  `CategoryID` INT NOT NULL AUTO_INCREMENT,
  `CategoryName` VARCHAR(255) NOT NULL,
  `CategoryRSS` TEXT NULL,
  PRIMARY KEY (`CategoryID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `surveysez_news`.`subcategories`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `surveysez_news`.`subcategories` ;

CREATE TABLE IF NOT EXISTS `surveysez_news`.`subcategories` (
  `SubcategoryID` INT NOT NULL AUTO_INCREMENT,
  `SubcategoryName` VARCHAR(255) NOT NULL,
  `SubcategoryRSS` TEXT NULL,
  `CategoryID` INT NOT NULL,
  PRIMARY KEY (`SubcategoryID`),
  INDEX `FK_categories_subcategories_idx` (`CategoryID` ASC),
  CONSTRAINT `FK_categories_subcategories`
    FOREIGN KEY (`CategoryID`)
    REFERENCES `surveysez_news`.`categories` (`CategoryID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
