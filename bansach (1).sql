-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2017 at 04:19 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bansach`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

DROP TABLE IF EXISTS `chitietdonhang`;
CREATE TABLE IF NOT EXISTS `chitietdonhang` (
  `MaChiTietDonHang` int(50) NOT NULL AUTO_INCREMENT,
  `Madonhang` int(50) NOT NULL,
  `MaSach` varchar(50) NOT NULL,
  `Soluong` int(11) NOT NULL,
  `Dongia` decimal(10,0) NOT NULL,
  PRIMARY KEY (`MaChiTietDonHang`),
  KEY `Madonhang` (`Madonhang`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`MaChiTietDonHang`, `Madonhang`, `MaSach`, `Soluong`, `Dongia`) VALUES
(1, 1, '3', 1, '55000'),
(2, 1, '5', 1, '62000'),
(3, 2, '2', 1, '77000'),
(4, 3, '2', 1, '77000'),
(5, 4, '2', 1, '77000'),
(6, 5, '2', 1, '77000'),
(7, 6, '2', 1, '77000'),
(8, 7, '2', 1, '77000'),
(9, 8, '2', 1, '77000'),
(10, 9, '2', 1, '77000'),
(11, 10, '2', 1, '77000'),
(12, 11, '2', 1, '77000'),
(13, 12, '2', 1, '77000'),
(14, 13, '2', 1, '77000'),
(15, 14, '2', 1, '77000'),
(16, 15, '2', 1, '77000'),
(17, 16, '2', 1, '77000'),
(18, 17, '2', 1, '77000'),
(19, 18, '2', 1, '77000'),
(20, 19, '2', 1, '77000'),
(21, 20, '2', 1, '77000'),
(22, 21, '2', 1, '77000'),
(23, 22, '2', 1, '77000'),
(24, 23, '2', 1, '77000'),
(25, 24, '2', 1, '77000'),
(26, 25, '2', 1, '77000'),
(27, 26, '3', 1, '55000'),
(28, 27, '3', 1, '55000'),
(29, 28, '3', 1, '55000'),
(30, 29, '3', 1, '55000'),
(31, 30, '3', 1, '55000'),
(32, 31, '3', 1, '55000'),
(33, 32, '3', 1, '55000'),
(34, 33, '3', 1, '55000'),
(35, 34, '3', 1, '55000'),
(36, 35, '3', 1, '55000'),
(37, 36, '3', 1, '55000'),
(38, 37, '3', 1, '55000'),
(39, 38, '3', 1, '55000'),
(40, 39, '3', 1, '55000'),
(41, 40, '3', 1, '55000'),
(42, 41, '3', 1, '55000'),
(43, 42, '3', 1, '55000'),
(44, 43, '3', 1, '55000'),
(45, 44, '3', 1, '55000'),
(46, 45, '3', 1, '55000'),
(47, 46, '3', 1, '55000'),
(48, 47, '3', 1, '55000'),
(49, 48, '3', 1, '55000'),
(50, 49, '3', 1, '55000'),
(51, 50, '3', 1, '55000'),
(52, 51, '3', 1, '55000'),
(53, 52, '3', 1, '55000'),
(54, 53, '3', 1, '55000'),
(55, 54, '3', 1, '55000'),
(56, 55, '3', 1, '55000'),
(57, 56, '3', 1, '55000'),
(58, 57, '3', 1, '55000'),
(59, 58, '3', 1, '55000'),
(60, 59, '3', 1, '55000'),
(61, 60, '3', 1, '55000'),
(62, 61, '3', 1, '55000'),
(63, 62, '3', 1, '55000'),
(64, 63, '3', 1, '55000'),
(65, 64, '3', 1, '55000'),
(66, 65, '3', 1, '55000'),
(67, 66, '3', 1, '55000'),
(68, 67, '3', 1, '55000'),
(69, 68, '3', 1, '55000'),
(70, 69, '3', 1, '55000'),
(71, 70, '3', 1, '55000'),
(72, 71, '3', 1, '55000'),
(73, 72, '3', 1, '55000'),
(74, 73, '3', 1, '55000'),
(75, 74, '3', 1, '55000'),
(76, 75, '3', 1, '55000'),
(77, 76, '3', 1, '55000');

-- --------------------------------------------------------

--
-- Table structure for table `chude`
--

DROP TABLE IF EXISTS `chude`;
CREATE TABLE IF NOT EXISTS `chude` (
  `machude` int(50) NOT NULL AUTO_INCREMENT,
  `tenchude` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`machude`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chude`
--

