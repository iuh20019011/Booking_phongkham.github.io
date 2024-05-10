-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 08:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cn_moiphongkham`
--

-- --------------------------------------------------------

--
-- Table structure for table `bacsi`
--

CREATE TABLE `bacsi` (
  `IDBS` int(11) NOT NULL,
  `IDKhoa` int(11) NOT NULL,
  `HoTenBS` varchar(50) NOT NULL,
  `SĐT` varchar(10) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `GioiTinh.` varchar(20) NOT NULL,
  `Chuyenkhoa` varchar(100) NOT NULL,
  `tkBS` varchar(50) NOT NULL,
  `matkhauBS` varchar(50) NOT NULL,
  `avt` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bacsi`
--

INSERT INTO `bacsi` (`IDBS`, `IDKhoa`, `HoTenBS`, `SĐT`, `DiaChi`, `Email`, `GioiTinh.`, `Chuyenkhoa`, `tkBS`, `matkhauBS`, `avt`) VALUES
(1, 1, 'Nguyễn Văn A', '0123456789', '497/26/7 Phan Văn Trị,Gò Vấp', 'nguyenvana@gmail.com', 'Nam', 'Tim mạch', 'nam123@gmail.com', '123456', 'https://benhvienphuongdong.vn/public/uploads/doi-ngu-bac-si/thumbs/500x0/bs-nguyen-trung-chinh_4.png'),
(2, 1, 'Lê Văn Tính', '0112345678', '90 Cống Lở, P.15, Q.Tân Bình', 'LeVanTinh@gmail.com', 'Nam', 'Nội Thần Kinh', 'tinh123@gmail.com', '123456', 'https://benhvienphuongdong.vn/public/uploads/doi-ngu-bac-si/le-van-thinh/thumbs/500x0/bs-le-van-thinh.png'),
(3, 1, 'Lê Thị Hằng Nga', '0122345678', '91 Cống Lở, P.15, Q.Tân Bình', 'LeThiHangNga@gmail.com', 'Nữ', 'Nội Khoa', 'nga123@gmail.com', '123456', 'https://benhvienphuongdong.vn/public/uploads/2023/thang-6/thong-tin-bac-si/thumbs/500x0/le-thi-hang-nga.png'),
(5, 2, 'Nguyễn Viết Quy', '0132345678', '95 Cống Lở, P.15, Q.Tân Bình', 'NguyenVietQuy@gmail.com', 'Nam', 'Chuẩn Đoán Hình Ảnh', 'Quy123@gmail.com', '123456', 'https://benhvienphuongdong.vn/public/uploads/2023/thang-6/thong-tin-bac-si/thumbs/500x0/nguyen-viet-quy.png');

-- --------------------------------------------------------

--
-- Table structure for table `benhnhan`
--

CREATE TABLE `benhnhan` (
  `IDBN` int(11) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `SDT` varchar(10) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `GioiTinh` varchar(20) NOT NULL,
  `TinhTrang` varchar(300) NOT NULL,
  `Matkhau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `benhnhan`
--

INSERT INTO `benhnhan` (`IDBN`, `HoTen`, `SDT`, `DiaChi`, `Email`, `GioiTinh`, `TinhTrang`, `Matkhau`) VALUES
(1, 'Aka Baby Red', '0912345678', '123 Bùi Viện, Q1', 'akahungxedap@gmail.com', 'Nam', 'Nguy hiểm', '123456'),
(2, 'Lê Bảo Phi', '0374360339', '94 Cống Lở', 'ark@gmail.com', 'Nam', '', 'e10adc3949ba59abbe56e057f20f883e'),
(15, 'Aka Red', '0374360338', '94 Cống Lở', 'akared@gmail.com', 'Nam', '', 'e10adc3949ba59abbe56e057f20f883e'),
(16, 'Sơn Tùng MTP', '0374360336', '12 Phan Huy Ích', 'mtp@gmail.com', 'Nam', '', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `dichvu`
--

CREATE TABLE `dichvu` (
  `IDDV` int(11) NOT NULL,
  `TenDV` varchar(50) NOT NULL,
  `GiaDV` float NOT NULL,
  `MoTa` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

CREATE TABLE `khoa` (
  `IDKhoa` int(11) NOT NULL,
  `TenKhoa` varchar(100) NOT NULL,
  `SĐT` varchar(10) NOT NULL,
  `SoLuongBS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`IDKhoa`, `TenKhoa`, `SĐT`, `SoLuongBS`) VALUES
