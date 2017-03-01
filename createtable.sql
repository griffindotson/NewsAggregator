use han0919_school_db;
-- -----------------------------------------------------
-- Table `surveysez_news`.`categories`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `han0919_school_db`.`categories` ;

CREATE TABLE IF NOT EXISTS `han0919_school_db`.`categories` (
  `CategoryID` INT NOT NULL AUTO_INCREMENT,
  `CategoryName` VARCHAR(255) NOT NULL,
  `CategoryDescription` TEXT NULL,
  PRIMARY KEY (`CategoryID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `surveysez_news`.`subcategories`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `han0919_school_db`.`subcategories` ;

CREATE TABLE IF NOT EXISTS `han0919_school_db`.`subcategories` (
  `SubcategoryID` INT NOT NULL AUTO_INCREMENT,
  `SubcategoryName` VARCHAR(255) NOT NULL,
  `SubcategoryDescription` TEXT NULL,
  `SubcategoryRSS` TEXT NULL,
  `CategoryID` INT NOT NULL,
  PRIMARY KEY (`SubcategoryID`),
  INDEX `FK_categories_subcategories_idx` (`CategoryID` ASC),
  CONSTRAINT `FK_categories_subcategories`
    FOREIGN KEY (`CategoryID`)
    REFERENCES `han0919_school_db`.`categories` (`CategoryID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;