INSERT INTO `chude` (`machude`, `tenchude`) VALUES
(1, 'Công nghệ thông tin'),
(2, 'Ngoại ngữ'),
(3, 'Phật Giáo'),
(4, 'Sách học làm người'),
(5, 'Văn học nước nài'),
(6, 'Kinh Tế'),
(7, 'Khoa học Vật lý'),
(8, 'Khoa học Xã hội'),
(9, 'Luật'),
(10, 'Từ điển'),
(11, 'Lịch sử, địa lý'),
(12, 'Vật nuôi - Cây cảnh'),
(13, 'Khoa học kỹ thuật'),
(14, 'Mỹ thuật'),
(15, 'Nghệ thuật'),
(16, 'Âm nhạc'),
(17, 'Sách giáo khoa'),
(18, 'Sách tham khảo'),
(19, 'Danh nhân'),
(20, 'Tâm lý giáo dục'),
(21, 'Thể thao - Võ thuật'),
(22, 'Văn hóa - Xã hội'),
(23, 'Nữ công gia chánh'),
(24, 'Nghệ thuật làm đẹp'),
(25, 'Du lịch'),
(26, 'Y Học dân tộc vn'),
(30, 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
CREATE TABLE IF NOT EXISTS `donhang` (
  `Madonhang` int(50) NOT NULL AUTO_INCREMENT,
  `MaKH` int(50) NOT NULL,
  `NgayGiao` text,
  `NgayDat` text NOT NULL,
  `TinhTrangGiaoHang` bit(2) DEFAULT b'1',
  `DiaChi` varchar(100) NOT NULL,
  `PhuongThucThanhToan` varchar(50) DEFAULT 'Tiền mặt',
  PRIMARY KEY (`Madonhang`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`Madonhang`, `MaKH`, `NgayGiao`, `NgayDat`, `TinhTrangGiaoHang`, `DiaChi`, `PhuongThucThanhToan`) VALUES
(1, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(2, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(3, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(4, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(5, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(6, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(7, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(8, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(9, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(10, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(11, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(12, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(13, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(14, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(15, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(16, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(17, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(18, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(19, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(20, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(21, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(22, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(23, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(24, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(25, 3, '2017-12-5', '2017-12-4', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(26, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(27, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(28, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(29, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(30, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(31, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(32, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(33, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(34, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(35, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(36, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(37, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(38, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(39, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(40, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(41, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(42, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(43, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(44, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(45, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(46, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(47, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(48, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(49, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(50, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(51, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(52, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(53, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(54, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(55, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(56, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(57, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(58, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(59, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(60, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(61, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(62, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(63, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(64, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(65, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(66, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(67, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(68, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(69, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(70, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(71, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(72, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(73, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(74, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(75, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt'),
(76, 3, '2017-12-6', '2017-12-5', b'01', 'c100 xóm chiếu', 'Tiền mặt');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `MaKH` int(50) NOT NULL AUTO_INCREMENT,
  `TenKH` varchar(200) CHARACTER SET utf8 NOT NULL,
  `NgaySinh` text,
  `Gioitinh` tinyint(1) NOT NULL,
  `dienthoai` varchar(11) NOT NULL,
  `taikhoan` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `email` varchar(150) CHARACTER SET utf8 NOT NULL,
  `diachi` varchar(250) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`MaKH`),
  UNIQUE KEY `taikhoan` (`taikhoan`),
  UNIQUE KEY `MaKH` (`MaKH`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `NgaySinh`, `Gioitinh`, `dienthoai`, `taikhoan`, `matkhau`, `email`, `diachi`) VALUES
(3, 'lê gia huy', '2017-12-02', 1, '1231231231', 'huy', '202cb962ac59075b964b07152d234b70', 'lehuy.sn96@gmail.com', 'c100 xóm chiếu'),
(4, 'hiếu đẹp trai', '2017-12-20', 1, '0123456789', 'hieudeptrai', '202cb962ac59075b964b07152d234b70', 'nguyenhieu4477@gmail.com', 'bìnhhưng');

-- --------------------------------------------------------

--
-- Table structure for table `nhaxuatban`
--

DROP TABLE IF EXISTS `nhaxuatban`;
CREATE TABLE IF NOT EXISTS `nhaxuatban` (
  `MaNXB` int(50) NOT NULL AUTO_INCREMENT,
  `TenNXB` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Diachi` varchar(250) CHARACTER SET utf8 NOT NULL,
  `SDT` varchar(11) NOT NULL,
  PRIMARY KEY (`MaNXB`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`MaNXB`, `TenNXB`, `Diachi`, `SDT`) VALUES
(1, 'Nhà xuất bản Trẻ', '124 Nguyễn Văn Cừ Q.1 Tp.HCM', '1900156045'),
(2, 'NXB Thống kê', 'Biên Hòa-Đồng Nai', '1900151112'),
(3, 'Kim đồng', 'Tp.HCM', '1900157090'),
(4, 'Đại học quốc gia', 'Tp.HCM', '908419981'),
(5, 'Văn hóa nghệ thuật', 'Đà Nẵng', '903118833'),
(6, 'Văn hóa', 'Bình Dương', '913336677'),
(7, 'NXB Lao động - Xã hội', 'Tp.HCM', '989888888'),
(8, 'Khoa Học & Kỹ Thuật', 'Hà Nội', '903118824'),
(9, 'Thanh Niên', 'Tp.HCM', '903118811'),
(10, 'NXB Tài Chính', 'Huế', '903118833'),
(11, 'NXB Phụ Nữ', 'Tp.HCM', '989888885'),
(12, 'NXB Hồng Đức ', 'Tp.HCM', '989888885'),
(13, 'NXB Phương Đông', 'Tp.HCM', '989888889'),
(14, 'NXB Thời Đại', 'Tp.HCM', '903118865'),
(15, 'NXB Tổng hợp TP.HCM', 'Tp.HCM', '903118878'),
(23, 'huy', '1231231', '32325'),
(24, 'fsfsdf', 'rrưẻ', '1111'),
(25, 'huy dep trai nha giau hoc gioi', 'đá', '1111'),
(26, 'dasdsd', '11111', '5555'),
(27, 'dasdsad', '54343', '323232'),
(28, 'dsadasdsa', 'dasdsadsa', '21212121'),
(29, 'nnnnnnnn', 'fsfds', '2323232'),
(30, 'cccccccccccccccccccccc', 'ddddddddddddddddddd', '1111111'),
(31, 'ddddddddddddddddddddd', 'aaaaaaaaaaaaaaaaaaaaaa', '123456'),
(32, 'abcddd', '4adasdasd', '1234568'),
(33, 'fsdfsdfdsf', '98765dsccss', '1364165464'),
(34, 'huy dep trai nha giau hoc gioi', 'xom chieu', '123456789'),
(35, 'adsdasdasd', 'dhasjdkhasjdkas', '123456789'),
(36, 'le ', 'dasdsa', '43424'),
(37, 'huy', 'fsfsfsdfds', '12345682'),
(38, 'huy', 'dasdasdasdsad', '1'),
(39, 'edksa;dkasl', 'fsdfdsfsdfsd', '123456789'),
(40, 'sfds', 'fsdfsdf', '1234567895'),
(41, 'dfdsfsd', 'fsfsdf', '1234567898'),
(42, 'fsfds', 'fdsfsdfsd', '1231231231'),
(43, 'le', 'fsdfsdfsdfsfsd', '123456'),
(44, 'fsdf', 'fsdfsdfs', '123456789'),
(45, 'huy', 'dadasdas', '1234567894'),
(46, 'dsadasd', 'dasdasd', '1598236887'),
(47, 'hieudep trai', 'asdasd', '122883619'),
(48, 'duc', 'asdasd', '1228836197'),
(49, 'asdas', 'asdasdasccc', '1222222222'),
(50, 'huyasd123', 'asd', '122883619');

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

DROP TABLE IF EXISTS `sach`;
CREATE TABLE IF NOT EXISTS `sach` (
  `MaSach` int(50) NOT NULL AUTO_INCREMENT,
  `TenSach` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Giaban` decimal(10,0) NOT NULL,
  `Mota` text CHARACTER SET utf8mb4 NOT NULL,
  `NgayCapNhat` datetime NOT NULL,
  `AnhBia` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `MaChuDe` int(50) NOT NULL,
  `MaNXB` int(50) NOT NULL,
  `Moi` tinyint(2) NOT NULL,
  PRIMARY KEY (`MaSach`),
  KEY `MaChuDe` (`MaChuDe`),
  KEY `MaNXB` (`MaNXB`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`MaSach`, `TenSach`, `Giaban`, `Mota`, `NgayCapNhat`, `AnhBia`, `MaChuDe`, `MaNXB`, `Moi`) VALUES
(1, 'Sketchup & Vray Trong Thiết Kế 1 Kiến Trúc', '87000', 'SketchUp Pro là một chương trình đồ họa kiến trúc tuyệt vời, dễ học cũng như dễ sử dụng. Ngay từ khi xuất hiện vào năm 2000, SketchUp giúp cho việc phác thảo và thiết kế ý tưởng được thuận tiện, chương trình tập hợp nhiều công cụ tiện ích giúp cho việc thể hiện ý tưởng cho việc phác thảo những phối cảnh trong kiến trúc. Ứng dụng trong Sketchup rất linh hoạt. Chương trình đoạt nhiều giải thưởng về thiết kế sáng tạo và được nhiều người công nhận.', '2017-11-29 00:00:00', '000001.jpg', 1, 1, 1),
(2, '3DS Max-Thủ Thuật Render Phối Cảnh kiến Trúc Ban Ngày Và Đêm Với V-Ray 1.50 RC3', '77000', 'Cuốn sách 3DS Max giới thiệu đến các bạn những kỹ năng sử dụng phần mềm hỗ trợ V-ray mới nhất đang được nhiều người trên thế giới quan tâm. ', '2017-11-29 00:00:00', '000002.jpg', 1, 2, 1),
(3, 'Tự Học InDesign CS3', '55000', 'InDesign CS3 là chương trình dàn trang rất hiện đại và tiện dụng dành cho việc trình bày sách, báo, tạp chí...', '2012-03-31 00:00:00', '000003.jpg', 1, 3, 1),
(4, 'Đắc Nhân Tâm - Cuốn Sách Hay Nhất Của Mọi Thời Đại Đưa Bạn Đến Thành Công!', '60000', 'Đắc nhân tâm – How to win friends and Influence People của Dale Carnegie là quyển sách nổi tiếng nhất, bán chạy nhất và có tầm ảnh hưởng nhất của mọi thời đại. ', '2012-03-31 00:00:00', '000004.jpg', 4, 4, 1),
(5, 'Tự Học Photoshop CS5 Qua Hình Ảnh Minh Họa (Sách Kèm CD)', '62000', 'Nhằm đáp ứng nhu cầu tự học Photoshop, một phần mềm xử lý ảnh ngày càng nhiều. Sách \" Tự Học Photoshop CS5 Qua Hình Ảnh Minh Họa\" được chia thành 11 chương kèm với hình ảnh minh họa và CD bài tập được kèm theo sách. ', '2012-03-31 00:00:00', '000005.jpg', 1, 5, 1),
(6, '180 Thủ Thuật Và Mẹo Hay Trong Flash CS4', '71000', 'Adobe Flash Professional CS4 là phiên bản mới nhất của công cụ thiết kế Web đang rất thịnh hành hiện nay. ', '2012-03-31 00:00:00', '000006.jpg', 1, 6, 1),
(7, 'Microsoft Office 2010 - Dành Cho Người Tự Học', '18000', 'Trong lĩnh vực tin học văn phòng, Microsoft Word, Excel, PowerPoint, Visio là những chương trình thuộc bộ Microsoft Office đã và đang được ứng dụng rộng rãi trong nhiều lĩnh vực: kinh tế, kế toán, thương mại, quản lý, vẽ kỹ thuật và nhiều hơn nữa. Với Office 2010, bạn có trong tay đầy đủ các công cụ và lệnh để thực hiện các tiện ích trong diện toán văn phòng .', '2012-03-31 00:00:00', '000007.jpg', 1, 7, 1),
(8, 'Tự học Microsoft Excel 2010', '37000', 'Sách được chia thành 11 bài, từ căn bản đến nâng cao kèm theo CD bài tập thực hành nhằm giúp bạn học một cách nhanh chóng và dễ hiểu như:', '2012-03-31 00:00:00', '000008.jpg', 1, 8, 1),
(9, 'C# Dành Cho Người Tự Học - Tập 1', '67000', 'Sách được chia thành 11 bài, từ căn bản đến nâng cao kèm theo CD bài tập thực hành nhằm giúp bạn học một cách nhanh chóng và dễ hiểu như:', '2012-03-31 00:00:00', '000009.jpg', 1, 9, 1),
(10, 'C# Dành Cho Người Tự Học - Tập 2', '69000', 'Trong tập 2 này, các bạn sẽ tìm hiểu ứng dụng C# trong Windows Form qua 2 phần, mỗi phần là một bài tập lớn xây dựng lên ứng dụng Quản lý bán hàng và Quản lý tuyển sinh để bạn đọc hiểu rõ và khai thác có hiệu quả những công cụ và lệnh của C# đã trình bày trong tập 1.', '2012-03-31 00:00:00', '000010.jpg', 1, 10, 1),
(11, 'Nghệ Thuật Sống An Lạc ', '69000', '\"Nghệ thuật sống An lạc là tuyển tập các bài giảng liên quan tới chủ đề nghệ thuật sống của Đức Nhiếp Chính Vương Khamtrul Rinpoche đời thứ IX Jigme Pema Nyinjadh . ', '2012-03-31 00:00:00', '000011.jpg', 3, 11, 1),
(12, 'Phương Pháp Quản Lý Nhân Sự Trong Công Ty', '69000', 'Những người sử dụng lao động đã hiểu dần các giá trị mà con người tạo ra cho tổ chức của họ. ', '2012-03-31 00:00:00', '000012.jpg', 6, 12, 1),
(13, 'Ngọc Sáng Trong Hoa Sen', '69000', 'Trong nửa thế kỷ qua, số người phương Tây thăm viếng phương Đông không phải là ít nhưng đã có mấy ai lĩnh hội được tinh hoa của phương Đông? ', '2012-03-31 00:00:00', '000013.jpg', 3, 13, 1),
(14, 'Hành Trình Về Phương Đông', '18000', '\"Hành trình về phương đông\" kể về những trải nghiệm của một đoàn khoa học gồm các chuyên gia hàng đầu của Hội Khoa Học Hoàng Gia Anh được cử sang Ấn Độ nghiên cứu về huyền học và những khả năng siêu nhiên của con người. ', '2012-03-31 00:00:00', '000014.jpg', 3, 14, 1),
(15, 'Lập Bản Đồ Tư Duy - Công Cụ Tư Duy Tối Ưu Sẽ Làm Thay Đổi Cuộc Sống Của Bạ', '18000', 'Lập Bản Đồ Tư Duy - Công Cụ Tư Duy Tối Ưu Sẽ Làm Thay Đổi Cuộc Sống Của Bạn:', '2012-03-31 00:00:00', '000015.jpg', 4, 15, 1),
(16, 'Đơn Giản Và Thuần Khiết', '18000', 'Giới thiệu về nội dung Tác phẩm này là tổng hợp của nhiều bài Pháp được giảng từ những năm 1954 đến 1977 của Upasika Kee Nanayon. Mỗi phần có thể là một bài giảng ở một thời điểm khác nhau, vì thế khi tập hợp lại, điều này tạo cho chúng ta cảm tưởng của sự lặp đi lặp lại nhiều ý tưởng. Đó có thể là lý do khiến cho một số độc giả thiếu kiên nhẫn khi theo dõi, riêng đối với những người sơ cơ thì điều đó lại là một ân huệ. Nài ra văn phong của Upasika Kee Nanayon rất giản dị, chân tình. Đôi khi chúng ta sẽ có cảm giác như đang nghe những lời nhắc nhở, dạy dỗ của một người thầy, người mẹ, dầu hơi nghiêm khắc, nhưng luôn tràn đầy tâm từ bi, muốn cho người nghe, người đọc phải tinh tấn thêm lên, gấp rút thêm lên trên con đường tu học của mình.', '2012-03-31 00:00:00', '000016.jpg', 3, 1, 1),
(17, 'Cách Sống - Từ Bình Thường Trở Nên Phi Thường', '18000', 'Inamori Kazuo một doanh nhân hết sức thành đạt trong việc sáng lập và điều hành tập đoàn Kyocera lớn mạnh của Nhật Bản. ', '2012-03-31 00:00:00', '000017.jpg', 6, 2, 1),
(18, 'Những Quy Luật Mới Trong Bán Lẻ', '18000', 'Ngành bán lẻ đang chứng kiến một sự thay đổi trọng đại. ', '2012-03-31 00:00:00', '000018.jpg', 6, 3, 1),
(19, 'Lavina Và Hầu Tước Elswick (Cuộc Chạy Trốn Nữ Hoàng)', '75000', 'Khi Hoàng tử Stanislaus của xứ Balkan yêu cầu có một cô dâu của Anh quốc, Nữ hoàng Victoria đã quyết định chọn tiểu thư Lavina gửi cho hắn. Gia đình nàng có quan hệ họ hàng xa với hoàng tộc.', '2012-03-31 00:00:00', '000019.jpg', 5, 4, 1),
(20, 'Hành Vi Tổ Chức - Organizational Behavior', '75000', '\"Vũ trụ cũng không khó hiểu bằng hành động của con người.\" Marcel Proust Tiến sĩ Timothy A. Judge từng là giáo sư giảng dạy tại trường Đại Học Cornell và đại học Lowa. Ông nghiên cứu chuyên sâu vào các lĩnh vực liên quan đến sự khác biệt cá nhân, thuật lãnh đạo và ảnh hưởng hành vi con người...Ông đã được trao nhiều giải thưởng quan trọng như Emest J.McCormick Award, Larry L. Cummings Award...', '2012-03-31 00:00:00', '000020.jpg', 6, 5, 1),
(21, '17 Nguyên Tắc Vàng Trong Làm Việc Nhóm', '75000', 'Khi trở thành thành viên của một nhóm nào đó thì vấn đề bạn cần băn khoăn không phải là “Có nên tham gia các hoạt động của nhóm không?” mà là “Những đóng góp của bạn có mang lại thành công cho nhóm không?” Các cá nhân không thể gắn kết với nhau là nguyên nhân làm tan rã nhóm. Một số người nghĩ rằng chìa khoá để thành công là nguyên tắc làm việc rõ ràng. Nhưng trên thực tế, có nhiều người rất siêng năng, khả năng làm việc độc lập rất tốt nhưng lại không thể làm việc cùng nhau để phát huy hết tiềm lực của họ. Thực chất, nhóm phải là nhóm những cá nhân luôn tương trợ, giúp đỡ lẫn nhau, tạo động lực cho nhau phát triển. Giữa các cá nhân phải có sự tương tác với nhau như một chuỗi phản ứng hoá học. Đó là cách thức để xây dựng nhóm của riêng bạn. ', '2012-03-31 00:00:00', '000021.jpg', 6, 6, 1),
(22, 'Essential Words For The IELTS (Kèm 1 Đĩa CD)', '75000', 'Extensive practice in vocabulary building and correct English usage, with emphasis on 600 words that appear frequently on the IELTS.', '2012-03-31 00:00:00', '000022.jpg', 2, 7, 1),
(23, 'Tiếng Hàn Trong Giao Tiếp Hàng Ngày', '75000', 'Extensive practice in vocabulary building and correct English usage, with emphasis on 600 words that appear frequently on the IELTS.', '2012-03-31 00:00:00', '000023.jpg', 2, 8, 1),
(24, '80 Chiêu Thức Kinh Doanh Thành Công', '75000', 'Làm sao để nắm bắt và khai thác cơ hội kinh doanh hiệu quả nhất, doanh số tăng, lợi nhuận cao nhưng chi phí giảm? Làm sao để tạo được ấn tượng trong trí nhớ khách hàng? Làm sao để thị trường công nhận rằng bạn cung cấp các sản phẩm tốt nhất, có dịch vụ hậu mãi hoàn hảo nhất? Làm sao để tạo nên một tập thể nhân viên làm việc tích cực và sáng tạo?... Những câu hỏi đó luôn làm trăn trở các nhà quản trị doanh nghiệp, và bí mật sẽ được tiết lộ trong cuốn sách này', '2012-03-31 00:00:00', '000024.jpg', 6, 9, 1),
(25, 'Những Công Cụ Thiết Yếu Trong Phân Tích Kỹ Thuật Thị Trường Tài Chính ', '48000', 'Một cuốn sách nghiêm túc thiết thực, sự giới thiệu tuyệt vời về phát triển kỹ thuật. Chen mang lại cho những người mới bắt đầu những ví dụ rõ ràng về các phương pháp và kinh tế, từ đó người đọc có thể chọn ra một hướng chuyên môn hóa', '2012-03-31 00:00:00', '000025.jpg', 5, 10, 1),
(26, 'Nàng Lọ Lem Và Đàn Chuột Mất Tích', '75000', 'Những chú chuột nhỏ đã trải qua một đêm lạnh cóng trên gác mái của lâu đài, chúng tìm vào phòng Lọ Lem mong được sưởi ấm. ', '2012-03-31 00:00:00', '000026.jpg', 5, 11, 1),
(27, 'Công Chúa Aurora Và Chú Rồng Nhỏ', '48000', 'Hãy thử tưởng tượng xem mình sẽ làm gì nếu kết bạn với một chú rồng nhỏ? Chắc chắn sẽ có những điều rất thú vị phải không? Vậy công chúa Aurora đã làm những gì khi tình cờ gặp chú rồng nhỏ trên đường đi dạo cùng hoàng tử ?', '2012-03-31 00:00:00', '000027.jpg', 1, 12, 1),
(28, '3ds Max 2009 ', '48000', 'Bộ sách “Dựng Các Mô Hình Kiến Trúc Phức Tạp Và Mô Phỏng Nội Thất - Nại Thất 3D” được biên soạn nhằm mục đích hướng dẫn những bạn đọc yêu thích đồ họa 3D thực hiện dễ dàng với chương trình 3ds Max 2009 Pro. Đây là chương trình có nhiều tính năng thiết kế 3D tuyệt vời mà bạn có thể ứng dụng trong kiến trúc xây dựng và trang trí nội nại thất.', '2012-03-31 00:00:00', '000028.jpg', 1, 13, 1),
(29, 'Công Nghệ Mạng Máy Tính', '48000', 'Cuốn sách gồm các nội dung chính sau:', '2012-03-31 00:00:00', '000029.jpg', 1, 14, 1),
(30, 'Tính Toán Thiết Kế Kết Cấu Với SAP 14', '48000', 'Extensive practice in vocabulary building and correct English usage, with emphasis on 600 words that appear frequently on the IELTS.', '2012-03-31 00:00:00', '000030.jpg', 1, 15, 1),
(31, 'Revit Architecture 2011 Từ A Đến Z - Tập 2', '48000', 'Revit Architecture 2011 từ A đến Z (Tập 2) là 1 trong những chuyên đề thuộc họ sách CAD trong kiến trúc-xây dựng do nhà sách STK biên soạn dùng làm tài liệu tham khảo, chủ yếu là thực hành hướng dẫn sử dụng chương trình Revit Architecture đã và đang sử dụng rộng rãi trong các trường Cao đẳng, Đại học khối công nghệ chuyên ngành, cũng như tại các văn phòng thiết kế. Nó cung cấp cho học sinh, sinh viên, giáo viên, kiến trúc sư, họa viên những kiến thức và kỹ năng cơ bản nhất về ứng dụng CAD trong thiết kế kiến trúc.', '2012-03-31 00:00:00', '000031.jpg', 1, 1, 1),
(32, 'CoreIDraw X5 - Dành Cho Người Tự Học', '48000', 'Coreldraw X5 dành cho người tự học được biên soạn cho người mới bắt đầu sử dụng coreldraw trong thiết kế, học tập và nhiều hơn nữa. Quyển sách này được minh họa bằng hình ảnh cả lý thuyết lẫn thực hành sẽ giúp bạn dễ dàng tìm hiểu và khám phá các đặc tính của Coreldraw x5 để ứng dụng trong công việc thực tế và hiệu quả nhất.', '2012-03-31 00:00:00', '000032.jpg', 1, 2, 0),
(33, 'Chế Bản Điện Tử Với Ilustrator CS5', '15000', 'Sách cần thiết cho học sinh, sinh viên, những bạn đã biết hoặc chua từng tiếp xúc với chương trình Illustrator cũng như các giáo viên dạy thực hành tại các trung tâm chuyên đồ họa, multimedia, mỹ thuật công nghiệp ...', '2012-03-31 00:00:00', '000033.jpg', 1, 3, 0),
(34, 'Cẩm Nang Tin Học Văn Phòng', '15000', 'Với những tiến bộ của khoa học kỹ thuật, máy vi tính ra đời và được sử dụng trong khắp các văn phòng, công sở, gia đình... đã trở thành công cụ không thể thiếu đối với mỗi người', '2012-03-31 00:00:00', '000034.jpg', 1, 4, 0),
(35, 'Xử Lý Ảnh Photoshop CS5 Dành Cho Người Tự Học - Tập 1', '15000', 'Bộ sách được chia làm nhiều chuyên đề đi sâu vào từng tính năng quan trọng của Photoshop. Chuyên đề đâu tiên này sẽ tập trung trình bày cách tạo vùng chọn. Đây là phần cơ bản nhưng rất quan trọng sách khi sử dụng Photoshop. ', '2012-03-31 00:00:00', '000035.jpg', 1, 5, 0),
(36, '71 Kỹ Thuật Thâm Nhập Windows Vista Pro', '74000', '71 Kỹ Thuật Thâm Nhập Windows Vista Pro:', '2012-03-31 00:00:00', '000036.jpg', 1, 6, 0),
(37, 'Hướng Dẫn Học Từng Bước Excel 2010 Dành Cho Người Tự Học', '15000', 'Nội dung sách trình bày những kiến thức không quá sâu, nhằm phục vụ cho những người mới bắt đầu làm quen với điện toán văn phòng, đồng thời là tài liệu tham khảo để giảng dạy liên quan đến chương trình Excel.', '2012-03-31 00:00:00', '000037.jpg', 11, 7, 0),
(38, 'SQL Server 2005 - Xây Dựng Ứng Dụng Quản Lý Kế Toán Bằng C# 2005 ', '74000', 'Giáo trình bao gồm 10 chương và phần phụ lục tham khảo được nhấn mạnh xuyên suốt từ giao diện, hàm, phát biểu SQL động, phát biểu SQL phức tạp, phát biểu điều khiển, thủ tục nội tại, trigger, giúp cho bạn sử dụng chúng trong ứng dụng kế toán cùng với sự kết hợp hoàn hảo bằng ngôn ngữ lập trình C# 2005.', '2012-03-31 00:00:00', '000038.jpg', 1, 8, 0),
(39, 'Lập Trình Web Bằng ASP.Net Với Macromedia Dreamweaver MX - Tập 2', '74000', 'ASP.NET khác biệt rất nhiều so với các công nghệ Web đi trước. Macromedia Dreamweaver MX tuy vẫn duy trì sức mạnh của công cụ thiết kế trang nhã, nhưng đã chuyển từ công nghệ cổ điển sang ASP.NET bằng cách cung cấp nhiều công cụ đơn giản bớt quá trình tự động hoá ứng dụng Web. Nhờ kết hợp sức mạnh của ASP.NET với Dreamweaver, các nhà phát triển sẽ nắm bắt được ASP.NET chỉ trong nháy mắt.', '2012-03-31 00:00:00', '000039.jpg', 1, 9, 0),
(40, 'Tạo Website Hướng Database Bằng PHP Và MYSQL - Tập 2', '74000', 'Nội dung là yếu tố quyết định tất cả! Ừm… nghe thì hơi “kêu” thật, nhưng không thể nào đúng hơn. Chỉ cần nắm vững HTML và học thêm vài bí quyết cơ bản về JavaScript và Dynamic HTML là ta đã có thể thiết kế một Website đầy ấn tượng được rồi. Nhưng muốn thu hút một lượng fan đông đảo thì nội dung của Website phải mới mẻ và liên tục được cập nhật. Trong thiết kế Web truyền thống, nội dung được quyết định bở tập tin HTML…', '2012-03-31 00:00:00', '000040.jpg', 1, 10, 0),
(41, 'Tạo Bản Thuyết Trình Trong Microsoft Office PowerPoint 2007 For Windows', '74000', 'Tạo bản thuyết trình trong Microsoft Office PowerPoint 2007 for Windows mang lại cho bạn phương pháp nghiên cứu công nghệ mới độc đáo nhất từ trước đến nay. Thay vì làm nản lòng độc giả bằng những giải thích dông dài mang nặng tính lý thuyết, tập sách sử dụng hình ảnh minh họa đi kèm hướng dẫn cụ thể hầu giúp bạn hoàn thành dự án chỉ trong nháy mắt', '2012-03-31 00:00:00', '000041.jpg', 1, 11, 0),
(42, 'Shambhala - Vùng Đất Tây Tạng Huyền Bí Hay Cuộc Hành Trình Tìm Về Bản Thể', '74000', 'Tu viện Tashilumbo thuộc thành phố Phật giáo Shigatze, nằm ở miền Tây của Tây Tạng. Nơi đây, gió thường thổi xuyên qua các hành lang rải đầy đá, để lại những luồng không khí mát rượu giữa cái nóng dịu nhẹ của buổi chiều tà. Vào thời khắc này, người ta thường cảm thấy trào dâng niềm cảm xúc động khi ngắm nhìn những tia sáng chói lòa chiếu rọi qua cao nguyên Himalaya. Cảm xúc ấy càng trở nên mãnh liệt hơn khi mặt trời dần khuất bóng.Shambhala là bản kinh cổ xưa viết bằng tay, được lưu giữ tại Tu viện Tashilumbo. Kinh Shambhala miêu tả những noi như \"Hồ Độc Dược\", \"Hồ Ác Quỷ\" và cả hiện tượng quầng cực quang ở dãy núi Himalaya, khi \"Một trăm ngọn núi cùng phát sáng sau khi màn đêm buông xuống\". Tất cả những nơi này đều có thực. Chúng nằm ở Ngari, một vùng xa xôi hẻo lánh ở cực tây của Tây Tạng.Ở một góc độ khác, bản kinh không chỉ đơn thuần là một cuốn sách dẫn đường theo nghĩa đen nữa, nó còn có thể là một tấm bản đồ chỉ dẫn thiền định cho mỗi cá nhân trên con đường khám phá nội tâm của chính mình. Ở góc độ này, Kinh Shambhala mang ý nghĩa phức tạp hơn. Nó dạy chúng ta cách khống chế những năng lượng tiêu cực và chuyển hóa chúng thành năng lượng tiêu cực và chuyển hóa chúng thành năng lượng tích cực....', '2012-03-31 00:00:00', '000042.jpg', 3, 12, 0),
(43, 'Sức Mạnh Của Đạo Phật - Để Sống Tốt Hơn Trong Thế Giới Ngày Nay', '74000', 'Nói đến Đạo Phật là nói đến giác ngộ, chủ trương của Đạo Phật là giác ngộ. Đạo Phật có mặt trên thế giới đến nay là 2556 năm (tính đến thời điểm hiện tại năm 2008). ', '2012-03-31 00:00:00', '000043.jpg', 3, 13, 0),
(44, 'Điều Trị Bệnh Tận Gốc - Năng Lực Của Tâm Bi Mẫn ', '74000', '\"Điều trị bệnh tận gốc\" không chỉ là một cuốn sách với những lời cầu nguyện cho bệnh tật cơ thể được giảm bớt. Nội dung của cuốn sách này còn chứa đựng nhiều hơn thế nữa. Các phần lý thuyết và thực hành chứa đựng trong sách này có tác dụng dẫn dắt tâm chúng ta đến chỗ thấu hiểu sâu xa hơn về sự sống và cái chết, về vô thường và khổ đau. Sự thấu hiểu sâu sắc như thế sẽ cho phép chúng ta bắt đầu nhìn ngắm cơn đau và bệnh tật bằng một tầm nhìn bao quát hơn. Với tầm nhìn này thì khái niệm về nghiệp quả, về tái sinh và về phẩm chất của sự tái sinh, tát cả những khái niệm đó sẽ mang những ý nghĩa mới có năng lực làm dịu cơn đau và chữa lành tận gốc các căn bệnh của chúng ta', '2012-03-31 00:00:00', '000044.jpg', 3, 14, 0),
(45, 'Nhập Môn Windows Vista Tập 1', '32000', 'Nhập Môn Windows Vista - Tập 1 gồm những nôi dung sau:', '2012-03-31 00:00:00', '000045.jpg', 1, 15, 0),
(46, 'Hành Trình Tâm Linh Siêu Việt', '32000', 'Một cuốn sách của tác giả Gyalwang Drukpa, một bậc thầy về tâm linh, người đang dẫn dắt dòng truyền thừa Drukpa, một dòng truyền thừa với những hành giả thực hành tâm linh trải khắp Ấn Độ và các nước tại Châu Á, Châu Âu và Châu Mỹ. ', '2012-03-31 00:00:00', '000046.jpg', 3, 1, 0),
(47, 'Nghiệp Lực - Nhìn Lại Quá Khứ & Nhận Biết Tương Lai', '32000', 'Nỗi hoang mang bối rối của con người về nghiệp không khiến bà ngạc nhiên. Hỏi mười người ý nghĩa của từ này, bạn sẽ nhận được mười câu trả lời khác nhau. ', '2012-03-31 00:00:00', '000047.jpg', 3, 2, 0),
(48, 'Tỉnh Thức', '32000', '\"Con người còn luôn mãi khổ đau một khi chưa tỉnh thức.\"', '2012-03-31 00:00:00', '000048.jpg', 3, 3, 0),
(49, '13 Nguyên Tắc Nghĩ Giàu, Làm Giàu - Think And Grow Rich', '32000', '\"Think and Grow Rich - 13 nguyên tắc nghĩ giàu, làm giàu\" là cuốn sách \"chỉ dẫn\" duy nhất chỉ ra những nguồn lực bạn phải có để thành công. Cuốn sách sẽ giúp bạn trở nên giàu có, làm giàu thêm cho cuộc sống của bạn trên tất cả các phương diện của cuộc sống chứ không chỉ về tài chính và vật chất. Những ý tưởng trong sách \"Think and Grow Rich - 13 nguyên tắc nghĩ giàu, làm giàu\" bắt nguồn từ những động lực tốt đẹp: \"Thành công cá nhân\" và \"Quan điểm suy nghĩ tích cực\".', '2012-03-31 00:00:00', '000049.jpg', 6, 4, 0),
(50, 'Đạo Kỷ Nguyên Mới', '32000', '\"Think and Grow Rich - 13 nguyên tắc nghĩ giàu, làm giàu\" là cuốn sách \"chỉ dẫn\" duy nhất chỉ ra những nguồn lực bạn phải có để thành công. Cuốn sách sẽ giúp bạn trở nên giàu có, làm giàu thêm cho cuộc sống của bạn trên tất cả các phương diện của cuộc sống chứ không chỉ về tài chính và vật chất. Những ý tưởng trong sách \"Think and Grow Rich - 13 nguyên tắc nghĩ giàu, làm giàu\" bắt nguồn từ những động lực tốt đẹp: \"Thành công cá nhân\" và \"Quan điểm suy nghĩ tích cực\".', '2012-03-31 00:00:00', '000050.jpg', 3, 5, 0),
(51, 'The Power Of Compassion - Sức mạnh của lòng từ', '32000', 'Từ ngày 11 đến ngày 11 tháng 6 năm 2008 này, Đức Đạt Lai Lạt Ma sẽ viếng thăm Úc Châu, đây là chuyến thăm Úc lần thứ năm của Ngài để giảng dạy Phật Pháp. Mọi người đang trông đợi sự xuất hiện của ngài.', '2012-03-31 00:00:00', '000051.jpg', 3, 6, 0),
(52, 'Con Đường Mây Trắng - DER WEG DER WEISSEN WOLKE', '32000', 'Trong thế kỷ hai muơi này, phương Tây có hai người tìm hiểu đất nước Tây Tạng rất sâu sắc, đó là bà Alexandra David Nesel và ông Anagarika vinda. Cả hai vị này đã từng sống nhiều năm tại tây Tạng, từng tu tập thiền định và đi khắp nơi trong xứ sở huyền bí này hơn bất cứ người nước nài nào khác. Có thế nói họ hiểu tây Tạng với tất cả những khía cạnh tâm linh, tâm lý, địa lý nhiều hơn cả phần đông người tây Tạng.', '2012-03-31 00:00:00', '000052.jpg', 3, 7, 0),
(53, 'Đức Đạt Lai Lạt Ma Tại Harvard', '43000', 'Đức Đạt lai Lạt ma tại Harvard là một loạt bài thuyết giảng tại Đại Học Harvard do Viện nghiên cứu Phật học Hoa Kỳ (AIRS) và Trung tâm nghiên cứu các tôn giáo bảo trợ. Các bài thuyết giảng của Đức Đạt-lai-Lạt-ma, chủ yếu do giáo sư Robert Thurman sắp xếp, đã được thực hiện tại Giảng đường Emerson trong khuôn viên của Havard.', '2012-03-31 00:00:00', '000053.jpg', 3, 8, 0),
(54, 'Những Con Đường Của Ánh Sáng - Tập 1', '43000', 'Những Con Đường Của Ánh Sáng - Tập 1: Vật Lý Siêu Hình Học Của Ánh Sáng Và Bóng Tối (Tái Bản)', '2012-03-31 00:00:00', '000054.jpg', 7, 9, 0),
(55, 'Những Con Đường Của Ánh Sáng - Tập 2', '43000', 'Những con đường của ánh sáng được coi là bản sử thi về cuộc hành trình của con người đi vào vương quốc ánh sáng và giải mã những bí mật của nó. Và trong cuốn sách này tác giả đã thảo luận về ánh sáng, và liên qua tới nó là bóng tối, trên nhiều phương diện bao gồm tầm quan trọng của nó đối với sự sống, đối với khoa học, sự diễn giải ánh sáng của bộ não, nghệ thuật của các họa sĩ thuộc trường phái ấn tượng, việc sử dụng ánh sáng trong kiến trúc và các khía cạnh tâm linh của ánh sáng....', '2012-03-31 00:00:00', '000055.jpg', 7, 10, 0),
(56, 'Cái Vô Hạn Trong Lòng Bàn Tay (Từ Big Bang Đến Giác Ngộ)', '43000', 'Cái Vô Hạn Trong Lòng Bàn Tay (Từ Big Bang Đến Giác Ngộ):', '2012-03-31 00:00:00', '000056.jpg', 3, 11, 0),
(57, 'Nghệ Thuật Thiền Định', '43000', 'Nếu như học thiền là một con đường mà các bậc cao minh nhất đã theo đuổi trong suốt cuộc đời thì thực hành thiền trong cuộc sống hằng ngày sẽ làm thay đổi cách nhìn của chúng ta về chính bản thân mình và thế giới. Đó là thông điệp mà cuốn sách Nghệ thuật thiền định muốn gửi đến chúng ta. Cuốn sách vừa như người dẵn dắt cụ thể cho chúng ta cách thực hành thiền.', '2012-03-31 00:00:00', '000057.jpg', 3, 12, 0),
(58, 'Bàn Về Hạnh Phúc', '43000', 'Tất cả chúng ta đều khát khao hạnh phúc, song làm cách nào để có được, giữ gìn nó và thậm chí để định nghĩa nó? Trước câu hỏi mang đầy tính triết lý đang bị giằng xé giữa chủ nghĩa bi quan và thái độ giễu cợt trong tư tưởng phương Tây này, Matthieu Ricard đã mang lại lời giải đáp của đạo Phật: một câu trả lời rất khắt khe, song làm chúng ta yên lòng, lạc quan và ai cũng có thể chấp nhận được.', '2012-03-31 00:00:00', '000058.jpg', 3, 13, 0),
(59, 'Lượng tử hoa và se', '43000', 'Lưỡng Tử và Hoa Sen là sự khai phá mở rộng tri thức, tầm nhìn về những tương đương thú vị giữa tư tưởng sắc sảo về vật lý học và Phật giáo - một cuộc trò chuyện mà bất kỳ ai có suy nghĩ đều thích thú dù chỉ tình cờ nghe thấy.', '2012-03-31 00:00:00', '000059.jpg', 3, 14, 0),
(60, 'Đối Thoại Giữa Triết Học Và Phật Giáo', '43000', 'Dựa theo quan niệm cũ kỹ lâu đời, phương Tây hình dung Phật giáo như là một sự minh triết nhưng thụ động và tiêu cực, và xem Niết Bàn như là một sự quay về sống với nội tâm, không màng đến thế sự bên nài, kể cả sinh hoạt trong các thành phố.', '2012-03-31 00:00:00', '000060.jpg', 3, 15, 0),
(61, 'Phật giáo truyền thống Đại Thừa', '43000', '... Cái tâm cảm thấy mình gần gũi với tất cả mọi chúng sinh như thế chính là tâm từ vô thượng. Một người có được tình yêu này đối với tất cả hữu tình không phân biệt, thì không phải là một người thường. Chắc chắn một con người như vậy đang nắm giữ những thực chứng nội tâm trong tâm thức họ. Khi một người nào có được thứ tình yêu này gặp hoặc nhìn thấy người khác, thì một cảm giác hạnh phúc hồn nhiên sinh khởi. Một người như thế không bao giờ sinh tâm giận dữ hay ganh tị, và do hậu quả của điều này, mọi người sẽ trở thành bạn của vị ấy, có niềm kính trọng lớn lao đối với vị ấy. Một người thực tập tâm từ thuần tịnh thì kết quả cũng sẽ có nội tâm rất an bình', '2012-03-31 00:00:00', '000061.jpg', 3, 1, 0),
(62, 'Tình Yêu Phổ Quát', '43000', '...Tất cả chúng sinh đều có hạt giống Phật hay Phật tính. Phương pháp khiến cho hạt giống này nảy nở chính là thực hành những chỉ giáo về pháp luyện tâm. Những kinh nghiệm hay thực chứng trong pháp luyện tâm chính là con đường đến giác ngộ, bởi thế điểm thiết yếu là tất cả chúng sinh cần đạt được kinh nghiệm về pháp tu này. Kết thúc kinh Tiểu phẩm Bát-nhã, đức Phật đã dạy:', '2012-03-31 00:00:00', '000062.jpg', 3, 2, 0),
(63, 'Rộng Mở Tâm Hồn - Tu Tập Từ Bi Trong Đời Sống Hàng Ngày', '43000', 'Rộng Mở Tâm Hồn - Tu Tập Từ Bi Trong Đời Sống Hàng Ngày', '2012-03-31 00:00:00', '000063.jpg', 3, 3, 0),
(64, 'Cuộc Đời Là Vô Thường', '43000', 'Cuộc Đời Là Vô Thường', '2012-03-31 00:00:00', '000064.jpg', 3, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tacgia`
--

DROP TABLE IF EXISTS `tacgia`;
CREATE TABLE IF NOT EXISTS `tacgia` (
  `MaTacGia` int(50) NOT NULL AUTO_INCREMENT,
  `TenTG` varchar(100) CHARACTER SET utf8 NOT NULL,
  `DiaChi` varchar(250) CHARACTER SET utf8 NOT NULL,
  `TieuSu` text CHARACTER SET utf32 NOT NULL,
  `DienThoai` varchar(11) NOT NULL,
  PRIMARY KEY (`MaTacGia`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tacgia`
--

INSERT INTO `tacgia` (`MaTacGia`, `TenTG`, `DiaChi`, `TieuSu`, `DienThoai`) VALUES
(1, 'Tenzin Gyatso - Đức Đạt Lai Lạt Ma 14', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '1231231241'),
(2, 'Trịnh Xuân Thuận', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Trịnh Xuân Thuận (1948- ) là một khoa học gia người Mỹ gốc Việt trong lĩnh vực vật lý thiên văn, là một nhà văn đã viết nhiều quyển sách có giá trị cao về vũ trụ học và về những suy nghĩ của ông trong tương quan giữa khoa học và Phật giáo. Ông còn là một nhà thơ, một triết gia, một Phật tử và một nhà hoạt động cho môi trường và hòa bình. Ông đã nhận lãnh nhiều giải thưởng trong lĩnh vực thiên văn và trong lĩnh vực văn hoá xã hội.', '123456789'),
(3, 'Matthieu Ricard', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Matthieu-Ricard', '123456789'),
(4, 'Kyabje Khamtrul Rinpoche', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Kyabje-Khamtrul-Rinpoche', '123456789'),
(5, 'Đức Pháp Vương GYALWANG DRUKPA XII', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Kyabje-Khamtrul-Rinpoche', '123456789'),
(6, 'Nguyên Phong', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Kyabje-Khamtrul-Rinpoche', '123456789'),
(7, 'Lama Zopa Rinpoche', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Kyabje-Khamtrul-Rinpoche', '123456789'),
(8, 'Lama Anagarika vinda', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Kyabje-Khamtrul-Rinpoche', '123456789'),
(9, 'Ni sư Thích Nữ Trí Hải', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Phó viện trưởng viện Nghiên cứu Phật học Việt Nam', '123456789'),
(10, 'Ngọc Bích', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Kyabje-Khamtrul-Rinpoche', '123456789'),
(11, 'Quỳnh Nga', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Kyabje-Khamtrul-Rinpoche', '123456789'),
(12, 'Edward Peppitt', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Kyabje-Khamtrul-Rinpoche', '123456789'),
(13, 'Nhân Văn', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Kyabje-Khamtrul-Rinpoche', '123456789'),
(14, 'Blair T.Spalding', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Kyabje-Khamtrul-Rinpoche', '123456789'),
(15, 'FPT Polytechnic', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Kyabje-Khamtrul-Rinpoche', '123456789'),
(16, 'Upasika Kee Nanayo', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(17, 'Inamori Kazuo', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(18, 'Robin Lewis', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(19, 'Michael Dart', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(20, 'Mary T.Browne', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(21, 'Minh Đức', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(22, 'John C.Maxwell', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(23, 'Dr. Lin Lougheed, Ed.D', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(24, 'Đổ Thái Hòa', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(25, 'Barbara Bazaldua', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(26, 'Th.S Nguyễn Nam Thuận', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(27, 'Lê Thuận', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(28, 'Trần Tuấn Mẫn', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(29, 'Dr. Prashant Kakode', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(30, 'John Blofeld', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(31, 'Nguyễn Bá Tiến Luật', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(32, 'Vô Úy', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(33, 'Quang Hiển', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(34, 'Tường Thụy', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(35, 'Huyền Cơ', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(36, 'Phương Thảo', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(37, 'Tony Buza', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(38, 'Dale Carnegie ', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(39, 'Stephen P. Robbins .Timothy A. Judge', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(40, 'Vương Chí Cương', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(41, 'James Chen. Lê Đạt Chí', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(42, 'Th.S Nguyễn Công Minh', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(43, 'TS. Phạm Thế Quến', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(44, 'Phạm Quang Hiển', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(45, 'Phạm Hữu Khang', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(46, 'Laurence J. Brahm', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(47, 'Nguyễn Tường Bách', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(48, 'Thích Nguyên Tạng', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(49, 'Thanh Tâm', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(50, 'Trần Hà', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(51, 'Phan Lê Nhật Hý', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(52, 'Quang Huy', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(53, 'Geshe Kelsang Gyatso', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(54, 'Nguyễn Minh Tiến', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789'),
(55, 'Ngọc Cầm', '179 Chánh Hưng F.4 Q.8 Tp.HCM', 'Tenzin Gyatso, nói đủ là Jetsun Jamphel Ngawang Lobsang Yeshe Tenzin Gyatso, là pháp hiệu của Đức Đạt Lai Lạt Ma thứ 14 là vị đạo sư lãnh đạo tinh thần của người dân Tây Tạng và nhiều đạo tràng Phật Giáo trên thế giới. Đức Đạt Lai Lạt Ma là tước hiệu của vua Mông Cổ Altan Khan ban cho Lạt ma Sonam Gyatso vào năm 1578. Từ đó, “Đức Đạt Lai Lạt Ma” trở thành danh xưng cho vị Lạt ma cao nhất trong truyền thống Phật giáo Gelug (Mũ Vàng). Đạt Lai Lạt Ma (Dalai Lama) nghĩa là \"Người bảo vệ đức tin\" (Defender of the Faith), \"Biển lớn của trí tuệ\" (Ocean of Wisdom), \"Vua của Chánh Pháp\" (King of Dharma), “Viên bảo châu như ý” (Wishfulfilling Gem), “Hoa sen trắng” (White lotus) và Hóa thân Quan Âm (Kuan Yin Boddhisattva).', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `thamgia`
--

DROP TABLE IF EXISTS `thamgia`;
CREATE TABLE IF NOT EXISTS `thamgia` (
  `MaSach` int(50) NOT NULL,
  `MaTacGia` int(50) NOT NULL,
  `VaiTro` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Vitri` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`MaSach`,`MaTacGia`),
  KEY `MaTacGia` (`MaTacGia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thamgia`
--

INSERT INTO `thamgia` (`MaSach`, `MaTacGia`, `VaiTro`, `Vitri`) VALUES
(1, 33, 'Tác giả', '1'),
(1, 34, 'Tác giả', '2'),
(2, 51, 'Tác giả', '1'),
(3, 50, 'Tác giả', '1'),
(4, 38, 'Tác giả', '1'),
(5, 31, 'Chủ biên', '1'),
(5, 50, 'Tác giả', '2'),
(6, 26, 'Tác giả', '1'),
(7, 27, 'Tác giả', '1'),
(7, 49, 'Tác giả', '2'),
(7, 52, 'Tác giả', '3'),
(8, 49, 'Tác giả', '1'),
(9, 10, 'Tác giả', '1'),
(9, 11, 'Tác giả', '3'),
(9, 34, 'Tác giả', '2'),
(10, 10, 'Tác giả', '1'),
(10, 11, 'Tác giả', '2'),
(10, 34, 'Tác giả', '3'),
(11, 4, 'Tác giả', '1'),
(11, 32, 'Dịch giả', '2'),
(12, 12, 'Tác giả', '1'),
(12, 13, 'Dịch giả', '2'),
(13, 6, 'Tác giả', '2'),
(13, 30, 'Dịch giả', '1'),
(14, 6, 'Dịch giả', '2'),
(14, 14, 'Tác giả', '1'),
(15, 37, 'Dịch giả', '1'),
(16, 16, 'Chủ biên', '1'),
(17, 17, 'Tác giả', '1'),
(18, 18, 'Tác giả', '1'),
(18, 19, 'Tác giả', '1'),
(19, 25, 'Tác giả', '1'),
(20, 15, 'Dịch giả', '2'),
(20, 39, 'Tác giả', '1'),
(21, 22, 'Tác giả', '1'),
(22, 23, 'Tác giả', '1'),
(23, 24, 'Tác giả', '1'),
(24, 40, 'Tác giả', '1'),
(25, 41, 'Tác giả', '1'),
(26, 25, 'Tác giả', '1'),
(27, 25, 'Tác giả', '1'),
(28, 42, 'Tác giả', '1'),
(29, 43, 'Tác giả', '1'),
(30, 44, 'Tác giả', '1'),
(31, 49, 'Tác giả', '1'),
(31, 52, 'Tác giả', '1'),
(32, 27, 'Tác giả', '1'),
(32, 49, 'Tác giả', '1'),
(32, 52, 'Tác giả', '1'),
(33, 27, 'Tác giả', '1'),
(33, 49, 'Tác giả', '1'),
(33, 52, 'Tác giả', '1'),
(34, 27, 'Tác giả', '1'),
(34, 49, 'Tác giả', '1'),
(34, 52, 'Tác giả', '1'),
(35, 27, 'Tác giả', '1'),
(35, 49, 'Tác giả', '1'),
(35, 52, 'Tác giả', '1'),
(36, 36, 'Tác giả', '1'),
(37, 26, 'Tác giả', '1'),
(38, 45, 'Tác giả', '1'),
(39, 10, 'Tác giả', '1'),
(39, 34, 'Tác giả', '1'),
(40, 26, 'Tác giả', '1'),
(41, 26, 'Tác giả', '1'),
(42, 46, 'Tác giả', '1'),
(43, 1, 'Tác giả', '1'),
(44, 7, 'Tác giả', '1'),
(45, 46, 'Tác giả', '1'),
(46, 5, 'Tác giả', '1'),
(46, 21, 'Dịch giả', '2'),
(47, 20, 'Tác giả', '1'),
(47, 21, 'Dịch giả', '2'),
(48, 29, 'Tác giả', '1'),
(49, 35, 'Dịch giả', '1'),
(49, 36, 'Tác giả', '2'),
(50, 1, 'Tác giả', '1'),
(51, 1, 'Tác giả', '1'),
(51, 48, 'Dịch giả', '2'),
(52, 8, 'Tác giả', '1'),
(52, 47, 'Dịch giả', '2'),
(53, 1, 'Tác giả', '1'),
(53, 28, 'Dịch giả', '2'),
(54, 2, 'Tác giả', '1'),
(55, 2, 'Tác giả', '2'),
(56, 2, 'Tác giả', '1'),
(56, 3, 'Tác giả', '1'),
(57, 3, 'Tác giả', '2'),
(58, 3, 'Tác giả', '1'),
(59, 3, 'Tác giả', '1'),
(60, 3, 'Tác giả', '1'),
(61, 9, 'Dịch giả', '1'),
(61, 53, 'Tác giả', '1'),
(62, 9, 'Dịch giả', '2'),
(62, 53, 'Tác giả', '1'),
(63, 1, 'Tác giả', '2'),
(63, 35, 'Dịch giả', '2'),
(63, 54, 'Dịch giả', '3'),
(63, 55, 'Tác giả', '2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
