-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2019 lúc 10:47 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `projectsem_4`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `fullname` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `role_id` int(11) NOT NULL,
  `credit` double DEFAULT '0',
  `day_term` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `fullname`, `email`, `phone`, `status`, `role_id`, `credit`, `day_term`) VALUES
(2, 'chauhoangflp@gmail.com', '$2a$10$uL5vl8R/nLMsHdHQAN5/J.Yzpu8rSIo91bocgG/WWhq0g0osSSuL2', 'chau', 'chauhoangflp@gmail.com', '0909334187', 1, 1, 5000, 0),
(3, 'LaBee@gmail.com', '$2a$10$uL5vl8R/nLMsHdHQAN5/J.Yzpu8rSIo91bocgG/WWhq0g0osSSuL2', 'chaudao', 'LaBee@gmail.com', '0909334187', 1, 2, 0, 0),
(4, 'User@gmail.com', '$2a$10$uL5vl8R/nLMsHdHQAN5/J.Yzpu8rSIo91bocgG/WWhq0g0osSSuL2', 'user', 'User@gmail.com', '1230983', 0, 3, 4000, 0),
(5, 'test@123.com', '$2a$10$uL5vl8R/nLMsHdHQAN5/J.Yzpu8rSIo91bocgG/WWhq0g0osSSuL2', 'chau', 'test@123.com', '0909', 1, 3, 0, 0),
(6, 'chaudao@gmail.com', '123', 'chaudao', 'chaudao@gmail.com', '123123', 1, 3, 0, 0),
(7, '', '', '', '', '', 1, 3, 0, 0),
(8, '', '', '', '', '', 1, 3, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `status`) VALUES
(1, 'category 1', 1),
(2, 'category 2', 1),
(3, 'category 3', 0),
(4, 'category 4', 0),
(5, 'category 5', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `credit`
--

CREATE TABLE `credit` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `created` date NOT NULL,
  `amount` double NOT NULL,
  `day_term` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `credit`
--

INSERT INTO `credit` (`id`, `account_id`, `created`, `amount`, `day_term`) VALUES
(1, 4, '2019-10-17', 600, '2019-11-16'),
(2, 4, '2019-10-19', 1000, '2019-10-19'),
(3, 4, '2019-10-19', 1900, '2019-10-19'),
(4, 2, '2019-10-19', 1020, '2019-10-19'),
(5, 5, '2019-10-19', 20, '2019-10-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `credit_details`
--

CREATE TABLE `credit_details` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `credit_id` int(11) NOT NULL,
  `issued_date` date NOT NULL,
  `applied_amount` int(11) NOT NULL,
  `due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `factory`
--

CREATE TABLE `factory` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `location` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `inventory`
--

INSERT INTO `inventory` (`id`, `warehouse_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 2, 408, 20),
(2, 2, 2, 258, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `pucharseorder_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` date NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice`
--

INSERT INTO `invoice` (`id`, `pucharseorder_id`, `status`, `created`, `total`) VALUES
(8, 2, 0, '2019-10-08', 0),
(10, 2, 0, '2019-10-10', 0),
(12, 2, 0, '2019-10-09', 0),
(15, 15, 1, '2019-10-13', 500),
(16, 16, 0, '2019-10-15', 0),
(17, 1, 0, '2019-10-06', 0),
(18, 1, 0, '2019-10-06', 0),
(19, 1, 0, '2019-10-06', 0),
(20, 6, 0, '2019-10-08', 1000),
(21, 19, 0, '2019-10-17', 100),
(22, 21, 1, '2019-10-19', 400),
(23, 22, 1, '2019-10-19', 900),
(24, 4, 1, '2019-10-07', 20),
(25, 23, 0, '2019-10-19', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_id`, `status`, `warehouse_id`, `inventory_id`, `quantity`) VALUES
(1, 19, 1, 1, 1, 0),
(2, 19, 1, 2, 2, 0),
(3, 20, 1, 1, 1, 24),
(4, 20, 1, 2, 2, 26),
(5, 21, 1, 1, 1, 5),
(6, 21, 1, 2, 2, 0),
(7, 22, 1, 1, 1, 10),
(8, 22, 1, 2, 2, 10),
(9, 23, 1, 1, 1, 45),
(10, 23, 1, 2, 2, 0),
(11, 24, 1, 1, 1, 2),
(12, 24, 1, 2, 2, -1),
(13, 25, 1, 1, 1, 0),
(14, 25, 1, 2, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `photo`, `category_id`, `price`, `status`) VALUES
(2, 'product1', '1232ss', 'photo 1', 3, 20, 1),
(4, 'product2', NULL, '', 2, 50, 1),
(5, 'product3', NULL, '', 4, 10, 1),
(6, 'product2', NULL, NULL, 1, 0, 1),
(7, 'product12', NULL, NULL, 1, 0, 1),
(8, 'product5', '123', NULL, 2, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pucharse_order`
--

CREATE TABLE `pucharse_order` (
  `id` int(11) NOT NULL,
  `created` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `pucharse_order`
--

INSERT INTO `pucharse_order` (`id`, `created`, `quantity`, `account_id`, `product_id`, `status`) VALUES
(1, '2019-10-06', 12, 2, 2, 1),
(2, '2019-10-06', 10, 2, 2, 0),
(3, '2019-10-06', 130, 2, 2, 1),
(4, '2019-10-07', 1, 2, 2, 1),
(5, '2019-10-07', 99, 2, 2, 1),
(6, '2019-10-08', 50, 2, 2, 1),
(7, '2019-10-08', 40, 2, 2, 1),
(8, '2019-10-09', 1, 2, 2, 1),
(9, '2019-10-09', 2, 2, 2, 1),
(10, '2019-10-09', 20, 2, 2, 1),
(11, '2019-10-09', 87, 2, 2, 1),
(12, '2019-10-09', 100, 3, 2, 1),
(13, '2019-10-10', 20, 4, 2, 1),
(14, '2019-10-10', 5, 2, 2, 1),
(15, '2019-10-13', 2, 4, 2, 1),
(16, '2019-10-15', 2, 2, 2, 1),
(17, '2019-10-15', 50, 2, 2, 1),
(18, '2019-10-15', 2, 2, 2, 0),
(19, '2019-10-17', 5, 4, 2, 1),
(20, '2019-10-19', 10, 4, 2, 0),
(21, '2019-10-19', 20, 4, 2, 1),
(22, '2019-10-19', 45, 4, 2, 1),
(23, '2019-10-19', 1, 5, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rejection`
--

CREATE TABLE `rejection` (
  `id` int(11) NOT NULL,
  `created` date NOT NULL,
  `pucharseorder_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `rejection`
--

INSERT INTO `rejection` (`id`, `created`, `pucharseorder_id`, `invoice_id`, `status`) VALUES
(1, '2019-10-19', 2, 12, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rejection_details`
--

CREATE TABLE `rejection_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `factory_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `pucharseorder_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `rejection_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'ROLE_SUPER_ADMIN'),
(2, 'ROLE_ADMIN'),
(3, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `location` varchar(250) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `warehouse`
--

INSERT INTO `warehouse` (`id`, `name`, `status`, `location`) VALUES
(1, 'warehouse 1', 1, 'Alaska'),
(2, 'warehouse 2', 1, 'ha noi'),
(3, 'warehouse6', 1, 'California'),
(4, 'warehouse6', 1, 'California'),
(5, 'warehouse6', 1, 'California'),
(6, 'warehouse6', 1, 'California'),
(7, 'warehouse 7', 1, 'Tennessee'),
(8, 'warehouse 7', 1, 'Tennessee'),
(9, 'ichphan', 0, 'Alaska');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `credit_details`
--
ALTER TABLE `credit_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `credit_id` (`credit_id`);

--
-- Chỉ mục cho bảng `factory`
--
ALTER TABLE `factory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_id` (`warehouse_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`pucharseorder_id`),
  ADD KEY `pucharseorder_id` (`pucharseorder_id`),
  ADD KEY `pucharseorder_id_2` (`pucharseorder_id`);

--
-- Chỉ mục cho bảng `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `warehouse_id` (`warehouse_id`),
  ADD KEY `inventory_id` (`inventory_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `pucharse_order`
--
ALTER TABLE `pucharse_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `rejection`
--
ALTER TABLE `rejection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`pucharseorder_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Chỉ mục cho bảng `rejection_details`
--
ALTER TABLE `rejection_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rejection_id` (`rejection_id`),
  ADD KEY `warehouse_id` (`warehouse_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `factory_id` (`factory_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `pucharseorder_id` (`pucharseorder_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `credit`
--
ALTER TABLE `credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `credit_details`
--
ALTER TABLE `credit_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `factory`
--
ALTER TABLE `factory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `pucharse_order`
--
ALTER TABLE `pucharse_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `rejection`
--
ALTER TABLE `rejection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `rejection_details`
--
ALTER TABLE `rejection_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Các ràng buộc cho bảng `credit`
--
ALTER TABLE `credit`
  ADD CONSTRAINT `credit_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `credit_details`
--
ALTER TABLE `credit_details`
  ADD CONSTRAINT `credit_details_ibfk_2` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`);

--
-- Các ràng buộc cho bảng `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`),
  ADD CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`pucharseorder_id`) REFERENCES `pucharse_order` (`id`);

