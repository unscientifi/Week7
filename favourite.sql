-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 05, 2019 at 04:04 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `favourite`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_things`
--

CREATE TABLE `tbl_things` (
  `ID` int(11) NOT NULL,
  `Name` varchar(35) NOT NULL,
  `Description` text NOT NULL,
  `Price` varchar(10) NOT NULL,
  `Weight` varchar(10) NOT NULL,
  `Image` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_things`
--

INSERT INTO `tbl_things` (`ID`, `Name`, `Description`, `Price`, `Weight`, `Image`) VALUES
(1, 'DJI Osmo Mobile 3', 'Share-worthy photos and videos are easier than ever with the DJI Osmo Mobile 3 smartphone gimbal stabilizer. This lightweight and portable device offers a range of different shooting modes, such as Timelaspe, Panorama, and Story Mode so you capture the perfect shots every time. It comes complete with an Osmo Grip tripod and carrying case for on-the-go convenience.', '159.99', '0.41kg', '1.jpeg'),
(2, 'DJI Osmo Pocket', 'Big things come in small packages with the DJI Osmo Pocket camera. The compact, handheld device shoots in impressive 4K at 60fps, while its 3-axis gimbal films shake-free video whether you\'re running behind the subject or you\'re filming while driving over bumpy terrain. Take it with you wherever you go and never miss a moment on your adventure.', '469.99', '0.1kg', '2.jpg'),
(3, 'DJI Ronin-S', 'Capture professional-quality footage with the Ronin-S gimbal stabilizer from DJI. With plenty of modes like Timelapse, Track, and SportMode, you\'ll be able to capture smooth footage when filming on your DSLR. The ergonomic design makes it easy to operate, and the companion mobile app provides even more options for finetuning your shot.', '929.99', '1.86kg', '3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_things`
--
ALTER TABLE `tbl_things`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_things`
--
ALTER TABLE `tbl_things`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
