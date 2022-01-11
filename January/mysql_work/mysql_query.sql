-- #Create a schema
CREATE SCHEMA college;

-- ## Create a college table
CREATE TABLE `college`.`students` (
  `StudentID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(100) NULL,
  `Surname` VARCHAR(100) NULL,
  PRIMARY KEY (`StudentID`));

-- ## Create a course table
CREATE TABLE `college`.`cources` (
  `Name` VARCHAR(100) NULL,
  `CourseID` INT NOT NULL AUTO_INCREMENT,
  `Credits` INT NULL,
  PRIMARY KEY (`CourseID`));

-- ## Create Enrolment table
CREATE TABLE `college`.`enrolments` (
  `StudentID` INT NULL,
  `CourseID` INT NULL,
  INDEX `StudentID_idx` (`StudentID` ASC) VISIBLE,
  INDEX `CourseID_idx` (`CourseID` ASC) VISIBLE,
  CONSTRAINT `StudentID`
    FOREIGN KEY (`StudentID`)
    REFERENCES `college`.`students` (`StudentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `CourseID`
    FOREIGN KEY (`CourseID`)
    REFERENCES `college`.`cources` (`CourseID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `college`.`cources` (`Name`, `Credits`) VALUES ('Physics', '6');