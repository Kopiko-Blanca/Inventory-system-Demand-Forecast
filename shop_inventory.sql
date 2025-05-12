-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 12, 2025 at 04:15 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `ai_forecasts`
--

CREATE TABLE `ai_forecasts` (
  `forecast_id` int NOT NULL,
  `itemNumber` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `forecast_date` date NOT NULL,
  `predicted_demand` int NOT NULL,
  `confidence` float NOT NULL,
  `recommended_stock` int NOT NULL,
  `forecast_reason` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ai_forecasts`
--

INSERT INTO `ai_forecasts` (`forecast_id`, `itemNumber`, `forecast_date`, `predicted_demand`, `confidence`, `recommended_stock`, `forecast_reason`, `created_at`) VALUES
(28, '1', '2025-06-09', 158, 0.83, 190, 'Historical trends indicate increased demand', '2025-05-08 16:08:25'),
(29, '1', '2025-07-09', 160, 0.55, 192, 'Market analysis predicts stable demand', '2025-05-08 16:08:25'),
(30, '1', '2025-08-09', 160, 0.74, 192, 'Historical trends indicate increased demand', '2025-05-08 16:08:25'),
(31, '3', '2025-06-09', 5, 0.68, 6, 'Market analysis predicts stable demand', '2025-05-08 16:08:25'),
(32, '3', '2025-07-09', 5, 0.68, 6, 'Seasonal patterns suggest typical demand', '2025-05-08 16:08:25'),
(33, '3', '2025-08-09', 5, 0.5, 6, 'Historical trends indicate increased demand', '2025-05-08 16:08:25'),
(34, '4', '2025-06-09', 2, 0.82, 2, 'Market analysis predicts stable demand', '2025-05-08 16:08:25'),
(35, '4', '2025-07-09', 2, 0.69, 2, 'Seasonal patterns suggest typical demand', '2025-05-08 16:08:25'),
(36, '4', '2025-08-09', 2, 0.85, 2, 'Historical trends indicate increased demand', '2025-05-08 16:08:25'),
(37, '5', '2025-06-09', 118, 0.8, 142, 'Market analysis predicts stable demand', '2025-05-08 16:08:25'),
(38, '5', '2025-07-09', 119, 0.68, 143, 'Historical trends indicate increased demand', '2025-05-08 16:08:25'),
(39, '5', '2025-08-09', 123, 0.51, 148, 'Historical trends indicate increased demand', '2025-05-08 16:08:25'),
(40, '6', '2025-06-09', 2, 0.81, 2, 'Seasonal patterns suggest typical demand', '2025-05-08 16:08:25'),
(41, '6', '2025-07-09', 2, 0.71, 2, 'Seasonal patterns suggest typical demand', '2025-05-08 16:08:25'),
(42, '6', '2025-08-09', 2, 0.59, 2, 'Historical trends indicate increased demand', '2025-05-08 16:08:25'),
(43, '7', '2025-06-09', 1, 0.61, 1, 'Historical trends indicate increased demand', '2025-05-08 16:08:25'),
(44, '7', '2025-07-09', 1, 0.56, 1, 'Market analysis predicts stable demand', '2025-05-08 16:08:25'),
(45, '7', '2025-08-09', 1, 0.63, 1, 'Historical trends indicate increased demand', '2025-05-08 16:08:25'),
(46, '8', '2025-06-09', 1, 0.79, 1, 'Market analysis predicts stable demand', '2025-05-08 16:08:25'),
(47, '8', '2025-07-09', 1, 0.8, 1, 'Seasonal patterns suggest typical demand', '2025-05-08 16:08:25'),
(48, '8', '2025-08-09', 1, 0.52, 1, 'Seasonal patterns suggest typical demand', '2025-05-08 16:08:25'),
(49, '10', '2025-06-09', 49, 0.83, 59, 'Market analysis predicts stable demand', '2025-05-08 16:08:25'),
(50, '10', '2025-07-09', 50, 0.72, 60, 'Seasonal patterns suggest typical demand', '2025-05-08 16:08:25'),
(51, '10', '2025-08-09', 48, 0.52, 58, 'Historical trends indicate increased demand', '2025-05-08 16:08:25'),
(52, '14', '2025-06-09', 1, 0.53, 1, 'Historical trends indicate increased demand', '2025-05-08 16:08:25'),
(53, '14', '2025-07-09', 1, 0.78, 1, 'Seasonal patterns suggest typical demand', '2025-05-08 16:08:25'),
(54, '14', '2025-08-09', 1, 0.72, 1, 'Market analysis predicts stable demand', '2025-05-08 16:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` int NOT NULL,
  `phone2` int DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `city`, `district`, `status`, `createdOn`) VALUES
