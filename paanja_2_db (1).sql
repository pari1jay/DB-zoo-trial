-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2023 at 10:18 PM
-- Server version: 10.3.38-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paanja_2_db`
--
CREATE DATABASE IF NOT EXISTS `paanja_2_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `paanja_2_db`;

-- --------------------------------------------------------

--
-- Table structure for table `ANIMALS`
--

DROP TABLE IF EXISTS `ANIMALS`;
CREATE TABLE `ANIMALS` (
  `ANIMAL_ID` int(11) NOT NULL,
  `ANIMAL_NAME` varchar(35) NOT NULL,
  `DOB` date NOT NULL,
  `WEIGHT` decimal(8,2) NOT NULL,
  `HEIGHT` decimal(8,2) NOT NULL,
  `GENDER` char(10) DEFAULT NULL,
  `SPECIES_ID` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ANIMALS`
--

INSERT INTO `ANIMALS` (`ANIMAL_ID`, `ANIMAL_NAME`, `DOB`, `WEIGHT`, `HEIGHT`, `GENDER`, `SPECIES_ID`) VALUES
(1132, 'Kardi', '2020-01-15', '150.50', '5.20', 'f', 'o11'),
(2324, 'Simba', '2019-05-22', '120.80', '4.80', 'm', 'c11'),
(2345, 'Genesis', '2017-08-20', '95.00', '4.20', 'm', 'r12'),
(2454, 'Jin', '2018-11-08', '160.00', '5.50', 'm', 'h11'),
(3434, 'Pi', '2020-03-10', '180.20', '6.00', 'm', 'c12'),
(3465, 'Tia', '2020-04-17', '93.00', '4.00', 'f', 'h12'),
(3473, 'Kirk', '2019-04-29', '85.50', '4.00', 'm', 'b12'),
(4340, 'Nili', '2019-07-25', '110.20', '4.50', 'f', 'h12'),
(4611, 'Mia', '2019-06-22', '97.50', '4.10', 'f', 'o12'),
(5462, 'Lisa', '2019-11-30', '88.50', '3.90', 'f', 'h11'),
(5464, 'Adi', '2019-09-03', '200.50', '6.20', 'm', 'h12'),
(5465, 'Barbi', '2020-06-08', '110.00', '4.50', 'f', 'o11'),
(5467, 'Blu', '2018-12-01', '75.00', '3.80', 'm', 'b11'),
(5654, 'Flo', '2020-05-14', '90.50', '4.00', 'f', 'r11'),
(6416, 'Kai', '2018-09-14', '85.00', '3.80', 'f', 'h12'),
(6543, 'Manga', '2020-02-18', '130.00', '5.00', 'm', 'o12'),
(6546, 'Melly', '2018-10-05', '98.00', '4.10', 'f', 'c12'),
(9654, 'Limba', '2019-01-12', '105.50', '4.30', 'm', 'c11');

-- --------------------------------------------------------

--
-- Table structure for table `CARETAKERS`
--

DROP TABLE IF EXISTS `CARETAKERS`;
CREATE TABLE `CARETAKERS` (
  `CARETAKER_ID` int(3) NOT NULL,
  `CARETAKER_ROLE` varchar(70) NOT NULL,
  `SPECIES_TYPE` varchar(30) DEFAULT NULL,
  `EMP_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CARETAKERS`
--

INSERT INTO `CARETAKERS` (`CARETAKER_ID`, `CARETAKER_ROLE`, `SPECIES_TYPE`, `EMP_ID`) VALUES
(1, 'Feeding', 'Carnivores', 1),
(2, 'Vaccinations', 'Herbivores', 6);

-- --------------------------------------------------------

--
-- Table structure for table `DEPARTMENT`
--

DROP TABLE IF EXISTS `DEPARTMENT`;
CREATE TABLE `DEPARTMENT` (
  `DEPT_ID` varchar(5) NOT NULL,
  `DEPT_NAME` varchar(35) NOT NULL,
  `DEPT_CONTACT` char(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `DEPARTMENT`
--

INSERT INTO `DEPARTMENT` (`DEPT_ID`, `DEPT_NAME`, `DEPT_CONTACT`) VALUES
('a33', 'Administration', '3243433452'),
('m44', 'Misc', '3243333452'),
('v22', 'Vet', '3243433452'),
('z11', 'Zoo', '3243433452');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
CREATE TABLE `EMPLOYEE` (
  `EMP_ID` int(11) NOT NULL,
  `EMP_FNAME` varchar(35) NOT NULL,
  `EMP_LNAME` varchar(35) NOT NULL,
  `EMP_TITLE` varchar(30) NOT NULL,
  `EMP_CONTACT` char(14) NOT NULL,
  `DEPT_ID` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`EMP_ID`, `EMP_FNAME`, `EMP_LNAME`, `EMP_TITLE`, `EMP_CONTACT`, `DEPT_ID`) VALUES
(1, 'Jenny', 'KIM', 'Zoo Keeper', '2342342341', 'z11'),
(2, 'Chae', 'Lee', 'Vet', '2342342343', 'v22'),
(3, 'Young Hill', 'v22', 'Vet', '3243433452', 'v22'),
(4, 'Paris', 'FRA', 'Admin', '3243433452', 'a33'),
(5, 'Jeon Lis', 'a33', 'Researcher', '3243433452', 'a33'),
(6, 'Pri JK', 'z11', 'Zoo Keeper', '3243433452', 'z11'),
(7, 'Jimin Park', 'm44', 'Security Guard', '3243433452', 'm44');

-- --------------------------------------------------------

--
-- Table structure for table `ENCLOSURES`
--

DROP TABLE IF EXISTS `ENCLOSURES`;
CREATE TABLE `ENCLOSURES` (
  `ENCLOSURE_ID` int(11) NOT NULL,
  `E_TYPE` varchar(30) NOT NULL,
  `E_SIZE` char(3) NOT NULL,
  `CAPACITY` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ENCLOSURES`
--

INSERT INTO `ENCLOSURES` (`ENCLOSURE_ID`, `E_TYPE`, `E_SIZE`, `CAPACITY`) VALUES
(1122, 'Safari', '12', '20'),
(2233, 'Zoo', '12', '10'),
(3344, 'Bird park', '11', '20'),
(4455, 'Lake', '11', '30');

-- --------------------------------------------------------

--
-- Table structure for table `FEEDINGS`
--

DROP TABLE IF EXISTS `FEEDINGS`;
CREATE TABLE `FEEDINGS` (
  `FEED_ID` int(8) NOT NULL,
  `FEED_ITEM` varchar(100) NOT NULL,
  `FREQUENCY` varchar(30) NOT NULL,
  `SPECIES_TYPE` varchar(30) NOT NULL,
  `EMP_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `FEEDINGS`
--

INSERT INTO `FEEDINGS` (`FEED_ID`, `FEED_ITEM`, `FREQUENCY`, `SPECIES_TYPE`, `EMP_ID`) VALUES
(1, 'Fruits, vegetables, grains, chicken and fish', 'Daily', 'Omnivores', 1),
(2, 'Beef & chicken', 'Once in the evening', 'Carnivores', 1),
(3, 'Vegetables, concentrates, grains, grass', 'Twice daily', 'Herbivores', 1),
(4, 'Fish', 'Alternate days', 'Reptiles', 6),
(5, 'Seasonal fruits, vegetables, concentrates, grains & fish', 'Daily', 'Birds', 6);

-- --------------------------------------------------------

--
-- Table structure for table `SALARY_HISTORY`
--

DROP TABLE IF EXISTS `SALARY_HISTORY`;
CREATE TABLE `SALARY_HISTORY` (
  `SALARY_ID` int(11) NOT NULL,
  `SAL_FROM` datetime NOT NULL,
  `SAL_END` datetime NOT NULL,
  `SALARY_BRACKET` decimal(4,2) NOT NULL,
  `SALARY` decimal(7,2) NOT NULL,
  `EMP_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SALARY_HISTORY`
--

INSERT INTO `SALARY_HISTORY` (`SALARY_ID`, `SAL_FROM`, `SAL_END`, `SALARY_BRACKET`, `SALARY`, `EMP_ID`) VALUES
(121, '2022-01-01 00:00:00', '2022-12-31 00:00:00', '50.99', '50000.00', 1),
(122, '2022-01-01 00:00:00', '2022-12-31 00:00:00', '60.00', '60000.00', 2),
(123, '2022-01-01 00:00:00', '2022-12-31 00:00:00', '70.00', '70000.00', 3),
(124, '2022-01-01 00:00:00', '2022-12-31 00:00:00', '50.44', '55000.00', 4),
(125, '2022-01-01 00:00:00', '2022-12-31 00:00:00', '65.00', '65000.00', 5),
(126, '2022-01-01 00:00:00', '2022-12-31 00:00:00', '50.00', '50000.00', 6),
(127, '2022-01-01 00:00:00', '2022-12-31 00:00:00', '45.00', '45000.00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `SPECIES`
--

DROP TABLE IF EXISTS `SPECIES`;
CREATE TABLE `SPECIES` (
  `SPECIES_ID` varchar(5) NOT NULL,
  `SPECIES_TYPE` varchar(30) DEFAULT NULL,
  `SPECIES_NAME` varchar(30) NOT NULL,
  `ENDANGERMENT_LEVEL` varchar(30) NOT NULL,
  `SPECIES_COUNT` int(3) DEFAULT NULL,
  `ENCLOSURE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SPECIES`
--

INSERT INTO `SPECIES` (`SPECIES_ID`, `SPECIES_TYPE`, `SPECIES_NAME`, `ENDANGERMENT_LEVEL`, `SPECIES_COUNT`, `ENCLOSURE_ID`) VALUES
('b11', 'Birds', 'Peacock', 'Least Concern', 1, 3344),
('b12', 'Birds', 'Ostrich', 'Vulnerable', 1, 3344),
('c11', 'Carnivores', 'Lion', 'Vulnerable', 2, 2233),
('c12', 'Carnivores', 'Tiger', 'Critically Endangered', 2, 1122),
('h11', 'Herbivores', 'Deer', 'Least Concern', 2, 1122),
('h12', 'Herbivores', 'Nilagri', 'Least Concern', 2, 2233),
('h22', 'Herbivores', 'Asian Elephant', 'Endangered', 2, 2233),
('o11', 'Omnivores', 'Bear', 'Endangered', 2, 1122),
('o12', 'Omnivores', 'Macaques', 'Near Threatened', 2, 2233),
('r11', 'Reptiles', 'Crocodiles', 'Endangered', 1, 4455),
('r12', 'Reptiles', 'Turtle', 'Critically Endangered', 1, 4455);

-- --------------------------------------------------------

--
-- Table structure for table `SPONSOR`
--

DROP TABLE IF EXISTS `SPONSOR`;
CREATE TABLE `SPONSOR` (
  `SPONSOR_ID` int(5) NOT NULL,
  `SPONSOR_NAME` varchar(70) NOT NULL,
  `SPONSOR_CONTACT` char(14) NOT NULL,
  `SPONSOR_AMOUNT` decimal(8,2) DEFAULT NULL,
  `ANIMAL_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SPONSOR`
--

INSERT INTO `SPONSOR` (`SPONSOR_ID`, `SPONSOR_NAME`, `SPONSOR_CONTACT`, `SPONSOR_AMOUNT`, `ANIMAL_ID`) VALUES
(120, 'Al Park', '3243433452', '430.90', 3434),
(122, 'Hermoine Granger', '3243433452', '400.00', 2324),
(123, 'Harry Potter', '3243433452', '100.66', 1132),
(124, 'Jackie Chan', '3243433452', '12.00', 2454),
(125, 'Chris Tucker', '3243433452', '70.90', 5464);

-- --------------------------------------------------------

--
-- Table structure for table `VET`
--

DROP TABLE IF EXISTS `VET`;
CREATE TABLE `VET` (
  `VET_ID` int(3) NOT NULL,
  `SPECIALIZATION` varchar(30) NOT NULL,
  `EMP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `VET`
--

INSERT INTO `VET` (`VET_ID`, `SPECIALIZATION`, `EMP_ID`) VALUES
(899, 'DIET', 2),
(988, 'SKIN', 3);

-- --------------------------------------------------------

--
-- Table structure for table `VISITOR`
--

DROP TABLE IF EXISTS `VISITOR`;
CREATE TABLE `VISITOR` (
  `TICKET_ID` int(5) NOT NULL,
  `V_FNAME` varchar(30) NOT NULL,
  `V_LNAME` varchar(30) NOT NULL,
  `V_CONTACT` char(12) NOT NULL,
  `SPONSOR_ID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `VISITOR`
--

INSERT INTO `VISITOR` (`TICKET_ID`, `V_FNAME`, `V_LNAME`, `V_CONTACT`, `SPONSOR_ID`) VALUES
(12344, 'Suga', 'August', '666777888', NULL),
(12345, 'Tae', 'Hyung', '222333444', 120),
(12346, 'Jung', 'Kook', '777555666', 122),
(12347, 'Jim', 'In', '222111444', 124),
(12388, 'Jin', 'Wwh', '222333555', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ANIMALS`
--
ALTER TABLE `ANIMALS`
  ADD PRIMARY KEY (`ANIMAL_ID`),
  ADD UNIQUE KEY `ANIMAL_ID` (`ANIMAL_ID`),
  ADD KEY `SPECIES_ID` (`SPECIES_ID`);

--
-- Indexes for table `CARETAKERS`
--
ALTER TABLE `CARETAKERS`
  ADD PRIMARY KEY (`CARETAKER_ID`),
  ADD UNIQUE KEY `CARETAKER_ID` (`CARETAKER_ID`),
  ADD KEY `SPECIES_TYPE` (`SPECIES_TYPE`),
  ADD KEY `EMP_ID` (`EMP_ID`);

--
-- Indexes for table `DEPARTMENT`
--
ALTER TABLE `DEPARTMENT`
  ADD PRIMARY KEY (`DEPT_ID`),
  ADD UNIQUE KEY `DEPT_ID` (`DEPT_ID`);

--
-- Indexes for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD PRIMARY KEY (`EMP_ID`),
  ADD UNIQUE KEY `EMP_ID` (`EMP_ID`),
  ADD KEY `DEPT_ID` (`DEPT_ID`);

--
-- Indexes for table `ENCLOSURES`
--
ALTER TABLE `ENCLOSURES`
  ADD PRIMARY KEY (`ENCLOSURE_ID`),
  ADD UNIQUE KEY `ENCLOSURE_ID` (`ENCLOSURE_ID`);

--
-- Indexes for table `FEEDINGS`
--
ALTER TABLE `FEEDINGS`
  ADD PRIMARY KEY (`FEED_ID`),
  ADD UNIQUE KEY `FEED_ID` (`FEED_ID`),
  ADD UNIQUE KEY `SPECIES_TYPE` (`SPECIES_TYPE`),
  ADD KEY `EMP_ID` (`EMP_ID`);

--
-- Indexes for table `SALARY_HISTORY`
--
ALTER TABLE `SALARY_HISTORY`
  ADD PRIMARY KEY (`SALARY_ID`),
  ADD UNIQUE KEY `SALARY_ID` (`SALARY_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`);

--
-- Indexes for table `SPECIES`
--
ALTER TABLE `SPECIES`
  ADD PRIMARY KEY (`SPECIES_ID`),
  ADD UNIQUE KEY `SPECIES_ID` (`SPECIES_ID`),
  ADD KEY `SPECIES_TYPE` (`SPECIES_TYPE`),
  ADD KEY `ENCLOSURE_ID` (`ENCLOSURE_ID`);

--
-- Indexes for table `SPONSOR`
--
ALTER TABLE `SPONSOR`
  ADD PRIMARY KEY (`SPONSOR_ID`),
  ADD UNIQUE KEY `SPONSOR_ID` (`SPONSOR_ID`),
  ADD KEY `ANIMAL_ID` (`ANIMAL_ID`);

--
-- Indexes for table `VET`
--
ALTER TABLE `VET`
  ADD PRIMARY KEY (`EMP_ID`),
  ADD UNIQUE KEY `VET_ID` (`VET_ID`);

--
-- Indexes for table `VISITOR`
--
ALTER TABLE `VISITOR`
  ADD PRIMARY KEY (`TICKET_ID`),
  ADD UNIQUE KEY `TICKET_ID` (`TICKET_ID`),
  ADD KEY `SPONSOR_ID` (`SPONSOR_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ANIMALS`
--
ALTER TABLE `ANIMALS`
  ADD CONSTRAINT `ANIMALS_ibfk_1` FOREIGN KEY (`SPECIES_ID`) REFERENCES `SPECIES` (`SPECIES_ID`);

--
-- Constraints for table `CARETAKERS`
--
ALTER TABLE `CARETAKERS`
  ADD CONSTRAINT `CARETAKERS_ibfk_1` FOREIGN KEY (`SPECIES_TYPE`) REFERENCES `FEEDINGS` (`SPECIES_TYPE`),
  ADD CONSTRAINT `CARETAKERS_ibfk_2` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

--
-- Constraints for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD CONSTRAINT `EMPLOYEE_ibfk_1` FOREIGN KEY (`DEPT_ID`) REFERENCES `DEPARTMENT` (`DEPT_ID`);

--
-- Constraints for table `FEEDINGS`
--
ALTER TABLE `FEEDINGS`
  ADD CONSTRAINT `FEEDINGS_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

--
-- Constraints for table `SALARY_HISTORY`
--
ALTER TABLE `SALARY_HISTORY`
  ADD CONSTRAINT `SALARY_HISTORY_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

--
-- Constraints for table `SPECIES`
--
ALTER TABLE `SPECIES`
  ADD CONSTRAINT `SPECIES_ibfk_1` FOREIGN KEY (`SPECIES_TYPE`) REFERENCES `FEEDINGS` (`SPECIES_TYPE`),
  ADD CONSTRAINT `SPECIES_ibfk_2` FOREIGN KEY (`ENCLOSURE_ID`) REFERENCES `ENCLOSURES` (`ENCLOSURE_ID`);

--
-- Constraints for table `SPONSOR`
--
ALTER TABLE `SPONSOR`
  ADD CONSTRAINT `SPONSOR_ibfk_1` FOREIGN KEY (`ANIMAL_ID`) REFERENCES `ANIMALS` (`ANIMAL_ID`);

--
-- Constraints for table `VET`
--
ALTER TABLE `VET`
  ADD CONSTRAINT `VET_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

--
-- Constraints for table `VISITOR`
--
ALTER TABLE `VISITOR`
  ADD CONSTRAINT `VISITOR_ibfk_1` FOREIGN KEY (`SPONSOR_ID`) REFERENCES `SPONSOR` (`SPONSOR_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
