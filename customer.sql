-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 20, 2023 lúc 03:54 AM
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
-- Cơ sở dữ liệu: `watchproduct`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `CustomerId` int(5) NOT NULL,
  `CustomerName` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `PhoneNumber` int(10) DEFAULT NULL,
  `ProductId` varchar(20) DEFAULT NULL,
  `Quantity` int(10) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Comment` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`CustomerId`, `CustomerName`, `Gender`, `Address`, `PhoneNumber`, `ProductId`, `Quantity`, `Price`, `Comment`) VALUES
(1, 'Ho Viet Duc', 'Male', 'Thanh Hoa', 877099199, 'OPA28019DLK-T', 1, 5.41, 'Stocking'),
(2, 'Nguyen Thi Thao', 'Female', 'Bac Ninh', 94706446, 'OPA28025DLSK-T', 3, 6, 'Stocking'),
(3, 'Bui Dai Phuc', 'Male', 'Nghe An', 898868865, 'FAC00009N0', 2, 9, 'Stocking'),
(4, 'Nguyen Hoang Ha', 'Male', 'Ha Noi', 708335500, 'SG1071.1202TE', 1, 3, 'Sold Out'),
(5, 'Pham Tan Dung', 'Male', 'Hai Phong', 786665559, 'RA-AK0306S10B', 4, 16, 'Stocking');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