(4, 'Bill Gates', 'bill@microsoft.com', 993737, 772484884, '45, Palo Alto House, Marine Drive', 'South Carolina', 'Microsoft', 'Kurunegala', 'Active', '2018-04-30 15:14:02'),
(14, 'Steve Jobs', 'sjobs@apple.com', 333829832, 0, '1st Floor, Apple House, ', 'Las Vegas Street', 'Las Vegas', 'Monaragala', 'Disabled', '2018-05-01 12:03:10'),
(18, 'Asitha Silva', 'asitha@gmail.com', 777987654, 0, 'No. 3, Radcliff Avenue, School Lane', 'Kalutara South', 'Kalutara', 'Kalutara', 'Active', '2018-05-02 09:52:28'),
(24, 'Sunil Perera', 'Sunil@gypsies.sound', 338393932, 413837293, '67/7, Perera Villa, Jayasekara Avenue', 'Mount Lavinia', 'Ratmalana', 'Colombo', 'Active', '2018-05-02 10:48:37'),
(25, 'Theresa May', 'may34@uk.gov.com', 329393903, 777833737, '12, Downing Street', 'London', 'London', 'Matale', 'Active', '2018-05-03 02:28:07'),
(26, 'Sachin Tendulkar', 'sachintendulkar@icc.com', 444958303, 84792838, '789-4, Apartment 3, ', 'Cric Complex', 'New Delhi', 'Puttalam', 'Active', '2018-05-03 02:28:38'),
(38, 'Nuwan Perara', 'nuwan@yahoo.com', 839378202, 0, 'Nuwan Villa, Lower Street,', 'North Mulativu', 'Mullaitivu', 'Mullaitivu', 'Active', '2018-05-05 11:17:49'),
(39, 'Amal Silverton', 'amals452@yahoo.com', 232345676, 0, 'Amal\'s House, Amal\'s Street,', 'Amal Road', 'Ambalangoda', 'Galle', 'Active', '2018-05-05 13:27:06'),
(40, 'Andrew Symonds', 'symonds@cricket.au.com', 123, 0, '23, Oak View Avenue', 'Western Australia', 'Melbourne', 'Colombo', 'Disabled', '2018-05-13 01:20:23'),
(41, 'Mark Taylor', '', 111, 0, '111', '', '', 'Colombo', 'Active', '2018-05-13 01:24:54'),
(42, 'Nelson Mandela', 'sjobs@apple.com', 333829832, 0, '1st Floor, Apple House, ', 'Las Vegas Street', 'Las Vegas', 'Kalutara', 'Disabled', '2018-05-13 02:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `productID` int NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `stock` int NOT NULL DEFAULT '0',
  `unitPrice` float NOT NULL DEFAULT '0',
  `imageURL` varchar(255) NOT NULL DEFAULT 'imageNotAvailable.jpg',
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `description` text NOT NULL,
  `qr_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`productID`, `itemNumber`, `itemName`, `discount`, `stock`, `unitPrice`, `imageURL`, `status`, `description`, `qr_code`) VALUES
(34, '1', 'First Bag', 0, 1, 1500, '1746649306_681bc0daa3882.png', 'Active', '', 'assets/qrcodes/34.png'),
(35, '2', 'School Bag', 0, 1, 500, '1746649334_681bc0f6cdc5b.png', 'Active', '', 'assets/qrcodes/35.png'),
(36, '3', 'Office Bag', 0, 5, 1300, '1746752026_681d521add753.jpg', 'Active', '', 'assets/qrcodes/36.png'),
(37, '4', 'Leather Bag', 2, 6, 3409, '1746882451_681f4f935f15c.jpg', 'Active', '', 'assets/qrcodes/37.png'),
(38, '5', 'Travel Bag', 2, 1, 1200, '1746882470_681f4fa62ac93.jpg', 'Active', '', 'assets/qrcodes/38.png'),
(39, '6', 'Gym Bag', 0, 0, 3000, '1746882483_681f4fb3767e6.jpg', 'Active', '', 'assets/qrcodes/39.png'),
(40, '7', 'Handbag', 1.5, 10, 1650, '1746882492_681f4fbc2c183.jpg', 'Active', '', 'assets/qrcodes/40.png'),
(41, '8', 'Laptop Bag', 2.1, 9, 2300, '1746882508_681f4fcc4e9c2.jpg', 'Active', '', 'assets/qrcodes/41.png'),
(43, '10', 'Sports Bag', 1, 4, 1000, '1746882520_681f4fd8719dd.jpg', 'Active', '', 'assets/qrcodes/43.png'),
(45, '11', 'First Aid Bag', 1.5, 6, 1200, '1746882530_681f4fe23c760.jpg', 'Active', '', 'assets/qrcodes/45.png'),
(49, '14', 'Hiking Bag', 1.5, 6, 1200, '1746882541_681f4fed14857.jpg', 'Active', 'This is a hiking bag. Ideal for long distance hikes. Light-weight and water proof.', 'assets/qrcodes/49.png');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseID` int NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `purchaseDate` date NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `unitPrice` float NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `vendorName` varchar(255) NOT NULL DEFAULT 'Test Vendor',
  `vendorID` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseID`, `itemNumber`, `purchaseDate`, `itemName`, `unitPrice`, `quantity`, `vendorName`, `vendorID`) VALUES
(39, '1', '2018-05-24', 'First Bag', 1600, 10, 'Johnson and Johnsons Co.', 3),
(40, '2', '2018-05-18', 'First Bag', 2341, 2, 'Louise Vitton Bag', 4),
(41, '4', '2018-05-07', 'Leather Bag', 1234, 3, 'Johnson and Johnsons Co.', 3),
(42, '1', '2018-05-24', 'First Bag', 345, 12, 'Louise Vitton Bag', 4),
(43, '5', '2018-05-03', 'Travel Bag', 35, 3, 'Johnson and Johnsons Co.', 3),
(44, '5', '2018-05-16', 'Travel Bag', 3000, 2, 'ABC Company', 1),
(45, '5', '2018-05-21', 'Travel Bag', 3000, 10, 'Sample Vendor 222', 2),
(46, '4', '2018-05-19', 'Leather Bag', 1200, 4, 'Johnson and Johnsons Co.', 3),
(47, '2', '2018-05-10', 'School Bag', 2, 1, 'Sample Vendor 222', 2),
(48, '1', '2018-05-12', 'Handbag', 2, 9, 'ABC Company', 1),
(50, '14', '2018-05-15', 'Hiking Bag', 1000, 5, 'Louise Vitton Bag', 4),
(51, '11', '2018-05-11', 'First Aid Bag', 1121, 1, 'ABC Company', 1),
(52, '1', '2018-05-21', 'First Bag', 1235, 2, 'Sample Vendor 222', 2),
(53, '1', '2025-05-06', '', 1, 1, 'Test Vendor', 1),
(54, '1', '2025-05-06', '', 1500, 2, 'Test Vendor', 3),
(55, '1', '2025-05-06', '', 1500, 1, 'Test Vendor', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `saleID` int NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `customerID` int NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `saleDate` date NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `unitPrice` float(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`saleID`, `itemNumber`, `customerID`, `customerName`, `itemName`, `saleDate`, `discount`, `quantity`, `unitPrice`) VALUES
(1, '3', 4, 'Bill Gates', 'Office Bag', '2025-05-04', 5, 2, 1300),
(2, '1', 39, 'Amal Silverton', 'First Bag', '2025-01-02', 0, 111, 1500),
(3, '4', 18, 'Asitha Silva', 'Leather Bag', '2025-05-01', 2, 1, 3409),
(4, '5', 25, 'Theresa May', 'Travel Bag', '2025-05-24', 2, 1, 1200),
(5, '6', 24, 'Sunil Perera', 'Gym Bag', '2025-05-24', 0, 1, 3000),
(6, '7', 14, 'Steve Jobs', 'Handbag', '2025-05-24', 1.5, 1, 1650),
(7, '3', 4, 'Bill Gates', 'Office Bag', '2025-05-24', 0, 3, 1300),
(8, '8', 4, 'Bill Gates', 'Laptop Bag', '2025-05-14', 2.1, 1, 2300),
(9, '6', 26, 'Sachin Tendulkar', 'Gym Bag', '2025-05-14', 0, 1, 3000),
(10, '5', 25, 'Theresa May', 'Travel Bag', '2025-05-14', 2, 9, 1200),
(11, '10', 26, 'Sachin Tendulkar', 'Sports Bag', '2025-04-05', 1, 7, 1000),
(12, '1', 14, 'Steve Jobs', 'First Bag', '2025-05-14', 0, 2, 1500),
(13, '3', 38, 'Nuwan Perara', 'Office Bag', '2025-05-24', 0, 0, 1300),
(14, '10', 39, 'Amal Silverton', 'Sports Bag', '2025-05-17', 1, 1, 1000),
(15, '14', 38, 'Nuwan Perara', 'Hiking Bag', '2025-05-24', 1.5, 1, 1200),
(16, '1', 14, 'Steve Jobs', 'First Bag', '2025-05-24', 10, 1, 1500),
(17, '4', 14, 'Steve Jobs', 'Leather Bag', '2025-05-18', 2, 1, 3409),
(18, '1', 14, 'Steve Jobs', 'First Bag', '2025-05-24', 0, 2, 1500),
(19, '1', 14, 'Steve Jobs', 'First Bag', '2025-05-05', 0, 0, 1500),
(20, '10', 41, 'Mark Taylor', 'Sports Bag', '2025-05-06', 0, 2, 1000),
(21, '10', 4, 'Bill Gates', 'Sports Bag', '2025-05-06', 0, 2, 1000),
(22, '10', 4, 'Bill Gates', 'Sports Bag', '2025-05-06', 0, 2, 1000),
(23, '300', 26, 'Sachin Tendulkar', '', '2025-05-06', 0, 1, 2000),
(24, '10', 41, 'Mark Taylor', 'Sports Bag', '2025-05-06', 1, 1, 1000),
(25, '10', 25, 'Theresa May', 'Sports Bag', '2025-05-06', 22, 1, 1000),
(26, '1', 39, 'Amal Silverton', 'First Bag', '2025-05-06', 22, 1, 1500),
(27, '1', 4, 'Bill Gates', 'First Bag', '2025-05-06', 0, 28, 1500),
(28, '10', 4, 'Bill Gates', 'Sports Bag', '2025-05-07', 0, 15, 1000),
(29, '10', 18, 'Asitha Silva', 'Sports Bag', '2025-05-07', 0, 65, 1000),
(30, '5', 25, 'Theresa May', 'Travel Bag', '2025-05-08', 0, 16, 1200),
(31, '5', 18, 'Asitha Silva', 'Travel Bag', '2025-05-08', 0, 98, 1200),
(32, '123', 4, 'Bill Gates', 'cement', '2025-05-05', 0, 99, 12),
(33, '123', 4, 'Bill Gates', 'cement', '2025-05-01', 0, 2, 12),
(34, '123', 4, 'Bill Gates', 'cement', '2025-04-05', 0, 5, 12),
(35, '11', 4, 'Bill Gates', 'First Aid Bag', '2025-05-09', 0, 5, 1200),
(36, '123', 39, 'Amal Silverton', 'cement', '2025-05-10', 0, 3, 12),
(37, '2', 4, 'Bill Gates', 'School Bag', '2025-05-10', 0, 3, 500),
(38, '2', 18, 'Asitha Silva', 'School Bag', '2025-05-08', 0, 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `reset_token` varchar(64) DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `fullName`, `username`, `password`, `status`, `reset_token`, `reset_expires`) VALUES
(5, 'Guest', 'guest', '81dc9bdb52d04dc20036dbd8313ed055', 'Active', NULL, NULL),
(6, 'a', 'a', '0cc175b9c0f1b6a831c399e269772661', 'Active', NULL, NULL),
(7, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendorID` int NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` int NOT NULL,
  `phone2` int DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `city`, `district`, `status`, `createdOn`) VALUES
(1, 'ABC Company', '', 2343567, 0, '80, Ground Floor, ABC Shopping Complex', '46th Avenue', 'Kolpetty', 'Colombo', 'Active', '2018-05-05 05:48:44'),
(2, 'Sample Vendor 222', 'sample@volvo.com', 99828282, 283730183, '123, A Road, B avenue', 'Pitipana', 'Nugegoda', 'Mannar', 'Active', '2018-05-05 06:12:02'),
(3, 'Johnson and Johnsons Co.', '', 32323, 0, '34, Malwatta Road, Kottawa', 'Pannipitiya', 'Maharagama', 'Colombo', 'Disabled', '2018-05-05 06:28:33'),
(4, 'Louise Vitton Bag', 'vitton@vitton.usa.com', 323234938, 0, '45, Palmer Valley, 5th Crossing', 'Delaware', 'Palo Alto', 'Batticaloa', 'Active', '2018-05-05 06:29:41'),
(6, 'Test Vendor', 'test@vendor.com', 43434, 47569937, 'Test address', 'Test address 2', 'Test City', 'Trincomalee', 'Active', '2018-05-05 06:53:14'),
(7, 'Bags Co. Exporters Ltd.', '', 1111, 0, 'Sea Road, Bambalapitiya', '', '', 'Colombo', 'Active', '2018-05-15 10:36:54'),
(8, 'New Bags Exporters', '', 191938930, 0, '123, A Road, B avenue, ', 'Gilford Crescent', 'Colpetty', 'Colombo', 'Active', '2018-05-16 12:36:53'),
(9, 'A', 'a@gmail.com', 999995, 98866767, 'manila', 'Metro Manila', 'Manila City', 'Ampara', 'Disabled', '2020-07-30 11:40:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ai_forecasts`
--
ALTER TABLE `ai_forecasts`
  ADD PRIMARY KEY (`forecast_id`),
  ADD KEY `itemNumber` (`itemNumber`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseID`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`saleID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ai_forecasts`
--
ALTER TABLE `ai_forecasts`
  MODIFY `forecast_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `productID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `saleID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
