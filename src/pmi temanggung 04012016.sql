/*
SQLyog Community v8.3 
MySQL - 5.5.5-10.1.16-MariaDB : Database - pmitemanggung
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
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

insert  into `aftap`(`aftapId`,`aftapNoKantong`,`aftapTanggal`,`aftapStatusAmbil`,`aftapReaksi`,`aftapStatusDonor`,`komponen`,`isStatus`,`comVolumeKantongId`,`pendonorId`) values (1,'N0102900','2016-03-10','Lancar','-',NULL,'',NULL,1,1),(2,'K9283023','2016-04-11','Lancar','-',NULL,'',NULL,1,1),(3,'B0920309','2016-05-12','Lancar','-',NULL,'',NULL,1,2),(4,'Y2093090','2016-08-13','Lancar','-',NULL,'',NULL,1,2),(5,'K9283023','2016-09-09','Lancar','-',NULL,'',NULL,1,3),(6,'H8210209','2016-09-15','Lancar','-',NULL,'',NULL,1,3),(7,NULL,'2016-09-14','Lancar','-',NULL,'',NULL,1,1),(8,'volumekantongs','2016-09-14','Lancar','-',NULL,'',NULL,1,1),(9,'U2983293','2016-09-15','Lancar','-',NULL,'',NULL,1,1);

/*Table structure for table `comgolongandarah` */

DROP TABLE IF EXISTS `comgolongandarah`;

