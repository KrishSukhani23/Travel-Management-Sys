-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2020 at 08:24 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-05-14 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `HotelId` int(11) NOT NULL,
  `HotelName` varchar(100) NOT NULL,
  `Description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`HotelId`, `HotelName`, `Description`) VALUES
(101, 'J W Marriott', 'King Size Bed, Swimming Pool, Beach View'),
(102, 'Sofitel', 'Queen Size Bed, Aesthetic ambience, Breakfast inclusive'),
(103, 'The Palm', 'King Size Bed, Aesthetic ambience, Breakfast inclusive, Modern Amenities, Located on a man-made Island');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `Name` varchar(100) NOT NULL,
  `action` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`Name`, `action`, `cdate`) VALUES
('xyz', 'Inserted', '2020-05-15 01:38:41'),
('xyzabc', 'Updated', '2020-05-15 01:39:16'),
('xyzabc', 'Updated', '2020-05-15 01:40:15'),
('xyzabc', 'Updated', '2020-05-15 01:40:44'),
('xyzabc', 'Updated', '2020-05-15 01:40:57'),
('Krish', 'Inserted', '2020-05-20 14:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(12, 4, 'notadmin@gmail.com', '2020-05-09', '2020-05-12', 'hello kerala', '2020-05-08 19:09:45', 2, 'a', '2020-05-14 17:16:55'),
(13, 4, 'krishs@gmail.com', '2020-05-09', '2020-05-12', 'hello kerala', '2020-05-08 19:09:45', 1, NULL, '2020-05-12 19:05:29'),
(14, 5, 'shahkrushna@gmail.com', '2020-05-09', '2020-05-12', 'hello kerala', '2020-05-08 19:09:45', 1, NULL, '2020-05-12 19:02:59'),
(16, 6, 'gandhij@gmail.com', '2020-05-12', '2020-05-18', 'hello indonesia', '2020-05-08 19:09:45', 1, NULL, '2020-05-12 18:52:59'),
(17, 1, 'notadmin@gmail.com', '2020-05-16', '2020-05-21', 'hello manali', '2020-05-14 18:53:49', 0, NULL, NULL),
(18, 7, 'notadmin@gmail.com', '2020-05-22', '2020-05-27', 'Salaam Dubai', '2020-05-14 18:54:19', 0, NULL, NULL),
(19, 7, 'gandhij@gmail.com', '2020-05-22', '2020-05-27', 'Dubai aa raha hu ', '2020-05-14 19:10:04', 0, NULL, NULL),
(20, 6, 'gandhij@gmail.com', '2020-05-15', '2020-05-20', 'Indonesia jaa raha hu', '2020-05-14 19:10:30', 0, NULL, NULL),
(21, 1, 'krish@gmail.com', '2020-05-26', '2020-05-30', 'Thank you', '2020-05-20 09:14:03', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Krish', 'krishs@gmail.com', '75220169', 'Enquiry related to Kerala Package', 'What is the discounted price for 30 people ?', '2020-05-13 22:23:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(9, 'notadmin@gmail.com', 'Booking Issues', 'ticket not booked', '2020-05-13 05:54:29', 'hello ticket will be booked soon', '2020-05-13 05:55:18'),
(10, 'notadmin@gmail.com', 'Booking Issues', 'ticket', '2020-05-13 17:11:17', 'ticket will be booked ASAP\r\n', '2020-05-13 17:11:38'),
(11, NULL, NULL, NULL, '2020-05-14 13:56:29', NULL, NULL),
(12, NULL, NULL, NULL, '2020-05-14 17:58:00', NULL, NULL),
(13, NULL, NULL, NULL, '2020-05-14 18:15:37', NULL, NULL),
(14, NULL, NULL, NULL, '2020-05-14 19:46:25', NULL, NULL),
(15, NULL, NULL, NULL, '2020-05-14 20:08:41', NULL, NULL),
(16, NULL, NULL, NULL, '2020-05-20 09:08:17', NULL, NULL),
(17, 'krish@gmail.com', 'Booking Issues', 'The ticket isnt booked yet', '2020-05-20 09:09:44', 'It will be booked soon', '2020-05-20 09:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'Terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'AboutUs', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contact Number : 123456789 <br> Address : Andheri (West)  </span>'),
(11, 'Contact', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contact Number : 9819686640 <br> Address : Dosti Lily, Wadala</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `HotelId` int(11) NOT NULL,
  `TravelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`, `HotelId`, `TravelId`) VALUES
(1, 'The Magical Snow valley-MANALI', 'Camping, Family Trip, Couples', 'Kullu Manali, India', 25000, 'Accomodation in 4 Star Hotels with Wi-fi connection and free trekking kits available. Pickup from Delhi.', ' Manali-the veritable \"valley of the Gods\"-is an ideal place for the ones in search of both adventure and comfort.\r\nHadimba Temple, Vashishst Baths, Manikaran, Manali Gompa are spiritual places while, Rohtang Pass, Solang Valley, Bhrigu Lake, and Beas Kund Trek are perfect for adventure lovers.', '14287acc-b5cb-46db-b8b4-e3ffe652fc0d.jpg', '2020-04-30 14:23:44', '2020-05-14 12:04:08', 103, 1),
(2, 'Delhi', 'Students', 'Delhi, India', 30000, 'Accomodation in 4 Star Air Conditioned hotel with free Wi-fi. City Tour in a special A/C volvo bus. ', 'Stepped in history yet overthrowing with modern life, Delhi is indeed very colourful.\r\nExplore India Gate, Red Fort, Qutub Minar, Lotus Temple and other attractions by availing our package.', 'delhi-1.jpg', '2020-05-05 15:24:26', '2020-05-20 09:11:24', 101, 3),
(3, 'Demo', 'Demo and test Type', 'Demo test Demo test Demo test Demo test', 35000, 'Demo Demo  test', 'Sample Text for testing.', 'demo.jpg', '2017-05-13 16:00:58', '2020-05-14 12:04:18', 101, 1),
(4, 'God\'s Own Country - KERALA', 'Family and Couple', 'Kerala', 20000, 'Accomodation in 5 star hotels with free Wi-Fi and free Ayuervedic Spa therapy. Visit to the famous backwaters of Kerala.', 'Famous especially for its ecotourism initiatives and beautiful backwaters, this package ensures you do not miss the beautiful backwaters and floating cottages and also the mesmerising tea hillstation of Munnar', 'images.jpg', '2020-04-13 22:39:37', '2020-05-14 12:04:22', 102, 2),
(5, 'The Scotland of India - COORG', 'General', 'Coorg', 35000, 'Accomodation in 5 star resorts with free Wi-Fi facility. Visit to Coffee estates.', 'The region is picturesque with coffee estates, pepper and vanilla plantation with   a small cultivation of tea which forms the crops of the region. It is a small hill station with an altitude of 1150 metres above sea level. Coorg Tour helps in exploring various traditions, cultures, adventures, wildlife, mountains, rivers and much more. Thats one hell of an experience! ', 'coorg-hill-station1.jpg', '2020-03-30 22:42:10', '2020-05-14 12:04:27', 103, 3),
(6, 'Indonesia', 'Family', 'Indonesia', 50000, 'Free wifi, pickup and drop etc', 'Travel to Indonesia is unforgettable, no matter which islands you choose to visit, so don’t worry about seeing everything—the archipelago is just too big to visit everything at once. Some popular islands for Indonesia travel are Sumatra, Java, Komodo and of course, Bali. ', 'mamp-pro-logo-big.png', '2020-04-20 08:01:08', '2020-05-14 20:26:51', 104, 2),
(7, 'Dubai', 'Family', 'Dubai and Abu Dhabi', 43000, 'Extreme adventure at the desert and visit to Ferrari World', '4 nights 5 days', 'dubai.jpg', '2020-05-14 11:36:53', '2020-05-14 20:26:01', 102, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Not Actual Admin', '123456789', 'notadmin@gmail.com', 'f30aa7a662c728b7407c54ae6bfd27d1', '2020-05-08 19:08:55', '2020-05-14 17:40:02'),
(2, 'Krushna Shah', '798532123', 'shahkrushna@gmail.com', 'f30aa7a662c728b7407c54ae6bfd27d1', '2020-05-14 09:28:12', '2020-05-14 11:00:56'),
(3, 'Krish Sukhani', '75220169', 'krishs@gmail.com', 'f30aa7a662c728b7407c54ae6bfd27d1', '2020-05-14 09:29:24', '2020-05-14 11:01:05'),
(5, 'Shreya Jain', '13526495', 'jainshreya@gmail.com', 'f30aa7a662c728b7407c54ae6bfd27d1', '2020-05-14 09:31:23', '2020-05-14 11:02:15'),
(6, 'Meet Dave', '98928564', 'dave@catering.com', 'f30aa7a662c728b7407c54ae6bfd27d1', '2020-05-14 09:33:10', '2020-05-14 11:02:18'),
(7, 'Jash Gandhi', '1326594', 'gandhij@gmail.com', 'f30aa7a662c728b7407c54ae6bfd27d1', '2020-05-14 09:33:54', '2020-05-14 11:02:24'),
(8, 'Vidhi Vaidya', '456912', 'vaidsv@gmail.com', 'f30aa7a662c728b7407c54ae6bfd27d1', '2020-05-14 09:34:29', '2020-05-14 11:02:27'),
(9, 'Jon Snow', '852741', 'js@gmail.com', 'f30aa7a662c728b7407c54ae6bfd27d1\r\n', '2020-05-14 09:34:57', '2020-05-14 11:02:31'),
(10, 'Sherlock Bond', '211007', 'james@holmes.com', 'f30aa7a662c728b7407c54ae6bfd27d1', '2020-05-14 09:36:01', '2020-05-14 11:02:36'),
(15, 'notadmin1', '7506652040', 'notadmin1@gmail.com', 'f30aa7a662c728b7407c54ae6bfd27d1', '2020-05-14 13:56:29', NULL),
(19, 'ABCD', '123456789', 'abcd@g.com', 'f30aa7a662c728b7407c54ae6bfd27d1', '2020-05-14 19:57:57', NULL),
(20, 'xyzabc', '456789132', 'xyz@gmail.com', 'f30aa7a662c728b7407c54ae6bfd27d1', '2020-05-14 20:08:41', '2020-05-14 20:09:16'),
(21, 'Krish', '9819686640', 'krish@gmail.com', '86e19cd486cf5baa976784b3b704802c', '2020-05-20 09:08:17', NULL);

--
-- Triggers `tblusers`
--
DELIMITER $$
CREATE TRIGGER `insert` AFTER INSERT ON `tblusers` FOR EACH ROW insert INTO logs (Name,action,cdate) values (NEW.FullName,'Inserted',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update` AFTER UPDATE ON `tblusers` FOR EACH ROW insert INTO logs (Name,action,cdate) values (NEW.FullName,'Updated',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `TravelId` int(11) NOT NULL,
  `Mode` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`TravelId`, `Mode`) VALUES
(1, 'Railways and Bus'),
(2, 'Railways and Cab'),
(3, 'Airways and Cab');

-- --------------------------------------------------------

--
-- Stand-in structure for view `users`
-- (See below for the actual view)
--
CREATE TABLE `users` (
`id` int(11)
,`FullName` varchar(100)
,`MobileNumber` char(10)
,`EmailId` varchar(70)
,`Password` varchar(100)
,`RegDate` timestamp
,`UpdationDate` timestamp
);

-- --------------------------------------------------------

--
-- Structure for view `users`
--
DROP TABLE IF EXISTS `users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `users`  AS  select `tblusers`.`id` AS `id`,`tblusers`.`FullName` AS `FullName`,`tblusers`.`MobileNumber` AS `MobileNumber`,`tblusers`.`EmailId` AS `EmailId`,`tblusers`.`Password` AS `Password`,`tblusers`.`RegDate` AS `RegDate`,`tblusers`.`UpdationDate` AS `UpdationDate` from `tblusers` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
