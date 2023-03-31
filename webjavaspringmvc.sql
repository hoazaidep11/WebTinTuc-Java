-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 19, 2023 lúc 08:32 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webjavaspringmvc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `TenLSP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `TenLSP`) VALUES
(1, 'Máy tiện CNC'),
(2, 'Máy phay CNC'),
(3, 'Máy mài CNC'),
(4, 'Máy cắt cơ khí'),
(5, 'Máy cưa vòng kim loại'),
(6, 'Máy bào rãnh inox'),
(7, 'Máy khoan'),
(8, 'Máy bơm mỡ công nghiệp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaphanphoi`
--

CREATE TABLE `nhaphanphoi` (
  `id` int(11) NOT NULL,
  `TenNPP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhaphanphoi`
--

INSERT INTO `nhaphanphoi` (`id`, `TenNPP`) VALUES
(1, 'Công ty gia công cơ khí CNC Hameco'),
(2, 'Công ty gia công cơ khí công nghiệp SUMITECH'),
(3, 'Công ty gia công cơ khí Tân Phát'),
(4, 'Công ty gia công cơ khí phụ trợ Ichi Việt Nam'),
(5, 'Công ty cổ phần cơ khí CNC Tiến Bộ'),
(6, 'Công ty sản xuất và thương mại Đa Hình'),
(7, 'Công ty gia công cơ khí Intech Việt Nam'),
(8, 'Công ty cổ phần gia công cơ khí VN-TECH'),
(9, 'Công ty gia công cơ khí IMAXS');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `id_lsp` int(11) NOT NULL,
  `id_npp` int(11) NOT NULL,
  `TenSP` varchar(255) NOT NULL,
  `HinhSP` varchar(255) NOT NULL,
  `GiaSP` double NOT NULL,
  `NoiDung` text NOT NULL,
  `highlight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_lsp`, `id_npp`, `TenSP`, `HinhSP`, `GiaSP`, `NoiDung`, `highlight`) VALUES
(1, 1, 1, 'Máy hàn 1', 'bg4.png', 2500, 'Máy hàn', 1),
(2, 2, 2, 'Máy hàn 2', 'bg4.png', 2290, 'Máy hàn', 1),
(3, 1, 1, 'Máy hàn 3', 'bg4.png', 3000, 'Máy hàn', 0),
(4, 1, 9, 'Máy hàn 4', 'bg4.png', 3000, 'Máy hàn', 1),
(5, 1, 1, 'Máy hàn 5', 'bg4.png', 2290, 'Máy hàn', 0),
(8, 4, 3, 'Máy cắt cơ khí 1', 'bg4.png', 2990, 'Máy cắt cơ khí', 0),
(9, 3, 3, 'Máy mài', 'bg4.png', 2000, 'Máy mài', 1),
(10, 8, 6, 'Máy bơm mỡ', 'bg4.png', 5000, 'Máy bơm mỡ', 0),
(11, 7, 1, 'Máy khoan ', 'bg4.png', 2000, 'Máy khoan', 1),
(12, 7, 1, 'Máy khoan 2', 'bg4.png', 3900, 'Máy khoan', 0),
(13, 1, 4, 'Máy tiện', 'bg4.png', 2000, 'Máy tiện', 0),
(14, 1, 7, 'Máy tiện 2', 'bg4.png', 2290, 'Máy tiện', 0),
(15, 1, 4, 'Máy tiện 3', 'bg4.png', 3000, 'Máy tiện', 1),
(16, 1, 8, 'Máy tiện 4', 'bg4.png', 2290, 'Máy tiện', 0),
(17, 1, 5, 'Máy tiện 5', 'bg4.png', 2599, 'Máy tiện', 0),
(18, 1, 6, 'Máy tiện 6', 'bg4.png', 2290, 'Máy tiện', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhaphanphoi`
--
ALTER TABLE `nhaphanphoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_lsp` (`id_lsp`),
  ADD KEY `id_npp` (`id_npp`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nhaphanphoi`
--
ALTER TABLE `nhaphanphoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`id_lsp`) REFERENCES `loaisanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`id_npp`) REFERENCES `nhaphanphoi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
