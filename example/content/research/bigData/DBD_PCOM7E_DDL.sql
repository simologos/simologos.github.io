-- MySQL Script generated by MySQL Workbench
-- Mon Jul 17 22:36:47 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DBD_PCOM7E
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `DBD_PCOM7E` ;

-- -----------------------------------------------------
-- Schema DBD_PCOM7E
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DBD_PCOM7E` DEFAULT CHARACTER SET utf8 ;
USE `DBD_PCOM7E` ;

-- -----------------------------------------------------
-- Table `DBD_PCOM7E`.`Students`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBD_PCOM7E`.`Students` ;

CREATE TABLE IF NOT EXISTS `DBD_PCOM7E`.`Students` (
  `Student_ID` INT NOT NULL,
  `First_Name` VARCHAR(200) NOT NULL,
  `Last_Name` VARCHAR(200) NOT NULL,
  `Birth_Date` DATE NOT NULL,
  PRIMARY KEY (`Student_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DBD_PCOM7E`.`Teachers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBD_PCOM7E`.`Teachers` ;

CREATE TABLE IF NOT EXISTS `DBD_PCOM7E`.`Teachers` (
  `Teacher_ID` INT NOT NULL,
  `Title` VARCHAR(5) NOT NULL,
  `Last_Name` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Teacher_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DBD_PCOM7E`.`Courses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBD_PCOM7E`.`Courses` ;

CREATE TABLE IF NOT EXISTS `DBD_PCOM7E`.`Courses` (
  `Course_ID` INT NOT NULL,
  `Teacher_ID` INT NOT NULL,
  `Name` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Course_ID`),
  INDEX `FK_Courses_Teachers_idx` (`Teacher_ID` ASC) VISIBLE,
  UNIQUE INDEX `Teacher_ID_Name_UNIQUE` (`Teacher_ID` ASC, `Name` ASC) INVISIBLE,
  CONSTRAINT `FK_Courses_Teachers`
    FOREIGN KEY (`Teacher_ID`)
    REFERENCES `DBD_PCOM7E`.`Teachers` (`Teacher_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DBD_PCOM7E`.`Exam_Boards`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBD_PCOM7E`.`Exam_Boards` ;

CREATE TABLE IF NOT EXISTS `DBD_PCOM7E`.`Exam_Boards` (
  `Exam_Board_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Exam_Board_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DBD_PCOM7E`.`Exams`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBD_PCOM7E`.`Exams` ;

CREATE TABLE IF NOT EXISTS `DBD_PCOM7E`.`Exams` (
  `Student_ID` INT NOT NULL,
  `Course_ID` INT NOT NULL,
  `Exam_Board_ID` INT NOT NULL,
  `Exam_Score` INT NULL,
  `Support` TINYINT NULL,
  INDEX `FK_Exams_Students_idx` (`Student_ID` ASC) VISIBLE,
  INDEX `FK_Exams_Courses1_idx` (`Course_ID` ASC) VISIBLE,
  PRIMARY KEY (`Student_ID`, `Course_ID`),
  INDEX `FK_Exams_Exam_Boards_idx` (`Exam_Board_ID` ASC) VISIBLE,
  CONSTRAINT `FK_Exams_Students`
    FOREIGN KEY (`Student_ID`)
    REFERENCES `DBD_PCOM7E`.`Students` (`Student_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `FK_Exams_Courses`
    FOREIGN KEY (`Course_ID`)
    REFERENCES `DBD_PCOM7E`.`Courses` (`Course_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `FK_Exams_Exam_Boards`
    FOREIGN KEY (`Exam_Board_ID`)
    REFERENCES `DBD_PCOM7E`.`Exam_Boards` (`Exam_Board_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
