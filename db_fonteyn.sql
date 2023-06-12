-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 12, 2023 at 11:07 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fonteyn`
--

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` int(11) NOT NULL,
  `server` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `cleared` tinyint(1) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`id`, `server`, `message`, `cleared`, `date`) VALUES
(2, 1, 'Test alert 1 for First Server.', 1, '2023-06-07 00:08:24'),
(3, 1, 'Test alert 2 for First Server.', 1, '2023-06-07 00:08:24'),
(4, 2, 'Test alert 1 for Second Server.', 1, '2023-06-07 00:08:24'),
(5, 2, 'Test alert 2 for Second Server.', 1, '2023-06-07 00:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `speed` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `server`, `status`, `speed`, `date`) VALUES
(1, 1, 1, 135, '2023-06-06 22:35:02'),
(2, 1, 1, 135, '2023-06-06 22:49:49'),
(3, 1, 1, 55, '2023-06-07 00:10:57'),
(4, 1, 1, 27, '2023-06-07 00:11:02'),
(5, 1, 1, 16, '2023-06-07 00:11:03'),
(6, 1, 1, 65, '2023-06-07 00:11:05'),
(7, 1, 1, 58, '2023-06-07 00:11:07'),
(8, 1, 0, 28, '2023-06-07 00:11:09'),
(9, 2, 1, 41, '2023-06-07 00:15:59'),
(10, 2, 0, 69, '2023-06-07 00:16:03'),
(11, 2, 0, 100, '2023-06-07 00:16:05'),
(12, 2, 0, 69, '2023-06-07 00:16:08'),
(13, 2, 1, 9, '2023-06-07 00:16:11'),
(14, 1, 1, 59, '2023-06-07 00:22:52'),
(15, 3, 1, 34, '2023-06-07 12:13:35'),
(16, 3, 1, 33, '2023-06-07 12:13:44'),
(17, 3, 0, 31, '2023-06-07 12:14:25'),
(18, 6, 1, 1, '2023-06-07 12:40:01'),
(19, 6, 0, 51, '2023-06-07 12:40:28'),
(20, 1, 1, 90, '2023-06-07 13:17:15'),
(21, 7, 0, 88, '2023-06-07 13:54:53'),
(22, 10, 0, 40, '2023-06-11 13:33:55'),
(23, 10, 0, 40, '2023-06-11 13:34:01'),
(24, 10, 1, 54, '2023-06-11 13:51:03'),
(25, 10, 0, 35, '2023-06-11 13:51:15'),
(26, 10, 0, 28, '2023-06-11 13:51:33'),
(27, 10, 1, 22, '2023-06-11 14:48:28'),
(28, 2, 1, 22, '2023-06-11 17:19:33'),
(29, 2, 1, 22, '2023-06-11 17:24:55'),
(30, 2, 1, 22, '2023-06-11 17:24:55'),
(31, 2, 1, 22, '2023-06-11 17:24:56'),
(32, 2, 1, 22, '2023-06-11 17:24:56'),
(33, 6, 0, 20, '2023-06-12 07:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servers`
--

INSERT INTO `servers` (`id`, `name`, `ip`, `date`) VALUES
(1, 'First Server', '111.111.11.111', '2023-06-06 22:27:46'),
(2, 'Second Server', '222.222.22.222', '2023-06-06 23:17:03'),
(6, 'Third Server', '333.333.333.333', '2023-06-07 12:38:18'),
(10, 'jfksajfk', '1.234.21', '2023-06-10 10:38:13'),
(11, 'Webserver', '112.1.2.3', '2023-06-11 13:19:33');

-- --------------------------------------------------------

--
-- Table structure for table `tb_alerts`
--

CREATE TABLE `tb_alerts` (
  `id` int(11) NOT NULL,
  `alert` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_alerts`
--

INSERT INTO `tb_alerts` (`id`, `alert`, `status`, `timestamp`) VALUES
(5, 'Someone tried to acces our api with the wrong credentials api key: c7mac adress : 11:00:11:00', '2', '2023-06-05 13:00:25'),
(6, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-10 10:28:35'),
(7, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-10 10:31:26'),
(8, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 18:44:30'),
(9, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 18:46:38'),
(10, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 18:57:27'),
(11, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 19:00:37'),
(12, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 19:04:47'),
(13, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 19:07:24'),
(14, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 19:09:36'),
(15, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 19:12:41'),
(16, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 19:21:54'),
(17, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 19:23:30'),
(18, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 19:24:49'),
(19, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 19:25:39'),
(20, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 19:27:19'),
(21, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 19:36:02'),
(22, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 19:37:30'),
(23, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 19:37:52'),
(24, 'Threshold_exceeded_Triggering_function_CPU', '0', '2023-06-11 19:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `tb_apikey`
--

CREATE TABLE `tb_apikey` (
  `id` int(11) NOT NULL,
  `apikey` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_apikey`
--

INSERT INTO `tb_apikey` (`id`, `apikey`, `timestamp`) VALUES
(1, '853d563a-e363-48d5-a85b-7a47b53fdcd2', '2023-06-05 11:59:05'),
(2, 'c7c37a0b-5414-46bc-b03c-02eecbffc632', '2023-06-05 11:59:33'),
(3, '8114f38f-5076-438e-a55d-94d390383523', '2023-06-05 11:59:59'),
(4, '2782ebe3-9ec7-48d9-abfe-0aca0d8692b0', '2023-06-05 12:00:04'),
(5, '0f5b3f2a-7728-4950-bf5e-78a0d3a67f75', '2023-06-05 12:02:50'),
(6, 'cf305148-4888-4e65-8515-26bdef4810fd', '2023-06-05 12:03:25'),
(7, '23d6359f-eca2-49e9-82c2-19dca5616a2f', '2023-06-05 12:03:38'),
(8, '6b85bf9d-2ccd-4a50-9cbb-716eecce9926', '2023-06-05 12:03:50'),
(9, '9b38cfef-8ab6-469d-8ae4-68ecee1809e0', '2023-06-05 12:04:58'),
(10, '6432277e-8c0c-499d-82ed-3c83a9a1d1e0', '2023-06-05 12:07:15'),
(11, '97b1de04-e8f6-4acf-a2f6-aa31ad7353e4', '2023-06-05 12:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `tb_macadress`
--

CREATE TABLE `tb_macadress` (
  `id` int(11) NOT NULL,
  `macadress` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_macadress`
--

INSERT INTO `tb_macadress` (`id`, `macadress`, `timestamp`) VALUES
(1, '11:00:11:00', '2023-06-05 12:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `tb_reservationdata`
--

CREATE TABLE `tb_reservationdata` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `datetime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_reservationdata`
--

INSERT INTO `tb_reservationdata` (`id`, `firstname`, `lastname`, `phonenumber`, `email`, `datetime`) VALUES
(4, 'Thomas', 'de jong', '0646768842', 'Bas@kpnplanet.nl', '2018-06-12 19:30:00'),
(5, 'Mathijs', 'de broek', '0646768842', 'Mathijs@employee.com', '2018-06-08 19:30:00'),
(6, 'Klaas', 'Tom', '0646768842', 'bas@gmail.com', '2018-06-12 19:30:00'),
(7, 'bas', 'klaas', '0646768842', 'ruimtemeneer@gmail.com', '2018-06-12 19:30:00'),
(8, 'Bas', 'Klaas', '0646768842', 'ruimtemeneer@gmail.com', '2018-06-08 19:30:00'),
(9, 'Bas', 'Klaas', '0646768842', 'ruimtemeneer@gmail.com', '2018-06-08 19:30:00'),
(10, 'Klaas', 'bas', '0646768842', 'ruimtemeneer@gmail.com', '2018-06-12 13:30:00'),
(11, 'Klaas', 'bas', '0646768842', 'ruimtemeneer@gmail.com', '2018-06-12 13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_specs`
--

CREATE TABLE `tb_specs` (
  `id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `cpu` varchar(255) NOT NULL,
  `memory` varchar(255) NOT NULL,
  `disk` varchar(255) NOT NULL,
  `server_ip` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_specs`
--

INSERT INTO `tb_specs` (`id`, `timestamp`, `cpu`, `memory`, `disk`, `server_ip`) VALUES
(9, '2023-05-30 15:37:50', '7.5', '81.6', '84.8', 0),
(10, '2023-05-30 15:38:02', '9.0', '81.6', '84.0', 0),
(11, '2023-05-30 15:38:08', '9.1', '81.6', '83.3', 0),
(12, '2023-05-30 15:38:14', '14.8', '81.6', '84.8', 0),
(13, '2023-05-30 15:38:20', '9.0', '81.6', '83.9', 0),
(14, '2023-05-30 15:38:26', '4.5', '81.6', '83.7', 0),
(15, '2023-05-30 15:40:02', '21.4', '81.6', '84.5', 0),
(16, '2023-05-31 08:27:09', '9.5', '80.7', '84.5', 0),
(17, '2023-06-11 21:06:47', '89.1', '67.2', '89.2', 2),
(18, '2023-06-11 21:38:02', '17.4', '84.6', '91.3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_uptimedata`
--

CREATE TABLE `tb_uptimedata` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `speed` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `uuid` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`uuid`, `username`, `password`, `status`, `timestamp`) VALUES
('0c5699f8-467b-4dcd-9649-c35f01a5279d', 'admin', '$2y$10$4HL6ZoB9cQp5zeJXCAHUo.fOg7Xhvb2F9LMajQdu.Mj26gl/vudqm', 1, '2023-03-28 12:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `guests` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `date`, `time`, `guests`) VALUES
(1, '2023-03-01', '20:29:51', 2),
(2, '2023-03-02', '20:14:14', 3),
(3, '2023-03-02', '20:14:14', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_alerts`
--
ALTER TABLE `tb_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_apikey`
--
ALTER TABLE `tb_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_macadress`
--
ALTER TABLE `tb_macadress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_reservationdata`
--
ALTER TABLE `tb_reservationdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_specs`
--
ALTER TABLE `tb_specs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_uptimedata`
--
ALTER TABLE `tb_uptimedata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_alerts`
--
ALTER TABLE `tb_alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_apikey`
--
ALTER TABLE `tb_apikey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_macadress`
--
ALTER TABLE `tb_macadress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_reservationdata`
--
ALTER TABLE `tb_reservationdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_specs`
--
ALTER TABLE `tb_specs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_uptimedata`
--
ALTER TABLE `tb_uptimedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
