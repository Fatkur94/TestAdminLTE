-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: testprogrammer
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `badan_usaha` enum('PT','CV','FIRMA','KOPERASI') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `produk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kota_id` int(10) unsigned DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `companies_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Bearn Stearn','343543534',13,'CV','Bakso','sdhwtejtrjytek','2367386535',6,'bear@example.co.id',NULL,'2018-03-17 04:30:39','2018-03-17 05:41:24','bear.com'),(9,'perusahaan1','2332954309',13,'FIRMA','kosmetik','lwjeroewnrewnrewlk','0932743209752',7,'perusahaan1@example.com',NULL,'2018-03-17 06:41:58','2018-03-17 06:41:58','perusahaan1.com'),(10,'perusahaan2','432543645645',13,'FIRMA','test',';lwjfrewkmewlkr','0932409324',17,'perusahaan2@example.com',NULL,'2018-03-17 06:42:46','2018-03-17 06:51:44','perusahaan2.com');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kota`
--

DROP TABLE IF EXISTS `kota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kota` (
  `kode_kota` varchar(15) NOT NULL,
  `NamaKota` varchar(100) NOT NULL,
  `Jenis` varchar(100) NOT NULL,
  `FK_Propinsi` varchar(40) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=487 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=144;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kota`
--

LOCK TABLES `kota` WRITE;
/*!40000 ALTER TABLE `kota` DISABLE KEYS */;
INSERT INTO `kota` VALUES ('AC-LGS','Langsa ','Kota','AC',1),('ADL','Konawe Selatan','Kabupaten','SG',2),('AFT','Maybrat','Kota','PB',3),('AGT','Asmat','Kabupaten','PA',5),('AKK','Labuhanbatu Utara','Kabupaten','SU',6),('AMB','Ambon','Kota','MA',7),('AMR','Minahasa Selatan','Kabupaten','SA',8),('AMS','Sorong','Kabupaten','PB',9),('AMT','Hulu sungai Utara','Kabupaten','KS',10),('APN','Tojo Una Una','Kabupaten','ST',11),('ARM','Minahasa Utara','Kabupaten','SA',12),('ARS','Solok','Kabupaten','SB',13),('ASDF','TualASDF','KOTA','MU',14),('ATB','Belu','Kabupaten','NT',15),('BAA','Rote Ndao','Kabupaten','NT',16),('BALI','BANGLITAS','KOTA','BA',17),('BAN','Bantaeng','Kabupaten','SN',18),('BAR','Barru','Kabupaten','SN',19),('BAU','Bau Bau','Kota','SG',20),('BBL','Brebes','Kabupaten','JT',21),('BBU','Way kanan','Kabupaten','LA',22),('BDG','Bandung','Kota','JB',23),('BDL','Bandar Lampung','Kota','LA',24),('BDW','Bondowoso','Kabupaten','JI',25),('BEK','Bengkayang','Kabupaten','KB',26),('BEN','Kepulauan Selayar','Kabupaten','SN',27),('BGK','Morowali','Kabupaten','ST',28),('BGL','Bengkulu','Kota','BE',29),('BGR','Bogor','Kota','JB',30),('BHN','Kaur','Kabupaten','BE',31),('BIK','Biak Numfor','Kabupaten','PA',32),('BIM','Bima','Kota','NB',33),('BIR','Birueun','Kabupaten','AC',34),('BIT','Bitung','Kota','SA',35),('BJB','Banjarbaru','Kota','KS',36),('BJM','Banjarmasin','Kota','KS',37),('BJN','Bojonegoro','Kabupaten','JI',38),('BJR','Banjar','Kota','JB',39),('BJW','Ngada','Kabupaten','NT',40),('BKJ','Gayo Lues','Kabupaten','AC',41),('BKL','Bangkalan','Kabupaten','JI',42),('BKN','Kampar','Kabupaten','RI',43),('BKO','Merangin','Kabupaten','JA',44),('BKS','Bekasi','Kota','JB',45),('BKT','Bukittinggi','Kota','SB',46),('BLA','Blora','Kabupaten','JT',47),('BLG','Toba Samosir','Kabupaten','SU',48),('BLI','Bangli','Kabupaten','BA',49),('BLN','Tanah Bumbu','Kabupaten','KS',50),('BLS','Bengkalis','Kabupaten','RI',51),('BLT','Blitar','Kota','JI',52),('BLU','Bolaang Mongondow Selatan','Kabupaten','SA',53),('BNA','Banda Aceh','Kota','AC',54),('BNG','Buton Utara','Kabupaten','SG',55),('BNJ','Binjai','Kota','SU',56),('BNR','Banjarnegara','Kabupaten','JT',57),('BNT','Barito Selatan','Kabupaten','KT',58),('BON','Bontang','Kota','KI',59),('BPD','Aceh Barat Daya','Kabupaten','AC',60),('BPP','Balikpapan','Kota','KI',61),('BRB','Hulu Sungai tengah','Kabupaten','KS',62),('BRG','Manggarai Timur','Kabupaten','NT',63),('BRK','Bolaang Mongondow Utara','Kabupaten','SA',64),('BRM','Mamberamo Raya','Kabupaten','PA',65),('BSB','Bintan','Kabupaten','KR',66),('BSK','Tanah Datar','Kabupaten','SB',67),('BT-SRG','Serang ','Kota','BT',68),('BTA','Ogan Komering Ulu','Kabupaten','SS',69),('BTG','Batang','Kabupaten','JT',70),('BTI','Teluk Bintuni','Kota','PB',71),('BTL','Bantul','Kabupaten','YO',72),('BTM','Batam','Kota','KR',73),('BTU','Batu','Kota','JI',74),('BTW','Waropen','Kabupaten','PA',75),('BUL','Buol','Kabupaten','ST',76),('BYL','Boyolali','Kabupaten','JT',77),('BYW','Banyuwangi','Kabupaten','JI',78),('CAG','Aceh Jaya','Kabupaten','AC',79),('CBI','Bogor','Kabupaten','JB',80),('CBN','Cirebon','Kota','JB',81),('CJR','Cianjur','Kabupaten','JB',82),('CKG','Jakarta Timur','Kota','JK',83),('CKR','Bekasi','Kabupaten','JB',84),('CLG','Cilegon','Kota','BT',85),('CLP','Cilacap','Kabupaten','JT',86),('CMH','Cimahi','Kota','JB',87),('CMS','Ciamis','Kabupaten','JB',88),('CPT','Tangerang Selatan','Kota','BT',89),('CRP','Rejang Lebong','Kabupaten','BE',90),('DGL',' Donggala','Kabupaten','ST',91),('DKL','Lingga','Kabupaten','KR',92),('DLS','Humbang Hasundutan','Kabupaten','SU',93),('DMK','Demak','Kabupaten','JT',94),('DOB','Kepulauan Aru','Kabupaten','MA',95),('DP','Denpasar ','Kota','BA',96),('DPK','Depok','Kota','JB',97),('DPU','Dompu','Kabupaten','NB',98),('DRH','Seram Bagian barat','Kabupaten','MA',99),('DTH','Seram Bagian Timur','Kabupaten','MA',100),('DUM','Dumai','Kota','RI',101),('ELL','Yalimo','Kabupaten','PA',102),('END','Ende','Kabupaten','NT',103),('ENR','Enrekang','Kabupaten','SN',104),('ERT','Paniai','Kabupaten','PA',105),('FEF','Tambrauw','Kabupaten','PB',106),('FFK','Fak Fak','Kabupaten','PB',107),('GDT','Pesawaran','Kabupaten','LA',108),('GGP','Jakarta Barat','Kota','JK',109),('GIN','Gianyar','Kabupaten','BA',110),('GNS','Lampung Tengah','Kabupaten','LA',111),('GNT','Padang Lawas Utara','Kabupaten','SU',112),('GO-GTO','Gorontalo','Kota','GO',113),('GRG','Lombok Barat','Kabupaten','NB',114),('GRT','Garut','Kabupaten','JB',115),('GSK','Gresik','Kabupaten','JI',116),('GST','Nias','Kabupaten','SU',117),('GTO','Gorontalo','Kabupaten','GO',118),('IDL','Ogan Ilir','Kabupaten','SS',119),('IDM','Indramayu','Kabupaten','JB',120),('ILG','Puncak','Kabupaten','PA',121),('JA-SPN','Sungai Penuh ','Kota','JA',122),('JAP','Jayapura','Kabupaten','PA',123),('JBG','Jombang','Kabupaten','JI',124),('JI-KDR','Kediri ','Kota','JI',125),('JI-MJK','Mojokerto ','Kota','JI',126),('JLL','Halmahera Barat','Kabupaten','MU',127),('JMB','Jambi','Kota','JA',128),('JMR','Jember','Kabupaten','JI',129),('JNP','Jeneponto','Kabupaten','SN',130),('JPA','Jepara','Kabupaten','JT',131),('JTH','Aceh Besar','Kabupaten','AC',132),('KAG','Ogan Komering Ilir','Kabupaten','SS',133),('KBA','Bangka Selatan','Kabupaten','BB',134),('KBG','Tolikara','Kabupaten','PA',135),('KBJ','Karo','Kabupaten','SU',136),('KBK','Mamberamo Tengah','Kabupaten','PA',137),('KBR','Kotabaru','Kabupaten','KS',138),('KDI','Kendari','Kota','SG',139),('KDL','Kendal','Kabupaten','JT',140),('KDR','Kediri','Kabupaten','JI',141),('KDS','Kudus','Kabupaten','JT',142),('KEP',' Mappi','Kabupaten','PA',143),('KFM','Timor Tengah Utara','Kabupaten','NT',144),('KGM','Dogiyai','Kabupaten','PA',145),('KGN','Hulu Sungai Selatan','Kabupaten','KS',146),('KIS ','Asahan','Kabupaten','SU',147),('KJN','Pekalongan','Kabupaten','JT',148),('KKA','Kolaka','Kota','SG',149),('KKN','Gunung Mas','Kabupaten','KT',150),('KLA','Lampung Selatan','Kabupaten','LA',151),('KLB','Alor','Kabupaten','NT',152),('KLK','Kapuas','Kabupaten','KT',153),('KLN','Klaten','Kabupaten','JT',154),('KLP','Seruyan','Kabupaten','KT',155),('KLT','Tanjung Jabung Barat','Kabupaten','JA',156),('KMN','Kaimana','Kota','PB',157),('KNG','Kuningan','Kabupaten','JB',158),('KNR','Blitar','Kabupaten','JI',159),('KOT','Tanggamus','Kabupaten','LA',160),('KPG','Kupang','Kabupaten','NT',161),('KPH','Kepahiang','Kabupaten','BE',162),('KPI','Labuhanbatu Selatan','Kabupaten','SU',163),('KPN','Kepanjen','Kabupaten','JI',164),('KRA','Karangasem','Kabupaten','BA',165),('KRB','Aceh Tamiang','Kabupaten','AC',166),('KRG','Karanganyar','Kabupaten','JT',167),('KRS','Probolinggo','Kabupaten','JI',168),('KRT','Bengkulu Tengah','Kabupaten','BE',169),('KSN','Katingan','Kabupaten','KT',170),('KSU','Kepulauan Seribu','Kabupaten','JK',171),('KTB','Lampung Utara','Kabupaten','LA',172),('KTG','Kotamobagu','Kota','SA',173),('KTN','Aceh Tenggara','Kabupaten','AC',174),('KTP','Ketapang','Kabupaten','KB',175),('KWD','Gorontalo Utara','Kabupaten','GO',176),('KWG','Karawang','Kabupaten','JB',177),('KYB','Jakarta Selatan','Kota','JK',178),('KYM','Nduga','Kabupaten','PA',179),('LBA','Halmahera Selatan','Kabupaten','MU',180),('LBB','Agam','Kabupaten','SB',181),('LBJ','Manggarai Barat','Kabupaten','NT',182),('LBP','Deli serdang','Kabupaten','SU',183),('LBS','Pasaman','Kabupaten','SB',184),('LGS','Aceh Timur','Kabupaten','AC',185),('LHM','Nias Barat','Kabupaten','SU',186),('LHT','Lahat','Kabupaten','SS',187),('LIW','Lampung Barat','Kabupaten','LA',188),('LLG','Lubuk Linggau','Kota','SS',189),('LLK','Bolaang Mongondow','Kabupaten','SA',190),('LLS','Kolaka Utara','Kabupaten','SG',191),('LMG','Lamongan','Kabupaten','JI',192),('LMJ','Lumajang','Kabupaten','JI',193),('LMP','Batu Bara','Kabupaten','SU',194),('LRT','Flores Timur','Kabupaten','NT',195),('LSK','Aceh Utara','Kabupaten','AC',196),('LSM','Lhokseumawe','Kota','AC',197),('LTU','Nias Utara','Kabupaten','SU',198),('LWK','Banggai','Kabupaten','ST',199),('LWL','Lembata','Kabupaten','NT',200),('MA-TUL','Tual','Kota','MA',201),('MAB','Halmahera Timur','Kabupaten','MU',202),('MAD','Madiun','Kota','JI',203),('MAK','Tana Toraja','Kabupaten','SN',204),('MAM','Mamuju','Kabupaten','SR',205),('MAR','Pahuwato','Kabupaten','GO',206),('MBN','Batanghari','Kabupaten','JA',207),('MBO','Aceh Barat','Kabupaten','AC',208),('MBY','Nagekeo','Kabupaten','NT',209),('MDN','Medan','Kota','SU',210),('MET','Metro','Kota','LA',211),('MGL','Magelang','Kota','JT',212),('MGN','Kepulauan Talaud','Kabupaten','SA',213),('MGR','Belitung Timur','Kabupaten','BB',214),('MGT','Magetan','Kabupaten','JI',215),('MGW','Badung','Kabupaten','BA',216),('MJK','Mojokerto','Kabupaten','JI',217),('MJL','Majalengka','Kabupaten','JB',218),('MJN','Majene','Kabupaten','SR',219),('MJY','Madiun','Kabupaten','JI',220),('MKM','Muko Muko','Kabupaten','BE',221),('MKS','Makasar','Kota','SN',222),('MLB','Musi Rawas','Kabupaten','SS',223),('MLG','Malang','Kota','JI',224),('MLL','Luwu Timur','Kabupaten','SN',225),('MLN','Malinau','Kabupaten','KU',226),('MME','Sikka','Kabupaten','NT',227),('MNA','Bengkulu Selatan','Kabupaten','BE',228),('MND','Manado','Kota','SA',229),('MNK','Manokwari','Kabupaten','PB',230),('MPR','Oku Timur','Kabupaten','SS',231),('MPW','Pontianak','Kabupaten','KB',232),('MRB','Bungo','Kabupaten','JA',233),('MRD','Oku Selatan','Kabupaten','SS',234),('MRE','Muara Enim','Kabupaten','SS',235),('MRH','Barito Kuala','Kabupaten','KS',236),('MRJ','Sijunjung','Kabupaten','SB',237),('MRK','Merauke','Kabupaten','PA',238),('MRN','Pidie Jaya','Kabupaten','AC',239),('MRS','Maros','Kabupaten','SN',240),('MRT','Tebo','Kabupaten','JA',241),('MSB','Luwu Utara','Kabupaten','SN',242),('MSH','Maluku Tengah','Kabupaten','MA',243),('MSJ','Mesuji','Kabupaten','LA',244),('MSK','Tanjung Jabung Timur','Kabupaten','JA',245),('MTK','Bangka Barat','Kabupaten','BB',246),('MTP','Banjar','Kabupaten','KS',247),('MTR','Mataram','Kota','NB',248),('MTS','Pulau Morotai','Kabupaten','MU',249),('MTW','Barito Utara','Kabupaten','KT',250),('MUL','Puncak Jaya','Kabupaten','PA',251),('NAB','Nabire','Kabupaten','PA',252),('NBA','Landak','Kabupaten','KB',253),('NGA','Jembrana','Kabupaten','BA',254),('NGW','Ngawi','Kabupaten','JI',255),('NJK','Nganjuk','Kabupaten','JI',256),('NLA','Buru','Kabupaten','MA',257),('NMR','Buru Selatan','Kabupaten','MA',258),('NNK','Nunukan','Kabupaten','KU',259),('NPH','Bandung Barat','Kabupaten','JB',260),('NT-KPG','Kupang','Kota','NT',261),('OSB','Pegunungan Bintang','Kabupaten','PA',262),('PA-JAP','Jayapura','Kota','PA',263),('PAD','Padang','Kota','SB',264),('PAL','Palu','Kota','ST',265),('PBG','Purbalingga','Kabupaten','JT',266),('PBL','Probolinggo','Kota','JI',267),('PBM','Prabumulih','Kota','SS',268),('PBR','Pekanbaru','Kota','RI',269),('PBU','Kotawaringin Barat','Kabupaten','KT',270),('PCT','Pacitan','Kabupaten','JI',271),('PDA','Solok Selatan','Kabupaten','SB',272),('PDG','Pandeglang','Kabupaten','BT',273),('PDP','Padang Panjang','Kota','SB',274),('PGA','Pagar Alam','Kota','SS',275),('PGP','Pangkal Pinang','Kota','BB',276),('PIN','Pinrang','Kabupaten','SN',277),('PKB','Banyuasin','Kabupaten','SS',278),('PKJ','Pangkajene Kepulauan','Kabupaten','SN',279),('PKK','Pelalawan','Kabupaten','RI',280),('PKL','Pekalongan','Kota','JT',281),('PKY','Mamuju Utara','Kabupaten','SR',282),('PLG','Palembang','Kota','SS',283),('PLI','Tanah Laut','Kabupaten','KS',284),('PLJ','Dharmasraya','Kabupaten','SB',285),('PLK','Palangkaraya','Kota','KT',286),('PLP','Luwu','Kabupaten','SN',287),('PLW','Polewali Mandar','Kabupaten','SR',288),('PMK','Pamekasan','Kabupaten','JI',289),('PML','Pemalang','Kabupaten','JT',290),('PMN','Pariaman','Kota','SB',291),('PMS','Simalungun','Kabupaten','SU',292),('PNG','Ponorogo','Kabupaten','JI',293),('PNJ','Penajam Paser Utara','Kabupaten','KI',294),('PNM','Padang Pariaman','Kabupaten','SB',295),('PNR','Pesisir Selatan','Kabupaten','SB',296),('PPS','Pulang pisau','Kabupaten','KT',297),('PRC','Murung Raya','Kabupaten','KT',298),('PRE','Pare Pare','Kota','SN',299),('PRG','Parigi Moutong','Kabupaten','ST',300),('PRN','Balangan','Kabupaten','KS',301),('PRP','Rokan Hulu','Kabupaten','RI',302),('PRR','Samosir','Kabupaten','SU',303),('PRW','Pringsewu','Kabupaten','LA',304),('PSN','Pasuruan','Kota','JI',305),('PSO','Poso','Kabupaten','ST',306),('PSP','Tapanuli Selatan','Kabupaten','SU',307),('PSR','Pasuruan','Kabupaten','JI',308),('PSW','Buton','Kabupaten','SG',309),('PTI','Pati','Kabupaten','JT',310),('PTK','Pontianak','Kota','KB',311),('PTS','Kapuas Hulu','Kabupaten','KB',312),('PWD','Grobogan','Kabupaten','JT',313),('PWK','Purwakarta','Kabupaten','JB',314),('PWR','Purworejo','Kabupaten','JT',315),('PYA','Lombok Tengah','Kabupaten','NB',316),('PYB','Mandailing Natal','Kabupaten','SU',317),('PYH','Payakumbuh','Kota','SB',318),('RAN','Natuna','Kabupaten','KR',319),('RAP','Labuhanbatu','Kabupaten','SU',320),('RAS','Teluk Wondama','Kota','PB',321),('RBG','Rembang','Kabupaten','JT',322),('RGB','Lamandau','Kabupaten','KT',323),('RGT','Indragiri Hulu','Kabupaten','RI',324),('RKB','Lebak','Kabupaten','BT',325),('RMB','Bombana','Kabupaten','SG',326),('RTA','Tapin','Kabupaten','KS',327),('RTG','Manggarai','Kabupaten','NT',328),('RTN','Minahasa Tenggara','Kabupaten','SA',329),('RTP','Toraja Utara','Kabupaten','SN',330),('SAB','Sabang','Kota','AC',331),('SAG','Sanggau','Kabupaten','KB',332),('SAK','Siak','Kabupaten','RI',333),('SAL ','Pakpak Bharat','Kabupaten','SU',334),('SBB','Sibu Raijua','Kabupaten','NT',335),('SBG','Tapanuli Tengah','Kabupaten','SU',336),('SBH','Padang Lawas','Kabupaten','SU',337),('SBM','Sukabumi','Kabupaten','JB',338),('SBR','Cirebon','Kabupaten','JB',339),('SBS','Sambas','Kabupaten','KB',340),('SBW','Sumbawa','Kabupaten','NB',341),('SBY','Surabaya','Kota','JI',342),('SDA','Sidoarjo','Kabupaten','JI',343),('SDK','Dairi','Kabupaten','SU',344),('SDN','Lampung Timur','Kabupaten','LA',345),('SDR','Sidenreng Rappang','Kabupaten','SN',346),('SDW','Kutai barat','Kabupaten','KI',347),('SED','Sedakau','Kabupaten','KB',348),('SEL','Lombok Timur','Kabupaten','NB',349),('SGB','Sigi','Kabupaten','ST',350),('SGI','Pidie','Kabupaten','AC',351),('SGL','Bangka','Kabupaten','BB',352),('SGM','Gowa','Kabupaten','SN',353),('SGN','Sragen','Kabupaten','JT',354),('SGP','Intan Jaya','Kabupaten','PA',355),('SGR','Buleleng','Kabupaten','BA',356),('SGT','Kutai Timur','Kabupaten','KI',357),('SIT','Situbondo','Kabupaten','JI',358),('SKB','Sukabumi','Kota','JB',359),('SKD','Kayong Utara','Kabupaten','KB',360),('SKG','Wajo','Kabupaten','SN',361),('SKH','Sukoharjo','Kabupaten','JT',362),('SKL','Aceh Singkil','Kabupaten','AC',363),('SKM','Nagan Raya','Kabupaten','AC',364),('SKN','Banggai Kepulauan','Kabupaten','ST',365),('SKR','Sukamara','Kabupaten','KT',366),('SKT','Surakarta','Kota','JT',367),('SKW','Singkawang','Kota','KB',368),('SKY','Musi Banyuasin','Kabupaten','SS',369),('SLK','Solok','Kota','SB',370),('SLT','Salatiga','Kota','JT',371),('SLW','Tegal','Kabupaten','JT',372),('SMD','Sumedang','Kabupaten','JB',373),('SMG','Semarang','Kota','JT',374),('SMH','Yahukimo','Kabupaten','PA',375),('SMI','Sarmi','Kabupaten','PA',376),('SML','Maluku Tenggara Barat','Kabupaten','MA',377),('SMN','Sleman','Kabupaten','YO',378),('SMR','Samarinda','Kota','KI',379),('SN-PLP','Palopo','Kota','SN',380),('SNB','Simeulue','Kabupaten','AC',381),('SNG','Subang','Kabupaten','JB',382),('SNJ','Sinjai','Kabupaten','SN',383),('SNN','Kepulauan Sula','Kabupaten','MU',384),('SNT','Muaro Jambi','Kabupaten','JA',385),('SOE','Timor Tengah Selatan','Kabupaten','NT',386),('SON','Sorong','Kota','PB',387),('SPA','Tasikmalaya','Kabupaten','JB',388),('SPE','Pasaman Barat','Kabupaten','SB',389),('SPG','Sampang','Kabupaten','JI',390),('SPN','Kerinci','Kabupaten','JA',391),('SPT','Kotawaringin Timur','Kabupaten','KT',392),('SRG','Serang','Kabupaten','BT',393),('SRH','Serdang Bedagai','Kabupaten','SU',394),('SRK','Lima Puluh Kota','Kabupaten','SB',395),('SRL','Sorolangun','Kabupaten','JA',396),('SRP','Klungkung','Kabupaten','BA',397),('SRU','Kepulauan Yapen','Kabupaten','PA',398),('SRW','Supiori','Kabupaten','PA',399),('SRY','Kubu Raya','Kabupaten','KB',400),('STB','Langkat','Kabupaten','SU',401),('STG','Sintang','Kabupaten','KB',402),('STR','Bener Meriah','Kabupaten','AC',403),('SU-GST','Gunungsitoli','Kota','SU',404),('SU-PMS','Pematangsiantar','Kota','SU',405),('SU-PSP','Padang Sidempuan','Kota','SU',406),('SU-SBG','Sibolga','Kota','SU',407),('SUS','Subulussalam','Kota','AC',408),('SWL','Sawahlunto','Kota','SB',409),('SWW','Bone bolango','Kabupaten','GO',410),('TAB','Tabanan','Kabupaten','BA',411),('TAM','Sumba Barat Daya','Kabupaten','NT',412),('TAR','Tarakan','Kota','KU',413),('TAS','Seluma','Kabupaten','BE',414),('TBG','Empat lawang','Kabupaten','SS',415),('TBH','Indragiri Hilir','Kabupaten','RI',416),('TBK','Karimun','Kabupaten','KR',417),('TBL','Bangka Selatan','Kabupaten','BB',418),('TBN','Tuban','Kabupaten','JI',419),('TBT','Tebing Tinggi','Kota','SU',420),('TDN','Belitung','Kabupaten','BB',421),('TDP','Tana Kidung','Kabupaten','KU',422),('TDR','Tidore','Kota','MU',423),('TGL','Tegal','Kota','JT',424),('TGR','Tangerang','Kabupaten','BT',425),('TGT','Paser','Kabupaten','KI',426),('THN','Kepulauan Sangihe','Kabupaten','SA',427),('TIG','Dieyai','Kabupaten','PA',428),('TIM','Mimika','Kabupaten','PA',429),('TJB','Tanjung Balai','Kota','SU',430),('TJG','Tabalong','Kabupaten','KS',431),('TJN','Lombok Utara','Kabupaten','NB',432),('TJP','Jakarta Utara','Kota','JK',433),('TJS','Bulungan','Kabupaten','KU',434),('TKA','Takalar','Kabupaten','SN',435),('TKN','Aceh Tengah','Kabupaten','AC',436),('TKR','Maluku Barat Daya','Kabupaten','MA',437),('TLD','Nias Selatan','Kabupaten','SU',438),('TLG','Tulungagung','Kabupaten','JI',439),('TLI','Toli Toli','Kabupaten','ST',440),('TLK','Kuantan Singingi','Kabupaten','RI',441),('TLW','Sumbawa Barat','Kabupaten','NB',442),('TMB','Sorong Selatan','Kabupaten','PB',443),('TMG','Temanggung','Kabupaten','JT',444),('TMH','Tomohon','Kota','SA',445),('TML','Barito Timur','Kabupaten','KS',446),('TMR','Boven Digoel','Kabupaten','PA',447),('TMT','Boalemo','Kabupaten','GO',448),('TNA','Jakarta Pusat','Kota','JK',449),('TNG','Tangerang','Kota','BT',450),('TNN','Minahasa','Kabupaten','SA',451),('TNR','Berau','Kabupaten','KI',452),('TOB','Halmahera Utara','Kabupaten','MU',453),('TOM','Lanny Jaya','Kabupaten','PA',454),('TPG','Tanjung Pinang','Kota','KR',455),('TPT','Kepulauan Mentawai','Kabupaten','SB',456),('TRG','Kutai Kertanegara','Kabupaten','KI',457),('TRK','Trenggalek','Kabupaten','JI',458),('TRP','Kepulauan Anambas','Kabupaten','KR',459),('TSM','Tasikmalaya','Kota','JB',460),('TTE','Ternate','Kota','MU',461),('TTG','Kepulauan Meranti','Kabupaten','RI',462),('TTN','Aceh Selatan','Kabupaten','AC',463),('TUB','Lebong','Kabupaten','BE',464),('TUL','Maluku Tenggara','Kabupaten','MA',465),('TWG','Tulang bawang Barat','Kabupaten','LA',466),('UJT','Rokan Hilir','Kabupaten','RI',467),('UNH','Konawe','Kabupaten','SG',468),('UNR','Semarang','Kabupaten','JT',469),('WAM','Jayawijaya','Kabupaten','PA',470),('WAS','Raja Ampat','Kabupaten','PB',471),('WAT','Kulon Progo','Kabupaten','YO',472),('WBL','Sumba Tengah','Kabupaten','NT',473),('WED','Halmahera Tengah','Kabupaten','MU',474),('WGD','Konawe Utara','Kabupaten','SG',475),('WGP','Sumba Timur','Kabupaten','NT',476),('WGW','Wakatobi','Kabupaten','SG',477),('WHO','Bima','Kabupaten','NB',478),('WKB','Sumba Barat','Kabupaten','NT',479),('WNG','Wonogiri','Kabupaten','JT',480),('WNS','Sopeng','Kabupaten','SN',482);
/*!40000 ALTER TABLE `kota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_user_id_foreign` (`user_id`),
  CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (9,'2014_10_12_000000_create_users_table',1),(10,'2014_10_12_100000_create_password_resets_table',1),(11,'2016_06_01_000001_create_oauth_auth_codes_table',1),(12,'2016_06_01_000002_create_oauth_access_tokens_table',1),(13,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(14,'2016_06_01_000004_create_oauth_clients_table',1),(15,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(16,'2018_02_07_040918_create_messages_table',1),(17,'2018_03_16_235229_alter_table__kota_add_id',2),(19,'2018_03_17_095422_alter_table_add_kota_id_on_users_id',3),(20,'2018_03_17_110756_create_companies_table',4),(21,'2018_03_17_113837_alter_table_companies_add_website',5),(22,'2018_03_17_130340_create_sales_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned DEFAULT NULL,
  `type` enum('Barang','Jasa') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `produk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,1,'Barang','test',40000,'2018-03-17 06:38:59','2018-03-17 06:38:59'),(3,1,'Jasa','kosmetik',30000,'2018-03-17 06:43:14','2018-03-17 06:50:18'),(5,10,'Barang','makanan',45000,'2018-03-17 06:53:28','2018-03-17 06:53:28'),(6,9,'Jasa','tukang ngecor',32000,'2018-03-17 06:53:54','2018-03-17 06:53:54');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kota_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (13,'admin','Admin','admin@example.com','$2y$10$4CqYr8ugcIFGYxvq12M/DOq6U48K9QWQ7h0CQe7YhlbTQ8L91SgQ6','2018-03-17','r1e8b1lu4kYavYX8cORnVhMgisZvl1R2j4uHqEyhRlGxVgx1meLvrIHmvrGG','346553','egreyte','2018-03-17 05:59:56','2018-03-17 05:59:56',3),(14,'admin1','Admin1','admin1@example.com','$2y$10$YHze9tcici/8LzQZ0Cws1ukmrNqH/sDx32bgW92nbTOLabgnCLp2S','2018-03-17',NULL,'32543543543','slkfderlnmrektw','2018-03-17 06:54:58','2018-03-17 06:54:58',6);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor` (
  `vendor_name` varchar(150) DEFAULT NULL,
  `vendor_adress` varchar(150) DEFAULT NULL,
  `vendor_city` varchar(15) DEFAULT NULL,
  `vendor_postcode` varchar(6) DEFAULT NULL,
  `vendor_phone1` varchar(50) DEFAULT NULL,
  `vendor_phone2` varchar(50) DEFAULT NULL,
  `vendor_fax` varchar(50) DEFAULT NULL,
  `vendor_mail` varchar(50) DEFAULT NULL,
  `vendor_website` varchar(150) DEFAULT NULL,
  `vendor_companytype` char(5) DEFAULT NULL,
  `vendor_startyear` char(4) DEFAULT NULL,
  `vendor_PKP` bit(1) DEFAULT NULL,
  `vendor_companyname` varchar(75) DEFAULT NULL,
  `is_active` bit(1) DEFAULT b'1',
  `vendor_username` varchar(50) DEFAULT NULL,
  `vendor_companylogo` varchar(200) DEFAULT NULL,
  `vendor_lastmodified` datetime DEFAULT NULL,
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`vendor_id`),
  KEY `vendor_city` (`vendor_city`) USING BTREE,
  KEY `vendor_username` (`vendor_username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=1365;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'testprogrammer'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-17 15:25:43