--
-- Các ràng buộc cho bảng `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_ibfk_2` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `invoice_details_ibfk_4` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`),
  ADD CONSTRAINT `invoice_details_ibfk_5` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `pucharse_order`
--
ALTER TABLE `pucharse_order`
  ADD CONSTRAINT `pucharse_order_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `pucharse_order_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `rejection`
--
ALTER TABLE `rejection`
  ADD CONSTRAINT `rejection_ibfk_2` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `rejection_ibfk_3` FOREIGN KEY (`pucharseorder_id`) REFERENCES `pucharse_order` (`id`);

--
-- Các ràng buộc cho bảng `rejection_details`
--
ALTER TABLE `rejection_details`
  ADD CONSTRAINT `rejection_details_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `rejection_details_ibfk_2` FOREIGN KEY (`factory_id`) REFERENCES `factory` (`id`),
  ADD CONSTRAINT `rejection_details_ibfk_3` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `rejection_details_ibfk_4` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `rejection_details_ibfk_5` FOREIGN KEY (`pucharseorder_id`) REFERENCES `pucharse_order` (`id`),
  ADD CONSTRAINT `rejection_details_ibfk_6` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`),
  ADD CONSTRAINT `rejection_details_ibfk_7` FOREIGN KEY (`rejection_id`) REFERENCES `rejection` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
