-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2022 at 07:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `billdetail`
--

CREATE TABLE `billdetail` (
  `id` bigint(20) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `id_bills` bigint(20) NOT NULL,
  `quanty` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `billdetail`
--

INSERT INTO `billdetail` (`id`, `id_product`, `id_bills`, `quanty`, `total`) VALUES
(8, 13, 4, 1, 108100);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) NOT NULL,
  `user` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `total` double NOT NULL,
  `quanty` int(11) NOT NULL,
  `note` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `note`) VALUES
(4, 'User@gmail.com', '+84773840153', 'FirstUser', 'null', 108100, 1, 'Khong');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `description` text COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `description`) VALUES
(1, 'Sách giáo khoa', NULL),
(2, 'Sách tham khảo', NULL),
(3, 'Sách lập trình', NULL),
(4, 'Sách kinh tế', NULL),
(5, 'Sách ẩm thực', NULL),
(6, 'Tiểu thuyết', NULL),
(7, 'Truyện tranh', NULL),
(8, 'Báo & Tạp chí', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `id_product`, `name`, `code`, `img`) VALUES
(1, 1, 'Null', '#000000', 'Toan10.png'),
(2, 2, 'Null', '#000000', 'Van10.png'),
(3, 3, 'Null', '#000000', 'Anh10.png'),
(4, 4, 'Null', '#000000', 'Hoa10.png'),
(5, 5, 'Null', '#000000', 'ThamKhao1.png'),
(6, 6, 'Null', '#000000', 'ThamKhao1.png'),
(7, 7, 'Null', '#000000', 'ThamKhao1.png'),
(8, 8, 'Null', '#000000', 'ThamKhao1.png'),
(9, 9, 'Null', '#000000', 'LapTrinh1.png'),
(10, 10, 'Null', '#000000', 'LapTrinh1.png'),
(11, 11, 'Null', '#000000', 'LapTrinh1.png'),
(12, 12, 'Null', '#000000', 'LapTrinh1.png'),
(13, 13, 'Null', '#000000', 'KinhTe1.png'),
(14, 14, 'Null', '#000000', 'KinhTe1.png'),
(15, 15, 'Null', '#000000', 'KinhTe1.png'),
(16, 16, 'Null', '#000000', 'KinhTe1.png'),
(17, 17, 'Null', '#000000', 'AmThuc1.png'),
(18, 18, 'Null', '#000000', 'AmThuc2.png'),
(19, 19, 'Null', '#000000', 'AmThuc3.png'),
(20, 20, 'Null', '#000000', 'AmThuc4.png'),
(21, 21, 'Null', '#000000', 'TieuThuyet1.png'),
(22, 22, 'Null', '#000000', 'TieuThuyet1.png'),
(23, 23, 'Null', '#000000', 'TieuThuyet1.png'),
(24, 24, 'Null', '#000000', 'TieuThuyet1.png'),
(25, 25, 'Null', '#000000', 'TruyenTranh1.png'),
(26, 26, 'Null', '#000000', 'TruyenTranh1.png'),
(27, 27, 'Null', '#000000', 'TruyenTranh1.png'),
(28, 28, 'Null', '#000000', 'TruyenTranh1.png'),
(29, 29, 'Null', '#000000', 'BaoTapChi1.png'),
(30, 30, 'Null', '#000000', 'BaoTapChi1.png'),
(31, 31, 'Null', '#000000', 'BaoTapChi1.png'),
(32, 32, 'Null', '#000000', 'BaoTapChi1.png');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `url`) VALUES
(1, 'Trang chủ', 'Homepage'),
(2, 'Sản phẩm', 'Homepage'),
(3, 'So sánh', '#'),
(4, 'Giỏ hàng', 'ListCart'),
(5, 'Bài viết', '#'),
(6, 'Liên Hệ', '#');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `price` double NOT NULL,
  `sale` int(3) NOT NULL,
  `title` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `new_product` tinyint(1) NOT NULL,
  `details` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `sizes` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_category`, `name`, `price`, `sale`, `title`, `highlight`, `new_product`, `details`, `created_at`, `updated_at`, `sizes`) VALUES
(1, 1, 'Toán 10', 10800, 0, 'Null', 0, 1, 'Nhà xuất bản A', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(2, 1, 'Văn 10', 14900, 0, 'Null', 0, 0, 'Nhà xuất bản A', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(3, 1, 'Anh 10', 10200, 0, 'Null', 1, 0, 'Nhà xuất bản A', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(4, 1, 'Hóa 10', 12000, 0, 'Null', 0, 1, 'Nhà xuất bản A', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(5, 2, 'Toán nâng cao 11', 74800, 0, 'Null', 1, 0, 'Nhà xuất bản UpLevel', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(6, 2, 'Văn mẫu 11', 25900, 0, 'Null', 1, 0, 'Nhà xuất bản UpLevel', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(7, 2, 'Tiếng Anh: Luyện nói 11', 59800, 0, 'Null', 0, 0, 'Nhà xuất bản UpLevel', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(8, 2, 'Hóa nâng cao11', 67500, 0, 'Null', 0, 1, 'Nhà xuất bản UpLevel', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(9, 3, 'Tôi đi code chùa', 324300, 0, 'Null', 1, 0, 'Nhà xuất bản Coder', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(10, 3, 'Java Project 19', 498700, 0, 'Null', 1, 0, 'Nhà xuất bản Coder', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1,2'),
(11, 3, '.NET liệu có rớt môn', 292300, 0, 'Null', 1, 0, 'Nhà xuất bản Coder', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1,2,3'),
(12, 3, 'Lập trình Android cho người lười', 291300, 0, 'Null', 0, 0, 'Nhà xuất bản Coder', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(13, 4, 'Bitcoin nhanh giàu', 108100, 0, 'Null', 1, 1, 'Nhà xuất bản Thần Tài', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(14, 4, 'All-in mọi lúc', 170600, 0, 'Null', 0, 0, 'Nhà xuất bản Thần Tài', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(15, 4, 'Sửa xe máy tay ngang sang Coder', 71800, 0, 'Null', 0, 0, 'Nhà xuất bản Thần Tài', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1-99'),
(16, 4, 'Bí mật của một chạn vương', 102500, 0, 'Null', 0, 1, 'Nhà xuất bản Thần Tài', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(17, 5, 'Đầu bếp Soma', 350100, 0, 'Null', 0, 0, 'Nhà xuất bản Lò Gạch Cũ', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(18, 5, 'Những món ăn dân gian', 193500, 0, 'Null', 1, 1, 'Nhà xuất bản Lò Gạch Cũ', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(19, 5, 'Ẩm thực phương tây', 231600, 0, 'Null', 0, 0, 'Nhà xuất bản Lò Gạch Cũ', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(20, 5, 'Nướng mọi thứ', 22200, 0, 'Null', 1, 1, 'Nhà xuất bản Lò Gạch Cũ', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(21, 6, 'Đường thương đau', 257600, 0, 'Null', 0, 0, 'Nhà xuất bản Thấm Thía', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1,2'),
(22, 6, 'Nhân gian đày ải', 288500, 1, 'Null', 0, 0, 'Nhà xuất bản Thấm Thía', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1-4'),
(23, 6, 'Ngươi chưa thể đi qua', 115500, 0, 'Null', 0, 0, 'Nhà xuất bản Thấm Thía', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1,2'),
(24, 6, 'Thói đời', 459900, 0, 'Null', 0, 1, 'Nhà xuất bản Thấm Thía', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1-5'),
(25, 7, 'Canno - Thám tử tư', 121700, 0, 'Null', 0, 0, 'Nhà xuất bản Phụ Đồng', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1-99'),
(26, 7, 'Sasuke', 229600, 0, 'Null', 0, 0, 'Nhà xuất bản Phụ Đồng', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1-99'),
(27, 7, 'Huyền thoại sân cỏ Luffy', 34400, 0, 'Null', 0, 0, 'Nhà xuất bản Phụ Đồng', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1-99'),
(28, 7, 'Sakura - Thủ lĩnh tú lơ khơ', 176400, 0, 'Null', 0, 0, 'Nhà xuất bản Phụ Đồng', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1-99'),
(29, 8, 'Báo đời', 14100, 0, 'Null', 0, 0, 'Nhà xuất bản Không Tên', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(30, 8, 'Tin vịt', 14900, 0, 'Null', 0, 0, 'Nhà xuất bản Không Tên', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(31, 8, 'Phụ lão cười', 10800, 0, 'Null', 0, 0, 'Nhà xuất bản Không Tên', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1'),
(32, 8, 'Sức khỏe', 14300, 0, 'Null', 0, 0, 'Nhà xuất bản Không Tên', '2022-06-28 06:00:01', '2022-06-28 06:00:02', '1');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `img`, `caption`, `content`) VALUES
(1, 'Slide1.png', 'Chào mừng các bạn', 'Đã đến với BookShop Online'),
(2, 'Slide2.png', 'Chào mừng các bạn', 'Đã đến với BookShop Online'),
(3, 'Slide3.png', 'Chào mừng các bạn', 'Đã đến với BookShop Online'),
(4, 'Slide4.png', 'Chào mừng các bạn', 'Đã đến với BookShop Online');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `user` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `display_name` varchar(150) COLLATE utf8_vietnamese_ci NOT NULL,
  `address` text COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `display_name`, `address`) VALUES
(1, 'User@gmail.com', '$2a$12$6od7SSpfMBjyg2WftK/ABuqaQqMpgPTRNv1OxlxfbkGhkfmzX9Yxq', 'FirstUser', 'null');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_bills` (`id_bills`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`id_bills`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categorys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
