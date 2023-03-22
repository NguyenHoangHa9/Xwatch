-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 20, 2023 lúc 04:41 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `watch_products`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ProductID` varchar(50) NOT NULL,
  `ProductName` varchar(50) DEFAULT NULL,
  `Brand` varchar(20) DEFAULT NULL,
  `MachineModel` varchar(20) DEFAULT NULL,
  `Size` varchar(10) DEFAULT NULL,
  `ThichNess` varchar(10) DEFAULT NULL,
  `Origin` varchar(20) DEFAULT NULL,
  `Price` decimal(10,6) DEFAULT NULL,
  `Guarantee` varchar(20) DEFAULT NULL,
  `Note` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `Brand`, `MachineModel`, `Size`, `ThichNess`, `Origin`, `Price`, `Guarantee`, `Note`) VALUES
('FAC00009N0', 'Watch ORIENT', 'Orient', 'Automatic', '40.5 mm', '11.8mm', 'Japan', '8.000000', '1year', 'Stocking'),
('NH7524-55A', 'Watch CITIZEN', 'Citizen', 'Automatic', '40mm', '11mm', 'Japan', '8.000000', '1year', 'Stocking'),
('OP130-03MK-GL-T', 'Watch OLYM PIANUS', 'Olym Pianus', 'Japan movement', '38mm', '5mm', 'Japan', '3.000000', '2year', 'Stocking'),
('RA-AK0306S10B', 'Watch ORIENT', 'Orient', 'Automatic', '41.5mm', '13mm', 'Japan', '11.000000', '1year', 'Stocking'),
('SG1071.1202TE', 'Watch SRWATCH', 'Srwatch', 'Quatz', '40mm', '6mm', 'Japan', '2.000000', '1year', 'Stocking'),
('SG60061.1102SM', 'Watch SRWATCH', 'SRWATCH', '	Japan Quartz', '40mm', '8.8 mm', 'Japan', '6.000000', '1year', 'Stocking');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