CREATE TABLE `comgolongandarah` (
  `comGolonganDarahId` int(5) NOT NULL AUTO_INCREMENT,
  `comGolonganDarahName` varchar(20) NOT NULL,
  `comGolonganDarahDesc` varchar(20) NOT NULL,
  PRIMARY KEY (`comGolonganDarahId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `comgolongandarah` */

insert  into `comgolongandarah`(`comGolonganDarahId`,`comGolonganDarahName`,`comGolonganDarahDesc`) values (2,'B','B'),(3,'AB','AB'),(4,'O','O'),(5,'A','A');

/*Table structure for table `comjaminan` */

DROP TABLE IF EXISTS `comjaminan`;

CREATE TABLE `comjaminan` (
  `comJaminanId` int(5) NOT NULL AUTO_INCREMENT,
  `comJaminanName` varchar(20) NOT NULL,
  `comJaminanDesc` varchar(20) NOT NULL,
  PRIMARY KEY (`comJaminanId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `comjaminan` */

insert  into `comjaminan`(`comJaminanId`,`comJaminanName`,`comJaminanDesc`) values (2,'BPJS','BPJS'),(3,'UMUM','UMUM');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `comkomponendarah` */

insert  into `comkomponendarah`(`comKomponenDarahId`,`comKomponenDarahName`,`comKomponenDarahDesc`) values (1,'PRC','PRC'),(2,'WB','WB');

/*Table structure for table `compekerjaan` */

DROP TABLE IF EXISTS `compekerjaan`;

CREATE TABLE `compekerjaan` (
  `comPekerjaanId` int(11) NOT NULL AUTO_INCREMENT,
  `comPekerjaanName` varchar(20) DEFAULT NULL,
  `comPekerjaanDesc` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`comPekerjaanId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `compekerjaan` */

insert  into `compekerjaan`(`comPekerjaanId`,`comPekerjaanName`,`comPekerjaanDesc`) values (1,'Wiraswasta','Wiraswasta'),(2,'Guru','Guru');

/*Table structure for table `comvolumekantong` */

DROP TABLE IF EXISTS `comvolumekantong`;

CREATE TABLE `comvolumekantong` (
  `comVolumeKantongId` int(5) NOT NULL AUTO_INCREMENT,
  `comVolumeKantongName` varchar(20) NOT NULL,
  `comVolumeKantongDesc` varchar(20) NOT NULL,
  PRIMARY KEY (`comVolumeKantongId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `comvolumekantong` */

insert  into `comvolumekantong`(`comVolumeKantongId`,`comVolumeKantongName`,`comVolumeKantongDesc`) values (1,'250CC','250CC');

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

insert  into `crossmatch`(`crossMatchId`,`crossMatchNo`,`crossMatchDate`,`crossMatchResult`,`aftapId`,`orderId`) values (1,'000001','2016-10-03','Match',1,2);

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

insert  into `detail_minta`(`id_minta`,`id_kantong`,`harga`,`penerima`,`tgl_diambil`,`stat_ambil`) values (1,'RT',250000,'-','2014-03-02','1'),(2,'RT00125',250000,'Siti','2014-01-18','1'),(2,'YU04959',250000,'siti','2014-01-18','1'),(3,'KL9887',250000,'budi','2014-01-18','1'),(6,'HK091HK',250000,'Tumini','2014-02-08','1'),(16,'G9099188',250000,'Bejo','2014-03-06','1'),(16,'RT 001 259',250000,'rini','2014-03-04','1'),(17,'G5125444',250000,'Tumini','2014-03-06','1'),(20,'GH98292',250000,'budi','2014-06-29','1'),(21,'GH0209300',250000,'Bagus','2014-03-26','1'),(22,'IU92389',250000,'Joko','2014-03-29','1');

/*Table structure for table `docter` */

DROP TABLE IF EXISTS `docter`;

CREATE TABLE `docter` (
  `docterId` int(5) NOT NULL AUTO_INCREMENT,
  `docterName` varchar(30) NOT NULL DEFAULT '',
  `docterAddress` varchar(40) NOT NULL DEFAULT '',
  `docterTelp` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`docterId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `docter` */

insert  into `docter`(`docterId`,`docterName`,`docterAddress`,`docterTelp`) values (1,'Dini','Tmg','08567'),(3,'adhii','magelang','028302930293'),(4,'adhiiiii','mgl',NULL),(5,'Nugroho','Magelang',NULL),(6,'adhiiiiivvvv','mgl',NULL),(7,'asasas','asasas','08567'),(8,'asasas','asasas','08567'),(9,'asasas','mgl','08567'),(10,'asasas','mgl','08567'),(11,'Test','Test','0091090129012'),(12,'hohohoho','Lalalala','9090909909090'),(13,'coba','coba','9019201290129'),(14,'coba','coba','9019201290129'),(15,'coba','coba','9019201290129'),(16,'adhiiiiivvvv','Test','11111111111111111'),(17,'adhii','asasas','2222222'),(18,'Test','Magelang','3333333333333');

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

insert  into `hospital`(`hospitalId`,`hospitalName`,`hospitalAlamat`,`hospitalTelp`,`hospitalLokasi`,`hospitalUsername`,`hospitalPassword`) values (1,'Abdi Waluyo','Magelang','0803203923','mgl','abdi','a'),(2,'RSU','Temanggung','0802382002','tmg','rsu','a');

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `keterangan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `kategori` */

insert  into `kategori`(`id_kategori`,`nama_kategori`,`keterangan`) values (1,'Politik','Berita-berita Mengenai Politik'),(2,'Ekonomi','Berita-berita Mengenai Ekonomi'),(3,'Teknologi','Berita-berita Mengenai Teknologi'),(4,'Olahraga','Berita-berita Mengenai Olahraga'),(5,'Kriminal','Berita-berita Mengenai Kriminal'),(6,'Kesehatan','Berita-berita Mengenai Kesehatan'),(7,'Hiburan','Berita-berita Mengenai Hiburan');

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

insert  into `komponen`(`komponenId`,`komponenNo`,`komponenTanggal`,`comKomponenDarahId`,`aftapId`) values (1,'K00001','2016-09-22',1,1),(2,'','2016-09-23',1,3),(3,'','2016-09-23',1,3),(4,'K00004','2016-10-09',2,3);

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

insert  into `masterpesan`(`id_pesan`,`id_rs`,`tgl_minta`,`tgl_digunakan`,`status`,`jml_permintaan`,`jml_diambil`,`penerima`,`keterangan`) values (1,'2','13/02/2012','13/02/2012','sudah diambil',2,NULL,'tono','dapat'),(2,'3','28/02/2012','28/02/2012','belum diambil',3,NULL,'-','dapat'),(3,'4','03/03/2012','03/03/2012','sudah diambil',2,NULL,'tinu','dapat'),(10,'1','12/03/2012','12/03/2012','sudah diambil',2,NULL,'bejo','dapat'),(15,'1','04/04/2012','04/04/2012','belum diambil',2,NULL,NULL,'dapat'),(17,'1','04/04/2012','04/04/2012','sudah diambil',2,NULL,'tanu','dapat'),(19,'1','05/04/2012','05/04/2012','sudah diambil',2,NULL,'tena','belum dapat'),(20,'2','18/04/2012','18/04/2012','sudah diambil',2,NULL,'teni','belum dapat'),(21,'1','06/04/2012','06/04/2012','belum diambil',2,NULL,NULL,'belum dapat'),(22,'1','06/04/2012','06/04/2012','sudah diambil',3,NULL,'tene','belum dapat'),(23,'1','06/04/2012','07/04/2012','belum diambil',1,NULL,NULL,'belum dapat'),(24,'1','11/05/2012','11/05/2012',NULL,2,NULL,NULL,'belum dapat'),(25,'1','11/05/2012','11/05/2012',NULL,2,NULL,NULL,'belum dapat'),(26,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),(27,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),(28,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),(29,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),(30,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),(31,'1','11/05/2012','11/05/2012','belum diambil',1,NULL,'-','belum dapat'),(32,'1','11/05/2012','11/05/2012','belum diambil',3,NULL,'-','belum dapat'),(33,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),(34,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),(35,'1','11/05/2012','11/05/2012','belum diambil',5,NULL,'-','belum dapat'),(36,'1','11/05/2012','11/05/2012','belum diambil',2,NULL,'-','belum dapat'),(37,'1','11/05/2012','11/05/2012','belum diambil',1,NULL,'-','belum dapat'),(39,'1','14/05/2012','14/05/2012','belum diambil',3,NULL,'-','belum dapat'),(40,'1','16/05/2012','16/05/2012','belum diambil',5,NULL,'-','belum dapat'),(41,'1','16/05/2012','16/05/2012','belum diambil',2,NULL,'-','belum dapat'),(42,'1','16/05/2012','16/05/2012','belum diambil',3,NULL,'-','belum dapat'),(43,'1','16/05/2012','16/05/2012','belum diambil',2,NULL,'-','belum dapat'),(44,'1','16/05/2012','16/05/2012','belum diambil',1,NULL,'-','belum dapat'),(45,'1','16/05/2012','16/05/2012','belum diambil',3,NULL,'-','belum dapat'),(46,'1','16/05/2012','16/05/2012','belum diambil',2,NULL,'-','belum dapat'),(47,'1','16/05/2012','16/05/2012','belum diambil',2,NULL,'-','belum dapat'),(48,'1','16/05/2012','16/05/2012','belum diambil',2,NULL,'-','belum dapat'),(49,'1','16/05/2012','16/05/2012','belum diambil',1,NULL,'-','belum dapat'),(50,'1','19/05/2012','19/05/2012','belum diambil',3,NULL,'-','belum dapat'),(51,'1','19/05/2012','19/05/2012','belum diambil',2,NULL,'-','belum dapat'),(52,'1','19/05/2012','19/05/2012','belum diambil',2,NULL,'-','belum dapat'),(53,'1','19/05/2012','19/05/2012','belum diambil',1,NULL,'-','belum dapat'),(54,'1','19/05/2012','19/05/2012','belum diambil',1,NULL,'-','belum dapat'),(55,'1','19/05/2012','19/05/2012','belum diambil',1,NULL,'-','belum dapat'),(56,'1','22/05/2012','22/05/2012','belum diambil',2,NULL,'-','belum dapat'),(57,'1','22/05/2012','22/05/2012','belum diambil',1,NULL,'-','belum dapat'),(58,'1','22/05/2012','22/05/2012','belum diambil',5,NULL,'-','belum dapat'),(59,'1','22/05/2012','22/05/2012','belum diambil',5,NULL,'-','belum dapat'),(60,'1','22/05/2012','22/05/2012','belum diambil',1,NULL,'-','belum dapat'),(61,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),(62,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),(63,'1','23/05/2012','23/05/2012','belum diambil',1,NULL,'-','belum dapat'),(64,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),(65,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),(66,'1','23/05/2012','23/05/2012','belum diambil',3,NULL,'-','belum dapat'),(67,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),(68,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),(69,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),(70,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),(71,'1','23/05/2012','23/05/2012','belum diambil',3,NULL,'-','belum dapat'),(72,'1','23/05/2012','23/05/2012','belum diambil',2,NULL,'-','belum dapat'),(73,'1','24/07/2013','24/07/2013','belum diambil',2,NULL,'-','dapat'),(74,'20','25/07/2013','25/07/2013','sudah diambil',1,NULL,'Narji','dapat'),(75,'1','25/07/2013','25/07/2013','belum diambil',1,NULL,'-','belum dapat'),(76,'2','25/07/2013','25/07/2013','belum diambil',1,NULL,'-','belum dapat'),(77,'20','25/07/2013','25/07/2013','belum diambil',1,NULL,'-','belum dapat'),(78,'20','25/07/2013','25/07/2013','belum diambil',1,NULL,'-','dapat');

/*Table structure for table `pasien` */

DROP TABLE IF EXISTS `pasien`;

CREATE TABLE `pasien` (
  `id_pasien` int(20) NOT NULL AUTO_INCREMENT,
  `id_gol` varchar(15) DEFAULT NULL,
  `id_rs` varchar(15) DEFAULT NULL,
  `nama_pasien` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `no_rm` varchar(30) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `umur` int(10) DEFAULT NULL,
  `alamat` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_pasien`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

/*Data for the table `pasien` */

insert  into `pasien`(`id_pasien`,`id_gol`,`id_rs`,`nama_pasien`,`tgl_lahir`,`no_rm`,`jenis_kelamin`,`umur`,`alamat`) values (1,'1','1','Sumiyani ',NULL,'4336','perempuan',56,'muntilan'),(2,'3','2','Sohimah ',NULL,'456457','perempuan',48,'muntilan'),(3,'2','1','Margo Sutrisno ',NULL,'45747','laki-laki',50,'sleman'),(4,'2','1','Suyoto ',NULL,'45647','laki-laki',49,'magelang'),(5,'4','2','Sumaryati ',NULL,'3476525','perempuan',60,'muntilan'),(6,'3','3','Yanti ',NULL,'213425','laki-laki',43,'muntilan'),(7,'3','5','Maryati ',NULL,'634636','laki-laki',46,'magelang'),(8,'1','1','ayesi nori ',NULL,'36376','laki-laki',56,'gjfgjfj'),(10,'2','1','Paijo ',NULL,'764536','laki-laki',24,'Magelang ajah'),(11,'2','2','Suyoto ',NULL,'4746785688','laki-laki',49,'magelang'),(12,'4','1','Tarmin ',NULL,NULL,'laki-laki',60,'Magelang lah'),(13,'3','2','Tarjo ',NULL,NULL,'laki-laki',55,'Muntilan'),(14,'','1','zxzgxfh ',NULL,'4242','laki-laki',34,'zdgxgxh'),(15,'1','1','ayesi nori ',NULL,'4242','laki-laki',55,'egsgsg'),(16,'1','1','Siti ',NULL,'390420948','laki-laki',45,'Magelang'),(20,'2','20','Budi ',NULL,'099102910','laki-laki',29,'Magelang'),(21,'1','20','BUdi ',NULL,'29090','laki-laki',45,'Magelang'),(22,'1','20','rusmi ',NULL,'10045','perempuan',23,'mawar'),(23,'1','20','Paijo ',NULL,'0977','laki-laki',45,'-'),(27,NULL,NULL,'hihihh',NULL,'898',NULL,NULL,NULL),(28,'','','',NULL,'','',0,''),(29,NULL,NULL,'',NULL,'34',NULL,0,NULL),(30,NULL,NULL,'wddsd',NULL,'32',NULL,0,NULL),(31,NULL,NULL,'wddsd',NULL,'32',NULL,4,NULL),(32,NULL,NULL,'kjdcbdcb',NULL,'231',NULL,88,'kms vkds skv kdvs'),(33,NULL,NULL,'cbjfhxx',NULL,'34',NULL,87,'cxmnvbjxfkbv'),(34,'1',NULL,'jkjbjb',NULL,'787',NULL,7,'jb jh jh '),(35,'2',NULL,'skcnkscn',NULL,'344',NULL,923,'kncskscnkc'),(36,'','','',NULL,'','',0,''),(37,'','','',NULL,'','',0,''),(38,'','','',NULL,'','',0,''),(39,'1',NULL,'JKVCNDKJ',NULL,'454',NULL,98,'LNJBKJB'),(40,'','','',NULL,'','',0,''),(41,'1',NULL,'DFDGDGG',NULL,'4343',NULL,80,'KJBSKJSC'),(42,'1',NULL,'kscnscn',NULL,'3434',NULL,2,'j kjd '),(43,'3',NULL,'bjbkjb',NULL,'232',NULL,878,'jbjhb'),(44,'1','','kdflfxkvlk',NULL,'',NULL,88,'kjbjbk'),(45,'1','','bscsbsbc',NULL,'883','laki-laki',17,'kknk'),(46,'1','','jdbvjdvb',NULL,'233','laki-laki',17,'knknkn'),(47,'1','','jbscksjcb',NULL,'322','laki-laki',0,'JSCBCJB'),(48,'1','20','kjbjjk',NULL,'434','laki-laki',78,'hjvjhv'),(49,'3','20','jdskcksjv',NULL,'43','laki-laki',23,'ubb'),(50,'1','20','jfjdfnbdjf',NULL,'0930293','laki-laki',23,'khvj kj'),(51,'not_golongan','20','jbkbjbj',NULL,'334','',0,''),(52,'1','20','iacbdc',NULL,'2810','laki-laki',78,'cks dc s'),(53,'1','20','test ',NULL,'78990','laki-laki',78,'test'),(54,'1','2','SCUzsjscbsck ',NULL,'439','laki-laki',8,'lxvnisdnxv'),(55,'3','2','jcbjdbvb ',NULL,'343894','laki-laki',89,'kdzjbvxjb'),(56,'3','2','tdgdtgtg ',NULL,'233','laki-laki',34,'srgtdh'),(57,'3','3','kkkkk ',NULL,'88888','laki-laki',45,'hnnnnn'),(58,'3','20','Siti ',NULL,'89330','perempuan',30,'Muntilan'),(59,'1','21','Paijo ',NULL,'092309','laki-laki',34,'Magelang'),(60,'4','20','Tarmiji ',NULL,'093093','laki-laki',78,'Muntilan'),(61,'1','20','Tarno ','2014-03-27','343535445','laki-laki',34,'Muntilan'),(62,'3','20','Budi ','2014-03-29','6786868','laki-laki',56,'Magelang'),(63,'1','23','Harj ',NULL,'123456','laki-laki',78,'Magelang');

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `patientId` int(5) NOT NULL AUTO_INCREMENT,
  `patientNo` varchar(20) DEFAULT '',
  `patientName` varchar(30) DEFAULT '',
  `patientAddress` varchar(70) DEFAULT '',
  `comGolonganDarahId` int(11) DEFAULT NULL,
  PRIMARY KEY (`patientId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `patient` */

insert  into `patient`(`patientId`,`patientNo`,`patientName`,`patientAddress`,`comGolonganDarahId`) values (1,'02302390','Budi','Magelang',2),(2,'80182012','Tono','Temanggung',3),(3,'5354353','Test','mgl',2),(4,'901200010','Joko','Magelang',3),(5,'0909090909','hoho','Magelang',2);

/*Table structure for table `pendonor` */

DROP TABLE IF EXISTS `pendonor`;

CREATE TABLE `pendonor` (
  `pendonorId` int(11) NOT NULL AUTO_INCREMENT,
  `pendonorNo` varchar(10) DEFAULT NULL,
  `pendonorName` varchar(50) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `pendonor` */

insert  into `pendonor`(`pendonorId`,`pendonorNo`,`pendonorName`,`pendonorGender`,`pendonorAddress`,`pendonorBirthPlace`,`pendonorBirthDate`,`pendonorTelp`,`pendonorEmail`,`pendonorPassword`,`comPekerjaanId`,`comGolonganDarahId`) values (1,'P00001','Adhi Nugroho','Laki-laki','Magelang','Yogyakarta',NULL,'(010) 290-1920','adhi@yahoo.com','-',1,2),(2,'P00002','Adhi','Laki-laki','mgl','Magelang',NULL,'(086) 543-3333','adhi@yahoo.co.id','ggggggg',1,4),(3,'P00003','Nugroho','Laki-laki','Mgl','Magelang',NULL,'(029) 302-3902','adhi@yahoo.co.id','09090909',1,2),(4,'P00004','Yanto','Laki-laki','Temanggung','Magelang',NULL,'(088) 809-0909','adhi@yahoo.co.id','000000000',1,4);

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

insert  into `periksa`(`periksaId`,`periksaTanggal`,`periksaTensi`,`periksaSuhu`,`periksaBeratBadan`,`periksaRiwayatMedis`,`periksaKeputusan`,`periksaAlasan`,`pendonorId`) values (1,'2016-09-23','100','37','70','-','Lolos','-',1),(4,'2016-10-12','100','100','100','-','Lolos','-',3),(6,'2016-10-13','-','37','70','-','Lolos','-',1),(7,'2016-11-06','100','37','70','-','Lolos','-',1),(8,'2016-11-13','110','30','70','-','Lolos','-',1);

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

insert  into `permintaan`(`id_minta`,`id_pasien`,`id_dokter`,`id_rs`,`id_jaminan`,`no_dana`,`tglMasuk`,`hb`,`jenis_darah`,`diagnosa`,`kelas`,`bangsal`,`tgl_permintaan`,`tgl_digunakan`,`jml_minta`,`petugas_rs`) values (1,'21','15','20','5','789347','2014-01-17',10,'PRC','Demam Berdarah','2','Melati','2014-01-17','2014-01-17',2,NULL),(2,'22','15','20','1','','2014-01-08',10,'WB','anemia','1','mawar','2014-01-18','2014-01-18',2,NULL),(3,'23','15','20','1','','',10,'PRC','anemia','vip','menur','2014-01-18','2014-01-18',1,NULL),(4,'20','17','20','3','-','',13,NULL,'anemia','vip','Cendana','2014-02-01','2014-02-01',3,NULL),(6,'23','18','20','1','','2014-02-03',7,'PRC','Anemia','3','gladiol','2014-02-03','2014-02-03',2,NULL),(8,'2','2','2','1','-','',9,NULL,'Demam Berdarah','2','Melati','2014-02-08','2014-02-08',2,NULL),(11,'23','17','20','2','-',NULL,7,'PRC','anemia','1','menur','2014-02-08','2014-02-08',1,NULL),(13,'20','17','20','2','-','',7,NULL,'anemia','vip','gladiol','2014-03-01','2014-03-01',2,NULL),(14,'21','15','20','2','-','',12,NULL,'anemia','1','gladiol','2014-03-01','2014-03-01',2,NULL),(15,'21','17','20','2','-','',13,NULL,'anemia','1','mawar','2014-03-01','2014-03-01',1,NULL),(16,'22','15','20','2','-','',6,NULL,'anemia','vip','gladiol','2014-03-01','2014-03-01',2,NULL),(17,'58','30','20','1','-',NULL,5,'PRC','DB','2','menur','2014-03-06','2014-03-06',2,'Dyah'),(18,'3','1','1','not_jamin','-','',0,NULL,'','','','2014-03-16','2014-03-16',0,NULL),(19,'3','1','1','1','-',NULL,12,'PRC','Demam Berdarah','2','Melati','2014-03-29','2014-03-16',2,NULL),(20,'4','8','1','3','-',NULL,10,'PRC','Demam Berdarah','2','Melati','2014-03-16','2014-03-16',2,'Dyah'),(21,'60','17','20','1','-',NULL,5,'PRC','Anemia','vip','menur','2014-03-29','2014-03-26',1,'Dyah'),(22,'62','17','20','1','-',NULL,9,'PRC','Demam Berdarah','2','Melati','2014-03-29','2014-03-29',2,'Dyah'),(23,'63','33','23','3','-','',7,NULL,'Anemia','vip','gladiol','2014-03-29','2014-03-29',2,NULL);

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

insert  into `screening`(`screeningId`,`screeningNo`,`screeningTanggal`,`screeningHbsag`,`screeningAntiHiv`,`screeningAntiHcv`,`screeningVdrl`,`aftapId`) values (1,'S00001','20160919','Positive','Positive','Positive','Positive',1),(2,'',NULL,NULL,'Positive','Positive','Positive',6),(3,'','1987-11-13','Positive','Positive','Positive','Positive',6),(4,'','2016-09-22','Positive','Positive','Positive','Positive',6),(5,'','2016-09-22','Positive','Positive','Positive','Positive',9),(6,'S00001','2016-10-13','Negative','Negative','Negative','Negative',9);

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

insert  into `staffhospital`(`staffHospitalId`,`staffHospitalName`,`staffHospitalAddress`,`staffHospitalTelp`) values (1,'Dini','Temanggung','08458948590'),(2,'Adhi','Temanggung','0823923892389');

/*Table structure for table `staffpmi` */

DROP TABLE IF EXISTS `staffpmi`;

CREATE TABLE `staffpmi` (
  `staffPmiID` int(5) NOT NULL AUTO_INCREMENT,
  `staffPmiName` varchar(30) NOT NULL DEFAULT '',
  `staffPmiAddress` varchar(50) NOT NULL DEFAULT '',
  `staffPmiTelp` varchar(30) NOT NULL DEFAULT '',
  `staffPmiUsername` varchar(30) DEFAULT NULL,
  `staffPmiPassword` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`staffPmiID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `staffpmi` */

insert  into `staffpmi`(`staffPmiID`,`staffPmiName`,`staffPmiAddress`,`staffPmiTelp`,`staffPmiUsername`,`staffPmiPassword`) values (1,'Adhi','Temanggung','08378346868','adhi','a');

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

insert  into `tdropshiporder`(`tDropshipOrderId`,`tDropshipOrderNo`,`tDropshipOrderTanggal`,`staffHospitalId`,`comKomponenDarahId`,`docterId`,`hospitalId`) values (1,'O00001','2016-09-29',1,1,1,1),(2,'000002','2016-09-29',NULL,NULL,NULL,NULL),(3,'O1010101','2016-10-01',NULL,NULL,NULL,NULL),(4,'O1010101','2016-10-01',NULL,NULL,NULL,NULL),(5,'O1010101','2016-10-01',NULL,NULL,NULL,NULL),(6,'O1010101','2016-10-01',NULL,NULL,4,NULL),(7,'O1010101','2016-10-01',NULL,NULL,4,1),(8,'O1010101','2016-10-01',NULL,NULL,4,1);

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

insert  into `tdropshiporderdetail`(`orderDetailId`,`orderDetailPenerima`,`orderDetailTanggalAmbil`,`orderDetailStatusAmbil`,`aftapId`) values (1,'',NULL,NULL,1),(1,'',NULL,NULL,2),(2,'',NULL,NULL,1),(2,'',NULL,NULL,2),(2,'',NULL,NULL,3),(2,'',NULL,NULL,4);

/*Table structure for table `torder` */

DROP TABLE IF EXISTS `torder`;

CREATE TABLE `torder` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(10) DEFAULT NULL,
  `orderTanggal` date DEFAULT NULL,
  `orderNoKartu` varchar(20) DEFAULT NULL,
  `orderHb` varchar(5) DEFAULT NULL,
  `orderDiagnosa` varchar(20) DEFAULT NULL,
  `orderKelas` varchar(15) DEFAULT NULL,
  `orderBangsal` varchar(15) DEFAULT NULL,
  `orderTanggalMasuk` date DEFAULT NULL,
  `orderTanggalDigunakan` date DEFAULT NULL,
  `orderJmlMinta` int(11) DEFAULT NULL,
  `orderJenisPermintaan` enum('dropping','non dropping') DEFAULT NULL,
  `orderStatus` enum('belum diantar','diantar','diterima','dalam proses','selesai','belum diambil','sampai') DEFAULT NULL,
  `staffHospitalId` int(11) DEFAULT NULL,
  `comJaminanId` int(11) DEFAULT NULL,
  `comKomponenDarahId` int(11) DEFAULT NULL,
  `patientId` int(11) DEFAULT NULL,
  `docterId` int(11) DEFAULT NULL,
  `hospitalId` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `torder` */

insert  into `torder`(`orderId`,`orderNo`,`orderTanggal`,`orderNoKartu`,`orderHb`,`orderDiagnosa`,`orderKelas`,`orderBangsal`,`orderTanggalMasuk`,`orderTanggalDigunakan`,`orderJmlMinta`,`orderJenisPermintaan`,`orderStatus`,`staffHospitalId`,`comJaminanId`,`comKomponenDarahId`,`patientId`,`docterId`,`hospitalId`) values (1,'O00001','2016-09-29','019212092','9','DB','1','Mawar','2016-09-29','2016-09-29',2,'dropping','belum diambil',1,1,1,1,1,1),(2,'000002','2016-09-29','019212092','9','DB','1','Mawar',NULL,NULL,NULL,NULL,'diantar',NULL,NULL,NULL,NULL,NULL,NULL),(3,'O1010101','2016-10-01','023029302','10','DB','1','Mawar','2016-09-30','2016-10-01',2,NULL,'dalam proses',NULL,NULL,NULL,NULL,NULL,NULL),(4,'O1010101','2016-10-01','0120129','11','DB','1','Mawar','2016-09-30','2016-10-01',2,NULL,'diterima',NULL,NULL,NULL,NULL,NULL,NULL),(5,'O1010101','2016-10-01','0120129','10','DB','1','Mawar','2016-09-30','2016-10-01',2,NULL,'selesai',NULL,NULL,NULL,NULL,NULL,NULL),(6,'O1010101','2016-10-01','0120129','10','DB','1','Mawar','2016-09-30','2016-10-01',4,NULL,'diantar',NULL,NULL,NULL,2,4,NULL),(7,'O1010101','2016-10-01','0120129','10','DB','1','Mawar','2016-09-30','2016-10-01',2,NULL,'sampai',NULL,NULL,NULL,1,4,1),(8,'O1010101','2016-10-01','0120129','10','DB','1','Mawar','2016-09-30','2016-10-01',2,NULL,'belum diantar',NULL,NULL,NULL,1,4,1),(9,'','2016-10-01','0120129','10','DB','1','Mawar','2016-09-30','2016-10-01',2,NULL,NULL,NULL,NULL,NULL,2,3,1);

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

insert  into `torderdetail`(`tOrderDetailId`,`tOrderDetailSample`,`tOrderDetailPenerima`,`tOrderDetailTanggalAmbil`,`tOrderDetailStatusAmbil`,`screeningId`) values (1,NULL,'',NULL,NULL,1),(1,NULL,'',NULL,NULL,2),(2,NULL,'',NULL,NULL,1),(2,NULL,'',NULL,NULL,2),(2,NULL,'',NULL,NULL,3),(2,NULL,'',NULL,NULL,4),(3,NULL,'',NULL,NULL,5),(3,NULL,'',NULL,NULL,6),(4,NULL,'',NULL,NULL,7),(4,NULL,'',NULL,NULL,8);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
