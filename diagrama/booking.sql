
CREATE SCHEMA IF NOT EXISTS `BOOKING_RESTAURANT` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `BOOKING_RESTAURANT`.`RESTAURANT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BOOKING_RESTAURANT`.`RESTAURANT` (
  `id` INT(19) NOT NULL,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(100) NULL,
  `address` VARCHAR(100) NULL,
  `image` VARCHAR(500) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BOOKING_RESTAURANT`.`RESERVATION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BOOKING_RESTAURANT`.`RESERVATION` (
  `id` INT(19) NOT NULL,
  `locator` VARCHAR(45) NULL,
  `person` INT(19) NULL,
  `date` DATE NULL,
  `turn` VARCHAR(45) NULL,
  `RESTAURANT_id` INT(19) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_RESERVATION_RESTAURANT_idx` (`RESTAURANT_id` ASC),
  CONSTRAINT `fk_RESERVATION_RESTAURANT`
    FOREIGN KEY (`RESTAURANT_id`)
    REFERENCES `BOOKING_RESTAURANT`.`RESTAURANT` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BOOKING_RESTAURANT`.`TURN`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BOOKING_RESTAURANT`.`TURN` (
  `id` INT(19) NOT NULL,
  `name` VARCHAR(45) NULL,
  `RESTAURANT_id` INT(19) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_TURN_RESTAURANT1_idx` (`RESTAURANT_id` ASC) ,
  CONSTRAINT `fk_TURN_RESTAURANT1`
    FOREIGN KEY (`RESTAURANT_id`)
    REFERENCES `BOOKING_RESTAURANT`.`RESTAURANT` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BOOKING_RESTAURANT`.`BOARD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BOOKING_RESTAURANT`.`BOARD` (
  `id` INT(19) NOT NULL,
  `capacity` INT(19) NULL,
  `number` INT(19) NULL,
  `RESTAURANT_id` INT(19) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_BOARD_RESTAURANT1_idx` (`RESTAURANT_id` ASC),
  CONSTRAINT `fk_BOARD_RESTAURANT1`
    FOREIGN KEY (`RESTAURANT_id`)
    REFERENCES `BOOKING_RESTAURANT`.`RESTAURANT` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

