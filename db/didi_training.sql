-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 21, 2015 at 11:55 AM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `didi_training`
--
CREATE DATABASE IF NOT EXISTS `didi_training` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `didi_training`;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
CREATE TABLE IF NOT EXISTS `games` (
  `gameid` varchar(130) NOT NULL,
  `title` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `summary` text NOT NULL,
  `createdBy` int(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `modifiedBy` int(20) NOT NULL,
  `modifiedAt` datetime NOT NULL,
  PRIMARY KEY (`gameid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guest_session`
--

DROP TABLE IF EXISTS `guest_session`;
CREATE TABLE IF NOT EXISTS `guest_session` (
  `sessionid` varchar(130) NOT NULL,
  `userid` int(15) NOT NULL,
  `IP` varchar(15) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 inactive and 1 active',
  `createdAt` datetime NOT NULL,
  `modifiedAt` datetime NOT NULL,
  `app_version` varchar(150) NOT NULL,
  `device_version` varchar(150) NOT NULL,
  `device_os` varchar(50) NOT NULL,
  `device_id` varchar(150) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  PRIMARY KEY (`sessionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `languageid` varchar(130) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `createdBy` int(20) NOT NULL,
  `modifiedAt` datetime NOT NULL,
  `modifiedBy` int(20) NOT NULL,
  PRIMARY KEY (`languageid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(12) NOT NULL,
  `modulename` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `createdBy` int(12) NOT NULL,
  `modifiedAt` datetime NOT NULL,
  `modifedBy` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id` varchar(130) NOT NULL,
  `servicename` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `createdBy` int(20) NOT NULL,
  `modifiedAt` datetime NOT NULL,
  `modifiedBy` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_category`
--

DROP TABLE IF EXISTS `service_category`;
CREATE TABLE IF NOT EXISTS `service_category` (
  `id` varchar(130) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `createdBy` int(20) NOT NULL,
  `modifiedAt` datetime NOT NULL,
  `modifiedBy` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `submodules`
--

DROP TABLE IF EXISTS `submodules`;
CREATE TABLE IF NOT EXISTS `submodules` (
  `id` varchar(130) NOT NULL,
  `name` varchar(50) NOT NULL,
  `summary` text NOT NULL,
  `parentservice` varchar(130) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `createdBy` int(20) NOT NULL,
  `modifiedAt` datetime NOT NULL,
  `modifiedBy` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `submodule_games`
--

DROP TABLE IF EXISTS `submodule_games`;
CREATE TABLE IF NOT EXISTS `submodule_games` (
  `submoduleid` varchar(130) NOT NULL,
  `gameid` varchar(130) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `summary` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `createdBy` int(20) NOT NULL,
  `modifiedAt` datetime NOT NULL,
  `modifiedBy` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `submodule_videos`
--

DROP TABLE IF EXISTS `submodule_videos`;
CREATE TABLE IF NOT EXISTS `submodule_videos` (
  `submoduleid` varchar(130) NOT NULL,
  `videoid` varchar(130) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `summary` text NOT NULL,
  `createdBy` int(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `modifiedBy` int(20) NOT NULL,
  `modifiedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `videoid` varchar(130) NOT NULL,
  `title` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `summary` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `createdBy` int(20) NOT NULL,
  `modifiedAt` datetime NOT NULL,
  `modifiedBy` int(20) NOT NULL,
  PRIMARY KEY (`videoid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