(1, 'Khoa Khám Bệnh', '0123456789', 3),
(2, 'Khoa Phụ Sản', '0234567891', 3),
(3, 'Khoa Nhi', '0345678912', 5);

-- --------------------------------------------------------

--
-- Table structure for table `lichkham`
--

CREATE TABLE `lichkham` (
  `IDLichKham` int(11) NOT NULL,
  `IDBN` int(11) NOT NULL,
  `IDBS` int(11) NOT NULL,
  `IDKhoa` int(11) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SĐT` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `GioiTinh` varchar(20) NOT NULL,
  `NgayKham` date NOT NULL,
  `TrangThai` varchar(50) NOT NULL,
  `Thoigian` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quanlyphongkham`
--

CREATE TABLE `quanlyphongkham` (
  `IDQL` int(11) NOT NULL,
  `TenQL` varchar(50) NOT NULL,
  `tkQL` varchar(50) NOT NULL,
  `matkhauQL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quanlyphongkham`
--

INSERT INTO `quanlyphongkham` (`IDQL`, `TenQL`, `tkQL`, `matkhauQL`) VALUES
(1, 'Admin', 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `IDThanhToan` int(11) NOT NULL,
  `LoaiThanhToan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `IDQL` int(11) NOT NULL,
  `tieude` varchar(100) NOT NULL,
  `noidung` varchar(1000) NOT NULL,
  `avt` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`IDQL`, `tieude`, `noidung`, `avt`) VALUES
(1, 'Sốt phát ban ở người lớn: Nguyên nhân và cách điều', 'abc', 'https://benhvienphuongdong.vn/public/uploads/2024/thang-3/sot-phat-ban-o-nguoi-lon/thumbs/500x0/sot-phat-ban-o-nguoi-lon.jpg'),
(1, 'Chứng nhận FDA là gì? Vì sao ngân hàng tế bào gốc ', 'abc', 'https://benhvienphuongdong.vn/public/uploads/2024/thang-3/chung-nhan-fda/thumbs/500x0/chung-nhan-fda.jpg'),
(1, '5 cách phòng bệnh thuỷ đậu và hướng dẫn chăm sóc trẻ', 'abc', 'https://benhvienphuongdong.vn/public/uploads/2024/thang-3/cach-phong-benh-thuy-dau/thumbs/350x0/cach-phong-benh-thuy-dau-0.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bacsi`
--
ALTER TABLE `bacsi`
  ADD PRIMARY KEY (`IDBS`),
  ADD KEY `IDKhoa` (`IDKhoa`);

--
-- Indexes for table `benhnhan`
--
ALTER TABLE `benhnhan`
  ADD PRIMARY KEY (`IDBN`);

--
-- Indexes for table `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`IDDV`);

--
-- Indexes for table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`IDKhoa`);

--
-- Indexes for table `lichkham`
--
ALTER TABLE `lichkham`
  ADD PRIMARY KEY (`IDLichKham`),
  ADD KEY `IDBN` (`IDBN`,`IDBS`,`IDKhoa`),
  ADD KEY `IDBS` (`IDBS`),
  ADD KEY `IDKhoa` (`IDKhoa`);

--
-- Indexes for table `quanlyphongkham`
--
ALTER TABLE `quanlyphongkham`
  ADD PRIMARY KEY (`IDQL`);

--
-- Indexes for table `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`IDThanhToan`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD KEY `IDQL` (`IDQL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bacsi`
--
ALTER TABLE `bacsi`
  MODIFY `IDBS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `benhnhan`
--
ALTER TABLE `benhnhan`
  MODIFY `IDBN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `IDDV` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khoa`
--
ALTER TABLE `khoa`
  MODIFY `IDKhoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lichkham`
--
ALTER TABLE `lichkham`
  MODIFY `IDLichKham` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quanlyphongkham`
--
ALTER TABLE `quanlyphongkham`
  MODIFY `IDQL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `IDThanhToan` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
