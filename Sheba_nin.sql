-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 28, 2019 at 09:21 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Sheba_nin`
--

-- --------------------------------------------------------

--
-- Table structure for table `accepted_service_info`
--

CREATE TABLE `accepted_service_info` (
  `service_id` int(200) NOT NULL,
  `service_location` varchar(200) NOT NULL,
  `service_type` varchar(200) NOT NULL,
  `service_description` varchar(500) NOT NULL,
  `mechanic_id` int(200) NOT NULL,
  `client_id` int(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accepted_service_info`
--

INSERT INTO `accepted_service_info` (`service_id`, `service_location`, `service_type`, `service_description`, `mechanic_id`, `client_id`, `status`) VALUES
(1, 'a', 's', 'g', 10, 11, 'done'),
(2, 'Dhaka', 'IPS', 'Location:                  Problems:  Charge thake na', 10, 11, 'done'),
(3, 'Dhaka', 'IPS', 'Location:                  Problems:  Charge thake na', 10, 11, 'done'),
(4, 'Dhaka', 'AC', 'Location:                  Problems:  ', 10, 11, 'done'),
(5, 'Dhaka', 'AC', 'Location:                  Problems:  ', 10, 11, 'done'),
(6, 'Dhaka', 'AC', 'Location:                  Problems:  ', 10, 11, 'done'),
(7, 'Dhaka', 'IPS', 'Location:                  Problems:  Charge thake na', 10, 11, 'not done'),
(8, 'Dhaka', 'IPS', 'Location:                  Problems:  Charge thake na', 10, 11, 'done'),
(9, 'Dhaka', 'AC', 'Location:                  Problems:  ', 10, 11, 'done'),
(10, 'Dhaka', 'AC', 'Location:                  Problems:  ', 10, 11, 'done'),
(11, 'Dhaka', 'IPS', 'Location:                  Problems:  Charge thake na', 10, 11, 'done'),
(12, 'Mymansing', 'Computer', 'Location:                  Problems:  ', 7, 8, 'not done'),
(13, 'Dhaka', 'IPS', 'Location:    jalkuri              Problems:  battery gorom hoye jay. charge dile', 7, 11, 'not done'),
(14, 'Dhaka', 'IPS', 'Location:                  Problems:  ', 10, 11, 'done'),
(15, 'Chittagong', 'IPS', 'Location:                  Problems:  ', 10, 11, 'done'),
(16, 'Dhaka', 'IPS', 'Location:  dhanmondi,32                Problems:  charge thake na.', 10, 11, 'not done'),
(17, 'Rangpur', 'Refrigerator', 'Location:     kaliyakol, mosjider shamne.             Problems:  compressor is not working', 10, 11, 'done');

-- --------------------------------------------------------

--
-- Table structure for table `mechanic_service_info`
--

CREATE TABLE `mechanic_service_info` (
  `id` int(200) NOT NULL,
  `mechanic_id` int(200) NOT NULL,
  `service_location` varchar(200) NOT NULL,
  `service_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mechanic_service_info`
--

INSERT INTO `mechanic_service_info` (`id`, `mechanic_id`, `service_location`, `service_type`) VALUES
(1, 7, 'Dhaka', 'Refrigerator'),
(2, 7, 'Rangpur', 'AC'),
(3, 7, 'Mymansing', 'Computer'),
(4, 9, 'Rajshahi', 'Television'),
(5, 9, 'Rajshahi', 'Refrigerator'),
(7, 10, 'Dhaka', 'IPS'),
(9, 10, 'Khulna', 'IPS'),
(10, 10, 'Rangpur', 'IPS'),
(12, 10, 'Rajshahi', 'IPS'),
(13, 10, 'Barishal', 'IPS'),
(16, 10, 'Mymansing', 'Television'),
(17, 10, 'Rangpur', 'Refrigerator');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `recipt_id` int(200) NOT NULL,
  `pay_amount` int(200) NOT NULL,
  `service_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recipts`
--

CREATE TABLE `recipts` (
  `recipt_id` int(200) NOT NULL,
  `transection_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `request_id` int(200) NOT NULL,
  `client_id` int(200) NOT NULL,
  `mechanic_id` int(200) NOT NULL,
  `service_location` varchar(200) NOT NULL,
  `service_type` varchar(200) NOT NULL,
  `service_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`request_id`, `client_id`, `mechanic_id`, `service_location`, `service_type`, `service_description`) VALUES
(2, 8, 9, 'Rajshahi', 'Television', 'Location:      shirajganj,ullapara,rail station            Problems:  display is not working'),
(14, 8, 7, 'Dhaka', 'Refrigerator', 'Location:                  Problems:  kjhkjhkjhk hkjhkjhk jhk jh'),
(16, 11, 7, 'Dhaka', 'IPS', 'Location:                  Problems:  '),
(19, 11, 10, 'Rangpur', 'IPS', 'Location:                  Problems:  '),
(20, 11, 10, 'Rajshahi', 'IPS', 'Location:       sjflskjf os o jfosij osj            Problems:  l flskjf lskj flkjsf lkjsfj slkfjsl');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone_number` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `address`, `phone_number`, `password`, `role`, `status`) VALUES
(1, 'Alamin', 'Dhanmondi, Dhaka.', '01721303127', 'fbade9e36a3f36d3d676c1b808451dd7', 'admin', 'valid'),
(5, 'a', 'a', '0172130312', '0cc175b9c0f1b6a831c399e269772661', 'client', 'valid'),
(6, 'z', 'z', 'z', 'fbade9e36a3f36d3d676c1b808451dd7', 'client', 'valid'),
(7, 'hasan', 'dhaka', '12345', '827ccb0eea8a706c4c34a16891f84e7b', 'mechanic', 'valid'),
(8, 'shagor', 'dhanmondi', '1', 'c4ca4238a0b923820dcc509a6f75849b', 'client', 'valid'),
(9, 'shakif', 'pabna', '123456', 'e10adc3949ba59abbe56e057f20f883e', 'mechanic', 'valid'),
(10, 'Abdus Salam', 'Lalkhan, Fatullah, Narayanganj, Dhaka.', '01710825346', 'de6838252f95d3b9e803b28df33b4baa', 'mechanic', 'valid'),
(11, 'Afasy', 'lalKhan, Fatullah stadium, Narayanganj, Dhaka.', '01721303132', 'd7cf8c469c3f98ba634698b68002c20b', 'client', 'valid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepted_service_info`
--
ALTER TABLE `accepted_service_info`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `mechanic_service_info`
--
ALTER TABLE `mechanic_service_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mechanic_id` (`mechanic_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `recipt_id` (`recipt_id`);

--
-- Indexes for table `recipts`
--
ALTER TABLE `recipts`
  ADD PRIMARY KEY (`recipt_id`),
  ADD UNIQUE KEY `transection_id` (`transection_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `mechanic_id` (`mechanic_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`phone_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accepted_service_info`
--
ALTER TABLE `accepted_service_info`
  MODIFY `service_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mechanic_service_info`
--
ALTER TABLE `mechanic_service_info`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `recipts`
--
ALTER TABLE `recipts`
  MODIFY `recipt_id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `request_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mechanic_service_info`
--
ALTER TABLE `mechanic_service_info`
  ADD CONSTRAINT `mechanic_service_info_ibfk_1` FOREIGN KEY (`mechanic_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `accepted_service_info` (`service_id`),
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`recipt_id`) REFERENCES `recipts` (`recipt_id`);

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `user` (`id`);
