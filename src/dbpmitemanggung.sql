/*
SQLyog Community v12.2.0 (64 bit)
MySQL - 10.1.13-MariaDB : Database - pmitemanggung
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pmitemanggung` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pmitemanggung`;

/*Table structure for table `aftap` */

DROP TABLE IF EXISTS `aftap`;

CREATE TABLE `aftap` (
  `aftapId` int(11) NOT NULL AUTO_INCREMENT,
  `aftapNoKantong` varchar(15) DEFAULT NULL,
  `aftapTanggal` date DEFAULT NULL,
  `aftapStatusAmbil` enum('Lancar','Tidak Lancar','Gagal') DEFAULT NULL,
  `aftapReaksi` varchar(20) DEFAULT NULL,
  `aftapStatusDonor` enum('Sukarela','Pengganti') DEFAULT NULL,
  `komponen` varchar(15) DEFAULT '',
  `isStatus` enum('0','1') DEFAULT NULL,
  `comVolumeKantongId` int(11) DEFAULT NULL,
  `pendonorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`aftapId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `aftap` */

insert  into `aftap`(`aftapId`,`aftapNoKantong`,`aftapTanggal`,`aftapStatusAmbil`,`aftapReaksi`,`aftapStatusDonor`,`komponen`,`isStatus`,`comVolumeKantongId`,`pendonorId`) values 
(1,'N0102900','2016-03-10','Lancar','-',NULL,'',NULL,1,1),
(2,'K9283023','2016-04-11','Lancar','-',NULL,'',NULL,1,1),
(3,'B0920309','2016-05-12','Lancar','-',NULL,'',NULL,1,2),
(4,'Y2093090','2016-08-13','Lancar','-',NULL,'',NULL,1,2),
(5,'K9283023','2016-09-09','Lancar','-',NULL,'',NULL,1,3),
(6,'H8210209','2016-09-15','Lancar','-',NULL,'',NULL,1,3),
(7,NULL,'2016-09-14','Lancar','-',NULL,'',NULL,1,1),
(8,'volumekantongs','2016-09-14','Lancar','-',NULL,'',NULL,1,1),
(9,'U2983293','2016-09-15','Lancar','-',NULL,'',NULL,1,1);

/*Table structure for table `comgolongandarah` */

DROP TABLE IF EXISTS `comgolongandarah`;

CREATE TABLE `comgolongandarah` (
  `comGolonganDarahId` int(5) NOT NULL AUTO_INCREMENT,
  `comGolonganDarahName` varchar(20) NOT NULL,
  `comGolonganDarahDesc` varchar(20) NOT NULL,
  PRIMARY KEY (`comGolonganDarahId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `comgolongandarah` */

insert  into `comgolongandarah`(`comGolonganDarahId`,`comGolonganDarahName`,`comGolonganDarahDesc`) values 
(1,'B','B'),
(2,'AB','AB'),
(3,'O','O'),
(4,'A','A');

/*Table structure for table `comjaminan` */

DROP TABLE IF EXISTS `comjaminan`;

CREATE TABLE `comjaminan` (
  `comJaminanId` int(5) NOT NULL AUTO_INCREMENT,
  `comJaminanName` varchar(20) NOT NULL,
  `comJaminanDesc` varchar(20) NOT NULL,
  PRIMARY KEY (`comJaminanId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `comjaminan` */

insert  into `comjaminan`(`comJaminanId`,`comJaminanName`,`comJaminanDesc`) values 
(2,'BPJS','BPJS'),
(3,'UMUM','UMUM');

/*Table structure for table `comkecamatan` */

DROP TABLE IF EXISTS `comkecamatan`;

CREATE TABLE `comkecamatan` (
  `comKecamatanId` int(5) NOT NULL AUTO_INCREMENT,
  `comKecamatanName` varchar(25) NOT NULL,
  `comKecamatanDesc` varchar(30) NOT NULL,
  PRIMARY KEY (`comKecamatanId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comkecamatan` */

/*Table structure for table `comkomponendarah` */

DROP TABLE IF EXISTS `comkomponendarah`;

CREATE TABLE `comkomponendarah` (
  `comKomponenDarahId` int(5) NOT NULL AUTO_INCREMENT,
  `comKomponenDarahName` varchar(20) NOT NULL,
  `comKomponenDarahDesc` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`comKomponenDarahId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `comkomponendarah` */

insert  into `comkomponendarah`(`comKomponenDarahId`,`comKomponenDarahName`,`comKomponenDarahDesc`) values 
(1,'PRC','Packed Red Cell'),
(2,'WB','Whole Blood '),
(3,'LP','Lekursit'),
(4,'TB','Trombosit'),
(5,'TC','Thrombocyte Concentr'),
(6,'PLS','Plasma');

/*Table structure for table `compekerjaan` */

DROP TABLE IF EXISTS `compekerjaan`;

CREATE TABLE `compekerjaan` (
  `comPekerjaanId` int(11) NOT NULL AUTO_INCREMENT,
  `comPekerjaanName` varchar(20) DEFAULT NULL,
  `comPekerjaanDesc` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`comPekerjaanId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `compekerjaan` */

insert  into `compekerjaan`(`comPekerjaanId`,`comPekerjaanName`,`comPekerjaanDesc`) values 
(1,'Wiraswasta','Wiraswasta'),
(2,'Guru','Guru');

/*Table structure for table `comvolumekantong` */

DROP TABLE IF EXISTS `comvolumekantong`;

CREATE TABLE `comvolumekantong` (
  `comVolumeKantongId` int(5) NOT NULL AUTO_INCREMENT,
  `comVolumeKantongName` varchar(20) NOT NULL,
  `comVolumeKantongDesc` varchar(20) NOT NULL,
  PRIMARY KEY (`comVolumeKantongId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `comvolumekantong` */

insert  into `comvolumekantong`(`comVolumeKantongId`,`comVolumeKantongName`,`comVolumeKantongDesc`) values 
(1,'250CC','250CC'),
(2,'300CC','300CC');

/*Table structure for table `crossmatch` */

DROP TABLE IF EXISTS `crossmatch`;

CREATE TABLE `crossmatch` (
  `crossMatchId` int(11) NOT NULL AUTO_INCREMENT,
  `crossMatchNo` varchar(20) DEFAULT NULL,
  `crossMatchDate` varchar(20) DEFAULT NULL,
  `crossMatchResult` enum('Match','Not Match') DEFAULT NULL,
  `aftapId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`crossMatchId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `crossmatch` */

insert  into `crossmatch`(`crossMatchId`,`crossMatchNo`,`crossMatchDate`,`crossMatchResult`,`aftapId`,`orderId`) values 
(1,'000001','2016-10-03','Match',1,2);

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `FULL_NAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  PRIMARY KEY (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

/*Table structure for table `detail_minta` */

DROP TABLE IF EXISTS `detail_minta`;

CREATE TABLE `detail_minta` (
  `id_minta` int(10) NOT NULL,
  `id_kantong` varchar(10) NOT NULL,
  `harga` int(20) DEFAULT '250000',
  `penerima` varchar(30) DEFAULT NULL,
  `tgl_diambil` date DEFAULT NULL,
  `stat_ambil` enum('1','0') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_minta`,`id_kantong`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detail_minta` */

insert  into `detail_minta`(`id_minta`,`id_kantong`,`harga`,`penerima`,`tgl_diambil`,`stat_ambil`) values 
(1,'RT',250000,'-','2014-03-02','1'),
(2,'RT00125',250000,'Siti','2014-01-18','1'),
(2,'YU04959',250000,'siti','2014-01-18','1'),
(3,'KL9887',250000,'budi','2014-01-18','1'),
(6,'HK091HK',250000,'Tumini','2014-02-08','1'),
(16,'G9099188',250000,'Bejo','2014-03-06','1'),
(16,'RT 001 259',250000,'rini','2014-03-04','1'),
(17,'G5125444',250000,'Tumini','2014-03-06','1'),
(20,'GH98292',250000,'budi','2014-06-29','1'),
(21,'GH0209300',250000,'Bagus','2014-03-26','1'),
(22,'IU92389',250000,'Joko','2014-03-29','1');

/*Table structure for table `docter` */

DROP TABLE IF EXISTS `docter`;

CREATE TABLE `docter` (
  `docterId` int(5) NOT NULL AUTO_INCREMENT,
  `docterName` varchar(30) NOT NULL DEFAULT '',
  `docterAddress` varchar(40) NOT NULL DEFAULT '',
  `docterTelp` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`docterId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `docter` */

insert  into `docter`(`docterId`,`docterName`,`docterAddress`,`docterTelp`) values 
(1,'Dini','Tmg','08567'),
(3,'adhii','magelang','028302930293'),
(4,'adhiiiii','mgl',NULL),
(5,'Nugroho','Magelang',NULL),
(6,'adhiiiiivvvv','mgl',NULL),
(11,'Test','Test','0091090129012'),
(12,'njirrr','Lalalala','99911'),
(13,'coba','coba','9019201290129'),
(15,'coba','coba','9019201290129'),
(16,'adhiiiiivvvv','Test','11111111111111111'),
(17,'adhii','asasas','2222222'),
(18,'Test','Magelang','3333333333333'),
(19,'indra','sleman','085228078023'),
(20,'Gabriel Indra','Sleman, Yogyakarta','085228078023'),
(21,'dr. Susilawati ','Semarang, Jawa Tengah','0867778961231'),
(22,'Martin','Sleman','23748392');

/*Table structure for table `hospital` */

DROP TABLE IF EXISTS `hospital`;

CREATE TABLE `hospital` (
  `hospitalId` int(5) NOT NULL AUTO_INCREMENT,
  `hospitalName` varchar(40) DEFAULT NULL,
  `hospitalAlamat` varchar(60) DEFAULT NULL,
  `hospitalTelp` varchar(30) DEFAULT NULL,
  `hospitalLokasi` varchar(50) DEFAULT NULL,
  `hospitalUsername` varchar(30) DEFAULT NULL,
  `hospitalPassword` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`hospitalId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `hospital` */

insert  into `hospital`(`hospitalId`,`hospitalName`,`hospitalAlamat`,`hospitalTelp`,`hospitalLokasi`,`hospitalUsername`,`hospitalPassword`) values 
(1,'Ngesti Waluyo','Magelang','0803203923','mgl','ngesti','waluyo'),
(2,'RSU','Temanggung','0802382002','tmg','rsu','a');

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `keterangan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `kategori` */

insert  into `kategori`(`id_kategori`,`nama_kategori`,`keterangan`) values 
(1,'Politik','Berita-berita Mengenai Politik'),
(2,'Ekonomi','Berita-berita Mengenai Ekonomi'),
(3,'Teknologi','Berita-berita Mengenai Teknologi'),
(4,'Olahraga','Berita-berita Mengenai Olahraga'),
(5,'Kriminal','Berita-berita Mengenai Kriminal'),
(6,'Kesehatan','Berita-berita Mengenai Kesehatan'),
(7,'Hiburan','Berita-berita Mengenai Hiburan');

/*Table structure for table `komponen` */

DROP TABLE IF EXISTS `komponen`;

CREATE TABLE `komponen` (
  `komponenId` int(11) NOT NULL AUTO_INCREMENT,
  `komponenNo` varchar(10) DEFAULT NULL,
  `komponenTanggal` date DEFAULT NULL,
  `comKomponenDarahId` int(11) DEFAULT NULL,
  `aftapId` int(11) DEFAULT NULL,
  PRIMARY KEY (`komponenId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `komponen` */

insert  into `komponen`(`komponenId`,`komponenNo`,`komponenTanggal`,`comKomponenDarahId`,`aftapId`) values 
(1,'K00001','2016-09-22',1,1),
(2,'','2016-09-23',1,3),
(3,'','2016-09-23',1,3),
(4,'K00004','2016-10-09',2,3);

/*Table structure for table `masterpesan` */

DROP TABLE IF EXISTS `masterpesan`;

CREATE TABLE `masterpesan` (
  `id_pesan` int(10) NOT NULL AUTO_INCREMENT,
  `id_rs` varchar(10) DEFAULT NULL,
  `tgl_minta` varchar(20) DEFAULT NULL,
  `tgl_digunakan` varchar(20) DEFAULT NULL,
  `status` enum('belum diambil','sudah diambil','diambil sebagian') DEFAULT NULL,
  `jml_permintaan` int(10) DEFAULT NULL,
  `jml_diambil` int(10) DEFAULT NULL,
  `penerima` varchar(30) DEFAULT '-',
  `keterangan` varchar(30) DEFAULT 'belum dapat',
  PRIMARY KEY (`id_pesan`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

/*Data for the table `masterpesan` */

insert  into `masterpesan`(`id_pesan`,`id_rs`,`tgl_minta`,`tgl_digunakan`,`status`,`jml_permintaan`,`jml_diambil`,`penerima`,`keterangan`) values 
(1,'2','13/02/2012','13/02/2012','sudah diambil',2,NULL,'tono','dapat'),
(2,'3','28/02/2012','28/02/2012','belum diambil',3,NULL,'-','dapat'),
(3,'4','03/03/2012','03/03/2012','sudah diambil',2,NULL,'tinu','dapat'),
(10,'1','12/03/2012','12/03/2012','sudah diambil',2,NULL,'bejo','dapat'),
(15,'1','04/04/2012','04/04/2012','belum diambil',2,NULL,NULL,'dapat'),
(17,'1','04/04/2012','04/04/2012','sudah diambil',2,NULL,'tanu','dapat'),
(19,'1','05/04/2012','05/04/2012','sudah diambil',2,NULL,'tena','belum dapat'),
(20,'2','18/04/2012','18/04/2012','sudah diambil',2,NULL,'teni','belum dapat'),
(21,'1','06/04/2012','06/04/2012','belum diambil',2,NULL,NULL,'belum dapat'),
(22,'1','06/04/2012','06/04/2012','sudah diambil',3,NULL,'tene','belum dapat'),
(23,'1','06/04/2012','07/04/2012','belum diambil',1,NULL,NULL,'belum dapat'),
(24,'1','11/05/2012','11/05/2012',NULL,2,NULL,NULL,'belum dapat'),
(25,'1','11/05/2012','11/05/2012',NULL,2,NULL,NULL,'belum dapat'),
(26,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(27,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(28,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(29,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(30,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(31,'1','11/05/2012','11/05/2012','belum diambil',1,NULL,'-','belum dapat'),
(32,'1','11/05/2012','11/05/2012','belum diambil',3,NULL,'-','belum dapat'),
(33,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(34,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(35,'1','11/05/2012','11/05/2012','belum diambil',5,NULL,'-','belum dapat'),
(36,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(37,'1','11/05/2012','11/05/2012','belum diambil',1,NULL,'-','belum dapat'),
(39,'1','14/05/2012','14/05/2012','belum diambil',3,NULL,'-','belum dapat'),
(40,'1','16/05/2012','16/05/2012','belum diambil',5,NULL,'-','belum dapat'),
(41,'1','16/05/2012','16/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(42,'1','16/05/2012','16/05/2012','belum diambil',3,NULL,'-','belum dapat'),
(43,'1','16/05/2012','16/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(44,'1','16/05/2012','16/05/2012','belum diambil',1,NULL,'-','belum dapat'),
(45,'1','16/05/2012','16/05/2012','belum diambil',3,NULL,'-','belum dapat'),
(46,'1','16/05/2012','16/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(47,'1','16/05/2012','16/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(48,'1','16/05/2012','16/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(49,'1','16/05/2012','16/05/2012','belum diambil',1,NULL,'-','belum dapat'),
(50,'1','19/05/2012','19/05/2012','belum diambil',3,NULL,'-','belum dapat'),
(51,'1','19/05/2012','19/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(52,'1','19/05/2012','19/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(53,'1','19/05/2012','19/05/2012','belum diambil',1,NULL,'-','belum dapat'),
(54,'1','19/05/2012','19/05/2012','belum diambil',1,NULL,'-','belum dapat'),
(55,'1','19/05/2012','19/05/2012','belum diambil',1,NULL,'-','belum dapat'),
(56,'1','22/05/2012','22/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(57,'1','22/05/2012','22/05/2012','belum diambil',1,NULL,'-','belum dapat'),
(58,'1','22/05/2012','22/05/2012','belum diambil',5,NULL,'-','belum dapat'),
(59,'1','22/05/2012','22/05/2012','belum diambil',5,NULL,'-','belum dapat'),
(60,'1','22/05/2012','22/05/2012','belum diambil',1,NULL,'-','belum dapat'),
(61,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(62,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(63,'1','23/05/2012','23/05/2012','belum diambil',1,NULL,'-','belum dapat'),
(64,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(65,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(66,'1','23/05/2012','23/05/2012','belum diambil',3,NULL,'-','belum dapat'),
(67,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(68,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(69,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(70,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(71,'1','23/05/2012','23/05/2012','belum diambil',3,NULL,'-','belum dapat'),
(72,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),
(73,'1','24/07/2013','24/07/2013','belum diambil',2,NULL,'-','dapat'),
(74,'20','25/07/2013','25/07/2013','sudah diambil',1,NULL,'Narji','dapat'),
(75,'1','25/07/2013','25/07/2013','belum diambil',1,NULL,'-','belum dapat'),
(76,'2','25/07/2013','25/07/2013','belum diambil',1,NULL,'-','belum dapat'),
(77,'20','25/07/2013','25/07/2013','belum diambil',1,NULL,'-','belum dapat'),
(78,'20','25/07/2013','25/07/2013','belum diambil',1,NULL,'-','dapat');

/*Table structure for table `pasien` */

DROP TABLE IF EXISTS `pasien`;

CREATE TABLE `pasien` (
  `pasienId` int(5) NOT NULL AUTO_INCREMENT,
  `pasienNo` varchar(20) DEFAULT '',
  `pasienName` varchar(30) DEFAULT '',
  `pasienAddress` varchar(70) DEFAULT '',
  PRIMARY KEY (`pasienId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pasien` */

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `patientId` int(5) NOT NULL AUTO_INCREMENT,
  `patientNo` varchar(20) DEFAULT '',
  `patientName` varchar(30) DEFAULT '',
  `patientAddress` varchar(70) DEFAULT '',
  `comGolonganDarahId` int(11) DEFAULT NULL,
  PRIMARY KEY (`patientId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `patient` */

insert  into `patient`(`patientId`,`patientNo`,`patientName`,`patientAddress`,`comGolonganDarahId`) values 
(1,'P01','Budi','Magelang',2),
(2,'P02','Tono','Temanggung',3),
(3,'P03','Test','mgl',2),
(4,'P04','Joko','Magelang',3),
(5,'P05','hoho','Magelang',2),
(6,'P06','Coba','Mgl',3),
(7,'P07','Rusdi','sleman',3),
(8,'P08','Martin Nugraha','Sleman',2),
(9,'P09','Mister  bono','mgl',3),
(10,'P10','Raden Mas Dewandaru','Muntilan',2),
(11,'P11','Gagarin Nugraha Adi','Maguwoharjo',4),
(12,'P12','Suharho','Temanggung',2);

/*Table structure for table `pendonor` */

DROP TABLE IF EXISTS `pendonor`;

CREATE TABLE `pendonor` (
  `pendonorId` int(11) NOT NULL AUTO_INCREMENT,
  `pendonorNo` varchar(10) DEFAULT NULL,
  `pendonorName` varchar(50) DEFAULT NULL,
  `NomorKTP` varchar(20) DEFAULT NULL,
  `pendonorGender` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `pendonorAddress` longtext,
  `pendonorBirthPlace` varchar(15) DEFAULT NULL,
  `pendonorBirthDate` date DEFAULT NULL,
  `pendonorTelp` varchar(20) DEFAULT NULL,
  `pendonorEmail` varchar(30) DEFAULT NULL,
  `pendonorPassword` varchar(30) DEFAULT NULL,
  `comPekerjaanId` int(11) DEFAULT NULL,
  `comGolonganDarahId` int(11) DEFAULT NULL,
  PRIMARY KEY (`pendonorId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `pendonor` */

insert  into `pendonor`(`pendonorId`,`pendonorNo`,`pendonorName`,`NomorKTP`,`pendonorGender`,`pendonorAddress`,`pendonorBirthPlace`,`pendonorBirthDate`,`pendonorTelp`,`pendonorEmail`,`pendonorPassword`,`comPekerjaanId`,`comGolonganDarahId`) values 
(1,'P00001','Adhi Nugroho','160002737263','Laki-laki','Magelang','Yogyakarta','2017-12-05','(010) 290-1920','adhi@yahoo.com','-',1,2),
(2,'P00002','Adhi','17665321456','Laki-laki','mgl','Magelang','2018-01-04','(086) 543-3333','adhi@yahoo.co.id','ggggggg',1,4),
(3,'P00003','Nugroho','14376512332','Laki-laki','Mgl','Magelang','2017-12-12','(029) 302-3902','adhi@yahoo.co.id','09090909',1,2),
(4,'P00004','Yanto',NULL,'Laki-laki','Temanggung','Magelang','2017-12-04','(088) 809-0909','adhi@yahoo.co.id','000000000',1,4),
(5,NULL,'Martin',NULL,'Laki-laki','Sleman','Sleman','2017-12-12','(123) 456-7890','hh@gmail.com','hhhh',1,5),
(7,'PEN02','Indro','2012312312312','Perempuan','SLem','Sleman','1995-01-01','0812321312',NULL,NULL,2,2);

/*Table structure for table `periksa` */

DROP TABLE IF EXISTS `periksa`;

CREATE TABLE `periksa` (
  `periksaId` int(5) NOT NULL AUTO_INCREMENT,
  `periksaTanggal` date DEFAULT NULL,
  `periksaTensi` varchar(10) DEFAULT NULL,
  `periksaSuhu` varchar(7) DEFAULT NULL,
  `periksaBeratBadan` varchar(5) DEFAULT NULL,
  `periksaRiwayatMedis` varchar(50) DEFAULT NULL,
  `periksaKeputusan` enum('Lolos','Tidak Lolos') DEFAULT NULL,
  `periksaAlasan` varchar(50) DEFAULT NULL,
  `pendonorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`periksaId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `periksa` */

insert  into `periksa`(`periksaId`,`periksaTanggal`,`periksaTensi`,`periksaSuhu`,`periksaBeratBadan`,`periksaRiwayatMedis`,`periksaKeputusan`,`periksaAlasan`,`pendonorId`) values 
(1,'2016-09-23','100','37','70','-','Lolos','-',1),
(4,'2016-10-12','100','100','100','-','Lolos','-',3),
(6,'2016-10-13','-','37','70','-','Lolos','-',1),
(7,'2016-11-06','100','37','70','-','Lolos','-',1),
(8,'2016-11-13','110','30','70','-','Lolos','-',1);

/*Table structure for table `permintaan` */

DROP TABLE IF EXISTS `permintaan`;

CREATE TABLE `permintaan` (
  `id_minta` int(5) NOT NULL AUTO_INCREMENT,
  `id_pasien` varchar(10) DEFAULT NULL,
  `id_dokter` varchar(10) DEFAULT NULL,
  `id_rs` varchar(15) DEFAULT NULL,
  `id_jaminan` varchar(10) DEFAULT NULL,
  `no_dana` varbinary(20) DEFAULT '-',
  `tglMasuk` varchar(20) DEFAULT NULL,
  `hb` int(10) DEFAULT NULL,
  `jenis_darah` varchar(15) DEFAULT NULL,
  `diagnosa` varchar(30) DEFAULT NULL,
  `kelas` varchar(30) DEFAULT NULL,
  `bangsal` varchar(30) DEFAULT NULL,
  `tgl_permintaan` date DEFAULT NULL,
  `tgl_digunakan` date DEFAULT NULL,
  `jml_minta` int(11) DEFAULT NULL,
  `petugas_rs` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_minta`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `permintaan` */

insert  into `permintaan`(`id_minta`,`id_pasien`,`id_dokter`,`id_rs`,`id_jaminan`,`no_dana`,`tglMasuk`,`hb`,`jenis_darah`,`diagnosa`,`kelas`,`bangsal`,`tgl_permintaan`,`tgl_digunakan`,`jml_minta`,`petugas_rs`) values 
(1,'21','15','20','5','789347','2014-01-17',10,'PRC','Demam Berdarah','2','Melati','2014-01-17','2014-01-17',2,NULL),
(2,'22','15','20','1','','2014-01-08',10,'WB','anemia','1','mawar','2014-01-18','2014-01-18',2,NULL),
(3,'23','15','20','1','','',10,'PRC','anemia','vip','menur','2014-01-18','2014-01-18',1,NULL),
(4,'20','17','20','3','-','',13,NULL,'anemia','vip','Cendana','2014-02-01','2014-02-01',3,NULL),
(6,'23','18','20','1','','2014-02-03',7,'PRC','Anemia','3','gladiol','2014-02-03','2014-02-03',2,NULL),
(8,'2','2','2','1','-','',9,NULL,'Demam Berdarah','2','Melati','2014-02-08','2014-02-08',2,NULL),
(11,'23','17','20','2','-',NULL,7,'PRC','anemia','1','menur','2014-02-08','2014-02-08',1,NULL),
(13,'20','17','20','2','-','',7,NULL,'anemia','vip','gladiol','2014-03-01','2014-03-01',2,NULL),
(14,'21','15','20','2','-','',12,NULL,'anemia','1','gladiol','2014-03-01','2014-03-01',2,NULL),
(15,'21','17','20','2','-','',13,NULL,'anemia','1','mawar','2014-03-01','2014-03-01',1,NULL),
(16,'22','15','20','2','-','',6,NULL,'anemia','vip','gladiol','2014-03-01','2014-03-01',2,NULL),
(17,'58','30','20','1','-',NULL,5,'PRC','DB','2','menur','2014-03-06','2014-03-06',2,'Dyah'),
(18,'3','1','1','not_jamin','-','',0,NULL,'','','','2014-03-16','2014-03-16',0,NULL),
(19,'3','1','1','1','-',NULL,12,'PRC','Demam Berdarah','2','Melati','2014-03-29','2014-03-16',2,NULL),
(20,'4','8','1','3','-',NULL,10,'PRC','Demam Berdarah','2','Melati','2014-03-16','2014-03-16',2,'Dyah'),
(21,'60','17','20','1','-',NULL,5,'PRC','Anemia','vip','menur','2014-03-29','2014-03-26',1,'Dyah'),
(22,'62','17','20','1','-',NULL,9,'PRC','Demam Berdarah','2','Melati','2014-03-29','2014-03-29',2,'Dyah'),
(23,'63','33','23','3','-','',7,NULL,'Anemia','vip','gladiol','2014-03-29','2014-03-29',2,NULL);

/*Table structure for table `screening` */

DROP TABLE IF EXISTS `screening`;

CREATE TABLE `screening` (
  `screeningId` int(11) NOT NULL AUTO_INCREMENT,
  `screeningNo` varchar(10) DEFAULT NULL,
  `screeningTanggal` varchar(10) DEFAULT NULL,
  `screeningHbsag` enum('Positive','Negative') DEFAULT NULL,
  `screeningAntiHiv` enum('Positive','Negative') DEFAULT NULL,
  `screeningAntiHcv` enum('Positive','Negative') DEFAULT NULL,
  `screeningVdrl` enum('Positive','Negative') DEFAULT NULL,
  `aftapId` int(11) DEFAULT NULL,
  PRIMARY KEY (`screeningId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `screening` */

insert  into `screening`(`screeningId`,`screeningNo`,`screeningTanggal`,`screeningHbsag`,`screeningAntiHiv`,`screeningAntiHcv`,`screeningVdrl`,`aftapId`) values 
(1,'S00001','20160919','Positive','Positive','Positive','Positive',1),
(2,'',NULL,NULL,'Positive','Positive','Positive',6),
(3,'','1987-11-13','Positive','Positive','Positive','Positive',6),
(4,'','2016-09-22','Positive','Positive','Positive','Positive',6),
(5,'','2016-09-22','Positive','Positive','Positive','Positive',9),
(6,'S00001','2016-10-13','Negative','Negative','Negative','Negative',9);

/*Table structure for table `staffhospital` */

DROP TABLE IF EXISTS `staffhospital`;

CREATE TABLE `staffhospital` (
  `staffHospitalId` int(11) NOT NULL AUTO_INCREMENT,
  `staffHospitalName` varchar(30) NOT NULL DEFAULT '',
  `staffHospitalAddress` varchar(50) NOT NULL DEFAULT '',
  `staffHospitalTelp` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`staffHospitalId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `staffhospital` */

insert  into `staffhospital`(`staffHospitalId`,`staffHospitalName`,`staffHospitalAddress`,`staffHospitalTelp`) values 
(1,'Dini','Temanggung','08458948590'),
(2,'Adhi','Temanggung','0823923892389');

/*Table structure for table `staffpmi` */

DROP TABLE IF EXISTS `staffpmi`;

CREATE TABLE `staffpmi` (
  `staffPmiID` int(5) NOT NULL AUTO_INCREMENT,
  `staffPmiName` varchar(30) NOT NULL DEFAULT '',
  `staffPmiAddress` varchar(50) NOT NULL DEFAULT '',
  `staffPmiTelp` varchar(30) NOT NULL DEFAULT '',
  `staffPmiUsername` varchar(30) DEFAULT NULL,
  `staffPmiPassword` varchar(30) DEFAULT NULL,
  `Role` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`staffPmiID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `staffpmi` */

insert  into `staffpmi`(`staffPmiID`,`staffPmiName`,`staffPmiAddress`,`staffPmiTelp`,`staffPmiUsername`,`staffPmiPassword`,`Role`) values 
(1,'Adhi','Temanggung','08378346868','adhi','a',NULL),
(2,'PMI','Temanggung','','admin','admin','a'),
(3,'khusus','Sleman','','khusus','khusus','k'),
(4,'umum','Mgl','','umum','umum','u');

/*Table structure for table `tdropshiporder` */

DROP TABLE IF EXISTS `tdropshiporder`;

CREATE TABLE `tdropshiporder` (
  `tDropshipOrderId` int(11) NOT NULL AUTO_INCREMENT,
  `tDropshipOrderNo` varchar(10) DEFAULT NULL,
  `tDropshipOrderTanggal` date DEFAULT NULL,
  `staffHospitalId` int(11) DEFAULT NULL,
  `comKomponenDarahId` int(11) DEFAULT NULL,
  `docterId` int(11) DEFAULT NULL,
  `hospitalId` int(11) DEFAULT NULL,
  PRIMARY KEY (`tDropshipOrderId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tdropshiporder` */

insert  into `tdropshiporder`(`tDropshipOrderId`,`tDropshipOrderNo`,`tDropshipOrderTanggal`,`staffHospitalId`,`comKomponenDarahId`,`docterId`,`hospitalId`) values 
(1,'O00001','2016-09-29',1,1,1,1),
(2,'000002','2016-09-29',NULL,NULL,NULL,NULL),
(3,'O1010101','2016-10-01',NULL,NULL,NULL,NULL),
(4,'O1010101','2016-10-01',NULL,NULL,NULL,NULL),
(5,'O1010101','2016-10-01',NULL,NULL,NULL,NULL),
(6,'O1010101','2016-10-01',NULL,NULL,4,NULL),
(7,'O1010101','2016-10-01',NULL,NULL,4,1),
(8,'O1010101','2016-10-01',NULL,NULL,4,1);

/*Table structure for table `tdropshiporderdetail` */

DROP TABLE IF EXISTS `tdropshiporderdetail`;

CREATE TABLE `tdropshiporderdetail` (
  `orderDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `orderDetailPenerima` varchar(15) DEFAULT '',
  `orderDetailTanggalAmbil` date DEFAULT NULL,
  `orderDetailStatusAmbil` enum('sudah diambil','belum diambil') DEFAULT NULL,
  `aftapId` int(11) NOT NULL,
  PRIMARY KEY (`orderDetailId`,`aftapId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tdropshiporderdetail` */

insert  into `tdropshiporderdetail`(`orderDetailId`,`orderDetailPenerima`,`orderDetailTanggalAmbil`,`orderDetailStatusAmbil`,`aftapId`) values 
(1,'',NULL,NULL,1),
(1,'',NULL,NULL,2),
(2,'',NULL,NULL,1),
(2,'',NULL,NULL,2),
(2,'',NULL,NULL,3),
(2,'',NULL,NULL,4);

/*Table structure for table `torder` */

DROP TABLE IF EXISTS `torder`;

CREATE TABLE `torder` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderNo` longtext,
  `orderTanggal` date DEFAULT NULL,
  `orderNoKartu` varchar(20) DEFAULT NULL,
  `orderHb` varchar(5) DEFAULT NULL,
  `orderDiagnosa` varchar(20) DEFAULT NULL,
  `orderKelas` varchar(15) DEFAULT NULL,
  `orderBangsal` varchar(15) DEFAULT NULL,
  `orderTanggalMasuk` date DEFAULT NULL,
  `orderTanggalDigunakan` date DEFAULT NULL,
  `orderJmlMinta` varchar(100) DEFAULT NULL,
  `orderJenisPermintaan` enum('dropping','non dropping') DEFAULT NULL,
  `orderStatus` enum('1','2','3') DEFAULT NULL,
  `staffHospitalId` int(11) DEFAULT NULL,
  `comJaminanId` int(11) DEFAULT NULL,
  `comKomponenDarahId` int(11) DEFAULT NULL,
  `patientId` int(11) DEFAULT NULL,
  `docterId` int(11) DEFAULT NULL,
  `hospitalId` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `torder` */

insert  into `torder`(`orderId`,`orderNo`,`orderTanggal`,`orderNoKartu`,`orderHb`,`orderDiagnosa`,`orderKelas`,`orderBangsal`,`orderTanggalMasuk`,`orderTanggalDigunakan`,`orderJmlMinta`,`orderJenisPermintaan`,`orderStatus`,`staffHospitalId`,`comJaminanId`,`comKomponenDarahId`,`patientId`,`docterId`,`hospitalId`) values 
(1,'O01,2016/09/29','2016-09-29','019212092','2','2','1','Mawar','2016-09-29','2016-09-29','2','dropping','3',1,1,1,1,1,1);

/*Table structure for table `torderdetail` */

DROP TABLE IF EXISTS `torderdetail`;

CREATE TABLE `torderdetail` (
  `tOrderDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `tOrderDetailSample` varchar(10) DEFAULT NULL,
  `tOrderDetailPenerima` varchar(15) DEFAULT '',
  `tOrderDetailTanggalAmbil` date DEFAULT NULL,
  `tOrderDetailStatusAmbil` enum('sudah diambil','belum diambil','menunggu diambil','diambil sebagian') DEFAULT NULL,
  `screeningId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tOrderDetailId`,`screeningId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `torderdetail` */

insert  into `torderdetail`(`tOrderDetailId`,`tOrderDetailSample`,`tOrderDetailPenerima`,`tOrderDetailTanggalAmbil`,`tOrderDetailStatusAmbil`,`screeningId`) values 
(1,NULL,'',NULL,NULL,1),
(1,NULL,'',NULL,NULL,2),
(2,NULL,'',NULL,NULL,1),
(2,NULL,'',NULL,NULL,2),
(2,NULL,'',NULL,NULL,3),
(2,NULL,'',NULL,NULL,4),
(3,NULL,'',NULL,NULL,5),
(3,NULL,'',NULL,NULL,6),
(4,NULL,'',NULL,NULL,7),
(4,NULL,'',NULL,NULL,8);

/*Table structure for table `torderdropping` */

DROP TABLE IF EXISTS `torderdropping`;

CREATE TABLE `torderdropping` (
  `DroppingID` int(100) DEFAULT NULL,
  `DroppingNo` varchar(100) DEFAULT NULL,
  `tanggalPengambilanDarah` date DEFAULT NULL,
  `jamPengambilan` varchar(100) DEFAULT NULL,
  `namaPengambil` varchar(100) DEFAULT NULL,
  `JenisKelamin` varchar(2) DEFAULT NULL,
  `alamatPengambil` varchar(100) DEFAULT NULL,
  `bangsal` varchar(10) DEFAULT NULL,
  `golonganDarah` varchar(10) DEFAULT NULL,
  `jumlah` varchar(11) DEFAULT NULL,
  `tanggalAftap` date DEFAULT NULL,
  `comKomponenDarahId` int(15) DEFAULT NULL,
  `hasil` varchar(10) DEFAULT NULL,
  `DCT` varchar(10) DEFAULT NULL,
  `Keterangan` varchar(100) DEFAULT NULL,
  `Petugas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `torderdropping` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
