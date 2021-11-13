CREATE DATABASE `sample_crm`
    DEFAULT CHARACTER SET utf8mb4
    DEFAULT COLLATE utf8mb4_0900_ai_ci;

CREATE TABLE  `sample_crm`.`user` (
    `ID` INT NOT NULL AUTO_INCREMENT,
    `firstName` VARCHAR(150) NULL,
    `lastName` VARCHAR(150) NULL,
    `email` VARCHAR(150) NOT NULL,
    `phone` VARCHAR(30) NULL,
    `createdOn` datetime NOT NULL DEFAULT (UTC_TIMESTAMP()),
    `updatedOn` datetime NOT NULL DEFAULT (UTC_TIMESTAMP()),
    PRIMARY KEY (`ID`),
    UNIQUE KEY `UQ_email` (`email`) USING BTREE,
    FULLTEXT KEY `FT_FirstNameLastName` (`firstName`,`lastName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT `ID`,`firstName`,`lastName`,`email`,`phone`,`createdOn`,`updatedOn`
FROM `sample_crm`,`user`