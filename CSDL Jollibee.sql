-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 03:21 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jolibee`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_datban`
--

CREATE TABLE `tbl_datban` (
  `IDDatBan` int(11) NOT NULL,
  `hoTenDB` text NOT NULL,
  `SDTDB` int(11) NOT NULL,
  `soNguoi` int(11) NOT NULL,
  `ngayDB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_datban`
--

INSERT INTO `tbl_datban` (`IDDatBan`, `hoTenDB`, `SDTDB`, `soNguoi`, `ngayDB`) VALUES
(111, 'Trương Quốc Huy', 945976200, 4, '2022-05-18'),
(112, 'Tô Trọng Nhân', 945976201, 2, '2022-05-19'),
(113, 'Nguyễn Thành Trung', 945976202, 3, '2022-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diadiem_chinhanh`
--

CREATE TABLE `tbl_diadiem_chinhanh` (
  `maTinh` int(11) NOT NULL,
  `maChiNhanh` int(11) NOT NULL,
  `tenChiNhanh` text NOT NULL,
  `gioMoCua` text NOT NULL,
  `SDTChiNhanh` int(11) NOT NULL,
  `hinhAnhChiNhanh` text NOT NULL,
  `diaChi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_diadiem_chinhanh`
--

INSERT INTO `tbl_diadiem_chinhanh` (`maTinh`, `maChiNhanh`, `tenChiNhanh`, `gioMoCua`, `SDTChiNhanh`, `hinhAnhChiNhanh`, `diaChi`) VALUES
(50, 12123, 'Jollibee Hinto Land', '8h - 22h', 707070707, 'imgBranch/399fd07392.jpg', 'K1-P3-Q5-Tp Hồ Chí Minh'),
(50, 12125, 'Jollibee HiperJio', '8h - 22h', 707070707, 'imgBranch/03dc614a21.jpg', 'K8-P3-Gò Vấp-Tp Hồ Chí Minh'),
(66, 13121, 'Jollibee Lotus', '6h - 22h', 808080808, 'imgBranch/ec66203463.jpg', 'Tháp Mười -Đồng Tháp'),
(67, 56654, 'Jollibee KienGiang', '8h - 20h', 606060606, 'imgBranch/12768709d0.jpg', 'K3-P1-Tp Kiên Giang'),
(71, 15765, 'Jollibee SuperCOCO', '8h - 22h', 505050505, 'imgBranch/3319b281f8.jpg', 'K6-P3-Tp Bến Tre'),
(71, 15788, 'Jollibee Coconut', '8h - 20h', 505050505, 'imgBranch/691698dc1e.jpg', 'K1-P7-Tp Bến Tre'),
(84, 14563, 'Jollibee Go', '8h - 22h', 909090909, 'imgBranch/bab683b4a2.jpg', 'K1-P7-Tp Trà Vinh'),
(84, 14564, 'Jollibee Home', '8h - 22h', 909090909, 'imgBranch/67966fbbd9.jpg', 'K2-P1-Tp Trà Vinh'),
(84, 14565, 'Jollibee Vincom', '8h - 20h', 909090909, 'imgBranch/3a8113cbfe.jpg', 'K1-P1-Tp Trà Vinh');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diadiem_tinh`
--

CREATE TABLE `tbl_diadiem_tinh` (
  `maTinh` int(11) NOT NULL,
  `tenTinh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_diadiem_tinh`
--

INSERT INTO `tbl_diadiem_tinh` (`maTinh`, `tenTinh`) VALUES
(50, 'Hồ Chí Minh'),
(66, 'Đồng Tháp'),
(67, 'Kiên Giang'),
(71, 'Bến Tre'),
(84, 'Trà Vinh');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `IDDonHang` int(11) NOT NULL,
  `hoTen` text NOT NULL,
  `diaChi` text NOT NULL,
  `SDT` int(11) NOT NULL,
  `SDTGiaoHang` int(11) NOT NULL,
  `tongTienTT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`IDDonHang`, `hoTen`, `diaChi`, `SDT`, `SDTGiaoHang`, `tongTienTT`) VALUES
(16, 'Trương Quốc Huy', ' Trà Vinh', 111111111, 0, 0),
(17, 'Lý Thế Vinh', ' Bến Tre', 222222222, 0, 0),
(18, 'Nguyễn Thành Trung', ' An Giang', 333333333, 0, 0),
(19, 'Tô Trọng Nhân', ' Bạc Liêu', 444444444, 0, 0),
(20, 'Trần Quốc Đảm', ' TP Hồ Chí Minh', 555555555, 0, 0),
(21, 'Nguyễn Văn Thái Sang', ' Kiên Giang', 666666666, 0, 0),
(22, 'Thái Công Nhạ', ' Vĩnh Long', 777777777, 0, 0),
(23, 'Lê Quốc Anh', ' Đồng Tháp', 888888888, 0, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donhang_chitiet`
--

CREATE TABLE `tbl_donhang_chitiet` (
  `STT` int(11) NOT NULL,
  `IDDonHang` int(11) NOT NULL,
  `maSanPham` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL,
  `tongTien` int(11) NOT NULL,
  `ngayDatHang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `maKH` int(11) NOT NULL,
  `phoneUser` int(13) NOT NULL,
  `hoTenKH` text NOT NULL,
  `diaChiKH` text NOT NULL,
  `emailKH` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`maKH`, `phoneUser`, `hoTenKH`, `diaChiKH`, `emailKH`) VALUES
(16, 111111111, 'Trương Quốc Huy', 'Trà Vinh', 'huy123@gmail.com'),
(17, 222222222, 'Lý Thế Vinh', 'Bến Tre', 'vinh123@gmail.com'),
(18, 333333333, 'Nguyễn Thành Trung', 'An Giang', 'trung123@gmail.com'),
(19, 444444444, 'Tô Trọng Nhân', 'Bạc Liêu', 'nhan123@gmail.com'),
(20, 555555555, 'Trần Quốc Đảm', 'TP Hồ Chí Minh', 'dam123@gmail.com'),
(21, 666666666, 'Nguyễn Văn Thái Sang', 'Kiên Giang', 'sang123@gmail.com'),
(22, 777777777, 'Thái Công Nhạ', 'Vĩnh Long', 'nha123@gmail.com'),
(23, 888888888, 'Lê Quốc Anh', 'Đồng Tháp', 'anh123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `maSanPham` int(11) NOT NULL,
  `tenSanPham` text NOT NULL,
  `moTaSanPham` text NOT NULL,
  `giaSanPham` int(10) NOT NULL,
  `hinhAnhSanPham` text NOT NULL,
  `loaiSanPham` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`maSanPham`, `tenSanPham`, `moTaSanPham`, `giaSanPham`, `hinhAnhSanPham`, `loaiSanPham`) VALUES
(107, 'Khoai tây 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 18000, 'imgProducts/7dbe5e49fc.png', 'Khoai_tay'),
(116, 'Khoai tây 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 25000, 'imgProducts/ce56ec6491.png', 'Khoai_tay'),
(127, 'Hamburger bò nướng ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 98, 'imgProducts/156458c915.png', 'Hamburger'),
(134, 'Hamburger gà nướng ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 115000, 'imgProducts/4c499a88b8.png', 'Hamburger'),
(144, 'Hamburger cá', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 90000, 'imgProducts/3f3ccc79f9.png', 'Hamburger'),
(145, 'Cơm gà sối mỡ 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 40000, 'imgProducts/ba5410b264.png', 'Com'),
(153, 'Hamburger heo quay', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 140000, 'imgProducts/77458fcb6b.png', 'Hamburger'),
(166, 'Hamburger đặt biệt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 179000, 'imgProducts/1bdff6a236.png', 'Hamburger'),
(176, 'Cơm gà sối mỡ 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 35000, 'imgProducts/eecdacbbbb.png', 'Com'),
(234, 'Cơm gà sối mỡ 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 30000, 'imgProducts/7bf499b6c4.png', 'Com'),
(257, 'Trà đào cam xả', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 25000, 'imgProducts/f139642d6c.png', 'Trang_mieng'),
(264, 'Trà dâu tươi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 27000, 'imgProducts/8bba955e8b.png', 'Nuoc_uong'),
(298, 'Kem 3 màu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 21000, 'imgProducts/f911e35906.png', 'Trang_mieng'),
(316, 'Bánh ngọt trà xanh', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 22000, 'imgProducts/844ac50541.png', 'Trang_mieng'),
(326, 'Bánh ngọt socola', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 22000, 'imgProducts/cb9b1de54b.png', 'Trang_mieng'),
(344, 'Pizza thập cẩm', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 150000, 'imgProducts/5b06bec206.png', 'Pizza'),
(435, 'Trà chanh truyền thống', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 20000, 'imgProducts/6419493c20.png', 'Nuoc_uong'),
(465, 'Gà rán 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 69000, 'imgProducts/721a3c08b9.png', 'Ga_ran'),
(543, 'Sữa chua thập cẩm', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 30000, 'imgProducts/65a94b0af7.png', 'Trang_mieng'),
(545, 'Pizza lá chanh', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 111000, 'imgProducts/f2e123eb33.png', 'Pizza'),
(590, 'Gà rán 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 39000, 'imgProducts/4007327b71.png', 'Ga_ran'),
(647, 'Gà rán 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 120000, 'imgProducts/f4269fb8a6.png', 'Ga_ran'),
(652, 'Coca Cola lon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 17000, 'imgProducts/85715195a0.png', 'Nuoc_uong'),
(653, 'C2 chai', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 12000, 'imgProducts/1a4489775e.png', 'Nuoc_uong'),
(654, 'Sting lon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 12000, 'imgProducts/66a81184bc.png', 'Nuoc_uong'),
(734, 'Gà rán 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 25000, 'imgProducts/4d85e2a0e0.png', 'Ga_ran'),
(765, 'Pizza hải sản', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 99000, 'imgProducts/5eb43dacba.png', 'Pizza'),
(867, 'Gà rán 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 169000, 'imgProducts/aa047c2281.png', 'Ga_ran'),
(893, 'Kem cây', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 15000, 'imgProducts/ed222b1713.png', 'Trang_mieng'),
(898, 'Pepsi lon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 15000, 'imgProducts/ff4aa0346b.png', 'Nuoc_uong'),
(956, 'Gà rán 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 175000, 'imgProducts/c8e1e1c431.png', 'Ga_ran');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `phoneUser` int(13) NOT NULL,
  `userName` text NOT NULL,
  `password` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`phoneUser`, `userName`, `password`, `role`) VALUES
(111111111, 'huy123', '0cc175b9c0f1b6a831c399e269772661', 0),
(222222222, 'vinhly84', '0cc175b9c0f1b6a831c399e269772661', 0),
(333333333, 'trung123', '0cc175b9c0f1b6a831c399e269772661', 0),
(444444444, 'nhan85', '0cc175b9c0f1b6a831c399e269772661', 0),
(555555555, 'dam45', '0cc175b9c0f1b6a831c399e269772661', 0),
(666666666, 'sang21', '0cc175b9c0f1b6a831c399e269772661', 0),
(777777777, 'nha99', '0cc175b9c0f1b6a831c399e269772661', 0),
(888888888, 'anh123', '0cc175b9c0f1b6a831c399e269772661', 0),
(999999999, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_datban`
--
ALTER TABLE `tbl_datban`
  ADD PRIMARY KEY (`IDDatBan`);

--
-- Indexes for table `tbl_diadiem_chinhanh`
--
ALTER TABLE `tbl_diadiem_chinhanh`
  ADD PRIMARY KEY (`maTinh`,`maChiNhanh`);

--
-- Indexes for table `tbl_diadiem_tinh`
--
ALTER TABLE `tbl_diadiem_tinh`
  ADD PRIMARY KEY (`maTinh`);

--
-- Indexes for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`IDDonHang`),
  ADD KEY `fk_SDTKH` (`SDT`);

--
-- Indexes for table `tbl_donhang_chitiet`
--
ALTER TABLE `tbl_donhang_chitiet`
  ADD PRIMARY KEY (`STT`,`IDDonHang`),
  ADD KEY `fk_IDDonHang` (`IDDonHang`),
  ADD KEY `fk_maSanPham` (`maSanPham`);

--
-- Indexes for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`maKH`,`phoneUser`),
  ADD KEY `fk_phoneUser` (`phoneUser`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`maSanPham`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`phoneUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_datban`
--
ALTER TABLE `tbl_datban`
  MODIFY `IDDatBan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `IDDonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_donhang_chitiet`
--
ALTER TABLE `tbl_donhang_chitiet`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `maKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `maSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1124;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_diadiem_chinhanh`
--
ALTER TABLE `tbl_diadiem_chinhanh`
  ADD CONSTRAINT `FK_matinh` FOREIGN KEY (`maTinh`) REFERENCES `tbl_diadiem_tinh` (`maTinh`);

--
-- Constraints for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD CONSTRAINT `fk_SDTKH` FOREIGN KEY (`SDT`) REFERENCES `tbl_khachhang` (`phoneUser`);

--
-- Constraints for table `tbl_donhang_chitiet`
--
ALTER TABLE `tbl_donhang_chitiet`
  ADD CONSTRAINT `fk_IDDonHang` FOREIGN KEY (`IDDonHang`) REFERENCES `tbl_donhang` (`IDDonHang`),
  ADD CONSTRAINT `fk_maSanPham` FOREIGN KEY (`maSanPham`) REFERENCES `tbl_sanpham` (`maSanPham`);

--
-- Constraints for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD CONSTRAINT `fk_phoneUser` FOREIGN KEY (`phoneUser`) REFERENCES `tbl_user` (`phoneUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
