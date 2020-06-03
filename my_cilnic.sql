-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2020 at 07:39 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_cilnic`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `app_id` int(10) NOT NULL,
  `app_date` int(10) NOT NULL,
  `app_time` date NOT NULL,
  `app_detail` varchar(300) NOT NULL,
  `user_name` int(20) NOT NULL,
  `serv_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='นัดหมาย';

-- --------------------------------------------------------

--
-- Table structure for table `been paid`
--

CREATE TABLE `been paid` (
  `been_id` int(10) NOT NULL,
  `sevr_id` int(10) NOT NULL,
  `pres_id` int(10) NOT NULL,
  `user_name` int(20) NOT NULL,
  `dregs_id` int(10) NOT NULL,
  `material_id` int(10) NOT NULL,
  `been_date` date NOT NULL,
  `been_ser` int(10) NOT NULL,
  `been_drugs` int(10) NOT NULL,
  `been_tatal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='การชำระเงิน';

-- --------------------------------------------------------

--
-- Table structure for table `dentist`
--

CREATE TABLE `dentist` (
  `user_name` int(20) NOT NULL,
  `dent_name` varchar(50) NOT NULL,
  `dent_lastname` varchar(50) NOT NULL,
  `dent_address` varchar(150) NOT NULL,
  `dent_tel` int(15) NOT NULL,
  `dent_sex` varchar(10) NOT NULL,
  `dent_age` int(5) NOT NULL,
  `dent_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ตารางทันตแพทย์';

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `drugs_id` int(10) NOT NULL,
  `drugs_name` varchar(50) NOT NULL,
  `drugs_datail` varchar(300) NOT NULL,
  `dt_id` int(10) NOT NULL,
  `produc_date` date NOT NULL,
  `end_date` date NOT NULL,
  `price_unit` int(10) NOT NULL,
  `drugs_prop` varchar(300) NOT NULL,
  `drugs_balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ข้อมูลยาเวชภัณฑ์';

-- --------------------------------------------------------

--
-- Table structure for table `drugs type`
--

CREATE TABLE `drugs type` (
  `dt_id` int(10) NOT NULL,
  `dt_name` varchar(50) NOT NULL,
  `dt_detail` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drugs type`
--

INSERT INTO `drugs type` (`dt_id`, `dt_name`, `dt_detail`) VALUES
(1, 'ยาใช้ภายนอก', 'ยาที่เอาใช้ท่าภายนอก ห้ามรับประทานโดยเด็ดขาด'),
(2, 'ยาใช้ภายใน', 'ยาที่รับประทาน');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `user_name` int(20) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_lastname` varchar(50) NOT NULL,
  `emp_address` varchar(150) NOT NULL,
  `emp_tel` int(15) NOT NULL,
  `emp_sex` varchar(10) NOT NULL,
  `emp_age` int(5) NOT NULL,
  `dent_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ตารางพนักงาน';

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ตารางเข้าสู่ระบบ';

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_name`, `password`, `level`) VALUES
('amin01', '1234', 'พนักงาน'),
('d1', '1234', 'ทันตแพทย์');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `material_id` int(10) NOT NULL,
  `material_name` varchar(50) NOT NULL,
  `material_detail` varchar(300) NOT NULL,
  `mt_id` int(10) NOT NULL,
  `price_unit` int(10) NOT NULL,
  `material_balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='วัสดุ';

-- --------------------------------------------------------

--
-- Table structure for table `material type`
--

CREATE TABLE `material type` (
  `mt_id` int(10) NOT NULL,
  `mt_name` varchar(50) NOT NULL,
  `mt_detail` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ประเภทวัสดุ';

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `user_name` int(20) NOT NULL,
  `memb_name` varchar(50) NOT NULL,
  `memb_lastname` varchar(50) NOT NULL,
  `memb_sex` varchar(5) NOT NULL,
  `memb_age` int(5) NOT NULL,
  `memb_blood` varchar(10) NOT NULL COMMENT 'กรุ๊ดเลือด',
  `memd_id_card` int(13) NOT NULL,
  `memd_birth` varchar(10) NOT NULL,
  `memb_address` varchar(50) NOT NULL,
  `memb_tel` int(20) NOT NULL,
  `memb_diseased` varchar(50) NOT NULL COMMENT 'โรค',
  `memb_drug_allergy` varchar(50) NOT NULL COMMENT 'แพ้ยา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prescribing`
--

CREATE TABLE `prescribing` (
  `pres_id` int(10) NOT NULL,
  `serv_id` int(10) NOT NULL,
  `pres_date` date NOT NULL,
  `user_name` int(20) NOT NULL,
  `prse_tatal_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='การสั่งจ่ายยา';

-- --------------------------------------------------------

--
-- Table structure for table `prescribing detail`
--

CREATE TABLE `prescribing detail` (
  `pres_id` int(10) NOT NULL,
  `drugs_id` int(10) NOT NULL,
  `price_unit` int(10) NOT NULL,
  `material_balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='รายละเอียดการสั่งจ่ายยา';

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `serv_id` int(10) NOT NULL,
  `user_name` int(20) NOT NULL,
  `treat_id` int(10) NOT NULL,
  `serv_date` date NOT NULL,
  `serv_detail` varchar(300) NOT NULL,
  `serv_waigth` float NOT NULL,
  `serv_hight` float NOT NULL,
  `serv_ph` float NOT NULL,
  `serv_presick` varchar(100) NOT NULL,
  `serv_z` int(10) NOT NULL,
  `serv_nettotal` int(10) NOT NULL COMMENT 'ยอดสุทธิ',
  `pres_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='การตรวจรักษา';

-- --------------------------------------------------------

--
-- Table structure for table `treatment type`
--

CREATE TABLE `treatment type` (
  `treat_id` int(10) NOT NULL,
  `treat_name` varchar(50) NOT NULL,
  `treat_detail` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ประเภทการรักษา';

--
-- Dumping data for table `treatment type`
--

INSERT INTO `treatment type` (`treat_id`, `treat_name`, `treat_detail`) VALUES
(1, 'การถอนฟัน', 'การผ่าหรือถอนฟันคุดซึ่งเป็นฟันที่ยังไม่โผล่พ้นเหงือกหรือขึ้นไม่ปกติ '),
(2, 'การอุดฟัน', 'การรักษาฟันที่ถูกทำลายจากฟันผุจนเป็นโพรงหรือรู '),
(3, 'การรักษารากฟัน', 'การกำจัดเนื้อเยื่อในโพรงฟันและคลองรากฟันที่มีการติดเชื้อ และอักเสบ \r\n\r\n'),
(4, 'ขูดหินปูนขจัดคราบบนผิวฟัน', 'การกำจัดคราบหินปูนที่เกาะอยู่ตามบริเวณฟันและซอกฟัน ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `been paid`
--
ALTER TABLE `been paid`
  ADD PRIMARY KEY (`been_id`);

--
-- Indexes for table `dentist`
--
ALTER TABLE `dentist`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`drugs_id`);

--
-- Indexes for table `drugs type`
--
ALTER TABLE `drugs type`
  ADD PRIMARY KEY (`dt_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `material type`
--
ALTER TABLE `material type`
  ADD PRIMARY KEY (`mt_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `prescribing`
--
ALTER TABLE `prescribing`
  ADD PRIMARY KEY (`pres_id`);

--
-- Indexes for table `prescribing detail`
--
ALTER TABLE `prescribing detail`
  ADD PRIMARY KEY (`pres_id`);

--
-- Indexes for table `treatment type`
--
ALTER TABLE `treatment type`
  ADD PRIMARY KEY (`treat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `app_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `been paid`
--
ALTER TABLE `been paid`
  MODIFY `been_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dentist`
--
ALTER TABLE `dentist`
  MODIFY `user_name` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `drugs_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drugs type`
--
ALTER TABLE `drugs type`
  MODIFY `dt_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `user_name` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `material_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `material type`
--
ALTER TABLE `material type`
  MODIFY `mt_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `user_name` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescribing`
--
ALTER TABLE `prescribing`
  MODIFY `pres_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescribing detail`
--
ALTER TABLE `prescribing detail`
  MODIFY `pres_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treatment type`
--
ALTER TABLE `treatment type`
  MODIFY `treat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
