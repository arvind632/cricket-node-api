-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2020 at 11:38 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `matches` int(11) NOT NULL,
  `run` int(11) NOT NULL,
  `highestScores` int(11) NOT NULL,
  `fifties` int(11) NOT NULL,
  `hundreds` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `player_id`, `matches`, `run`, `highestScores`, `fifties`, `hundreds`) VALUES
(1, 1, 100, 6045, 145, 50, 20),
(2, 2, 140, 11000, 180, 40, 25);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `imageUri` varchar(200) NOT NULL,
  `PlayerJerseyNumber` tinyint(4) NOT NULL,
  `Country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`id`, `firstName`, `lastName`, `imageUri`, `PlayerJerseyNumber`, `Country`) VALUES
(1, 'Sachin', 'Tendulkar', 'https://www.cricbuzz.com/stats/img/faceImages/25.jpg', 1, 'India'),
(2, 'MS', 'Dhoni', 'https://imagevars.gulfnews.com/2019/07/22/MS-Dhoni_16c1918e33b_medium.jpg', 2, 'India'),
(3, 'Virat', 'Kohli', 'https://img.republicworld.com/republic-prod/stories/promolarge/xxhdpi/iag6fvexftstidlt_1588073506.jpeg?tr=w-812,h-464', 3, 'India'),
(4, 'Gautam', 'Gambhir', 'https://images.indianexpress.com/2019/11/gautam-gambhir-759.jpg', 4, 'India'),
(19, 'Rahul', 'Dravid', 'https://www.bavarealtors.in/wp-content/uploads/2019/11/dummy-man-570x570.png', 5, ''),
(20, 'Arvind', 'Singh', 'https://www.bavarealtors.in/wp-content/uploads/2019/11/dummy-man-570x570.png', 10, ''),
(21, 'Dalip', 'Singh', 'https://www.bavarealtors.in/wp-content/uploads/2019/11/dummy-man-570x570.png', 8, '');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `logoUri` varchar(200) NOT NULL,
  `state` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `logoUri`, `state`) VALUES
(1, 'Team-A', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Seal_of_Uttar_Pradesh.svg/1200px-Seal_of_Uttar_Pradesh.svg.png', 'Uttar Pradesh'),
(2, 'Team-B', 'https://www.logotaglines.com/wp-content/uploads/2017/04/Delhi_Daredevils-new-logo-1200x996.jpg', 'Delhi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
