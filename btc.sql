-- MySQL dump 10.14  Distrib 5.5.52-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: user8507_01btc
-- ------------------------------------------------------
-- Server version	5.5.52-MariaDB-cll-lve

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
-- Table structure for table `db_advpic`
--

DROP TABLE IF EXISTS `db_advpic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_advpic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `sum` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `url` varchar(50) NOT NULL,
  `banner` varchar(80) NOT NULL DEFAULT '/img/468x60.jpg',
  `date_add` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_advpic`
--

LOCK TABLES `db_advpic` WRITE;
/*!40000 ALTER TABLE `db_advpic` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_advpic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_baners`
--

DROP TABLE IF EXISTS `db_baners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_baners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `time_add` int(11) NOT NULL DEFAULT '0',
  `type` int(1) NOT NULL DEFAULT '1',
  `kolvo` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `baner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_baners`
--

LOCK TABLES `db_baners` WRITE;
/*!40000 ALTER TABLE `db_baners` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_baners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_bon_lp`
--

DROP TABLE IF EXISTS `db_bon_lp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_bon_lp` (
  `id` int(11) NOT NULL,
  `user` varchar(10) CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `sum` double NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL,
  `purse` varchar(20) NOT NULL,
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_bon_lp`
--

LOCK TABLES `db_bon_lp` WRITE;
/*!40000 ALTER TABLE `db_bon_lp` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_bon_lp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_bonus_list`
--

DROP TABLE IF EXISTS `db_bonus_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_bonus_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `sum` double NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_bonus_list`
--

LOCK TABLES `db_bonus_list` WRITE;
/*!40000 ALTER TABLE `db_bonus_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_bonus_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_bonus_listpayeer`
--

DROP TABLE IF EXISTS `db_bonus_listpayeer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_bonus_listpayeer` (
  `id` int(11) NOT NULL,
  `user` varchar(10) CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `sum` double NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL,
  `purse` varchar(20) NOT NULL,
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_bonus_listpayeer`
--

LOCK TABLES `db_bonus_listpayeer` WRITE;
/*!40000 ALTER TABLE `db_bonus_listpayeer` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_bonus_listpayeer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_chat_message`
--

DROP TABLE IF EXISTS `db_chat_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_chat_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(255) NOT NULL DEFAULT '',
  `user_to_id` int(11) NOT NULL DEFAULT '0',
  `user_to_name` varchar(255) CHARACTER SET cp1250 NOT NULL DEFAULT '',
  `time_add` int(11) NOT NULL DEFAULT '0',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `message` tinytext NOT NULL,
  `ava` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_chat_message`
--

LOCK TABLES `db_chat_message` WRITE;
/*!40000 ALTER TABLE `db_chat_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_chat_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_chat_online`
--

DROP TABLE IF EXISTS `db_chat_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_chat_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `time_add` int(11) NOT NULL DEFAULT '0',
  `ava` varchar(255) NOT NULL DEFAULT '',
  `banan` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_chat_online`
--

LOCK TABLES `db_chat_online` WRITE;
/*!40000 ALTER TABLE `db_chat_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_chat_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_conabrul`
--

DROP TABLE IF EXISTS `db_conabrul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_conabrul` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rules` text NOT NULL,
  `about` text NOT NULL,
  `contacts` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_conabrul`
--

LOCK TABLES `db_conabrul` WRITE;
/*!40000 ALTER TABLE `db_conabrul` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_conabrul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_config`
--

DROP TABLE IF EXISTS `db_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(10) NOT NULL DEFAULT '',
  `pass` varchar(20) NOT NULL DEFAULT '',
  `min_pay` double NOT NULL DEFAULT '15',
  `ser_per_wmr` int(11) NOT NULL DEFAULT '1000',
  `ser_per_wmz` int(11) NOT NULL DEFAULT '3300',
  `ser_per_wme` int(11) NOT NULL DEFAULT '4200',
  `percent_swap` int(11) NOT NULL DEFAULT '0',
  `percent_sell` int(2) NOT NULL DEFAULT '10',
  `items_per_coin` int(11) NOT NULL DEFAULT '7',
  `a_in_h` int(11) NOT NULL DEFAULT '0',
  `b_in_h` int(11) NOT NULL DEFAULT '0',
  `c_in_h` int(11) NOT NULL DEFAULT '0',
  `d_in_h` int(11) NOT NULL DEFAULT '0',
  `e_in_h` int(11) NOT NULL DEFAULT '0',
  `f_in_h` int(11) NOT NULL DEFAULT '0',
  `amount_a_t` int(11) NOT NULL DEFAULT '0',
  `amount_b_t` int(11) NOT NULL DEFAULT '0',
  `amount_c_t` int(11) NOT NULL DEFAULT '0',
  `amount_d_t` int(11) NOT NULL DEFAULT '0',
  `amount_e_t` int(11) NOT NULL DEFAULT '0',
  `amount_f_t` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_config`
--

LOCK TABLES `db_config` WRITE;
/*!40000 ALTER TABLE `db_config` DISABLE KEYS */;
INSERT INTO `db_config` VALUES (1,'admin','admin',20,100,5700,6100,15,50,100,40,85,440,2300,4750,14900,500,1000,5000,25000,50000,150000);
/*!40000 ALTER TABLE `db_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_games_coinflip`
--

DROP TABLE IF EXISTS `db_games_coinflip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_games_coinflip` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(40) COLLATE cp1251_bin NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT '0',
  `sum` int(10) NOT NULL DEFAULT '0',
  `stavka` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_games_coinflip`
--

LOCK TABLES `db_games_coinflip` WRITE;
/*!40000 ALTER TABLE `db_games_coinflip` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_games_coinflip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_games_kamikadze`
--

DROP TABLE IF EXISTS `db_games_kamikadze`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_games_kamikadze` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(40) COLLATE cp1251_bin NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT '0',
  `sum` int(10) NOT NULL DEFAULT '0',
  `stavka` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_games_kamikadze`
--

LOCK TABLES `db_games_kamikadze` WRITE;
/*!40000 ALTER TABLE `db_games_kamikadze` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_games_kamikadze` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_games_knb`
--

DROP TABLE IF EXISTS `db_games_knb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_games_knb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `summa` decimal(7,2) NOT NULL DEFAULT '0.00',
  `item` int(1) NOT NULL DEFAULT '0',
  `login` varchar(10) NOT NULL DEFAULT '',
  `dat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_games_knb`
--

LOCK TABLES `db_games_knb` WRITE;
/*!40000 ALTER TABLE `db_games_knb` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_games_knb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_insert_money`
--

DROP TABLE IF EXISTS `db_insert_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_insert_money` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `money` double NOT NULL DEFAULT '0',
  `serebro` int(11) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_insert_money`
--

LOCK TABLES `db_insert_money` WRITE;
/*!40000 ALTER TABLE `db_insert_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_insert_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_invcompetition`
--

DROP TABLE IF EXISTS `db_invcompetition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_invcompetition` (
  `id` int(11) NOT NULL,
  `1m` double NOT NULL DEFAULT '0',
  `2m` double NOT NULL DEFAULT '0',
  `3m` double NOT NULL DEFAULT '0',
  `4m` double NOT NULL DEFAULT '0',
  `5m` double NOT NULL DEFAULT '0',
  `user_1` varchar(10) NOT NULL,
  `user_2` varchar(10) NOT NULL,
  `user_3` varchar(10) NOT NULL,
  `user_4` varchar(10) NOT NULL,
  `user_5` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_end` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_invcompetition`
--

LOCK TABLES `db_invcompetition` WRITE;
/*!40000 ALTER TABLE `db_invcompetition` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_invcompetition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_invcompetition_users`
--

DROP TABLE IF EXISTS `db_invcompetition_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_invcompetition_users` (
  `id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_invcompetition_users`
--

LOCK TABLES `db_invcompetition_users` WRITE;
/*!40000 ALTER TABLE `db_invcompetition_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_invcompetition_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_kamikadze`
--

DROP TABLE IF EXISTS `db_kamikadze`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_kamikadze` (
  `id` int(11) NOT NULL,
  `user` varchar(10) CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item` int(2) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  `stavka` int(11) NOT NULL DEFAULT '0',
  `status` varchar(11) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_kamikadze`
--

LOCK TABLES `db_kamikadze` WRITE;
/*!40000 ALTER TABLE `db_kamikadze` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_kamikadze` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_lottery`
--

DROP TABLE IF EXISTS `db_lottery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user` varchar(10) NOT NULL DEFAULT '',
  `date_add` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_lottery`
--

LOCK TABLES `db_lottery` WRITE;
/*!40000 ALTER TABLE `db_lottery` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_lottery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_lottery_winners`
--

DROP TABLE IF EXISTS `db_lottery_winners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_lottery_winners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_a` varchar(10) NOT NULL DEFAULT '',
  `bil_a` int(11) NOT NULL DEFAULT '0',
  `user_b` varchar(10) NOT NULL DEFAULT '',
  `bil_b` int(11) NOT NULL DEFAULT '0',
  `user_c` varchar(10) NOT NULL DEFAULT '',
  `bil_c` int(11) NOT NULL DEFAULT '0',
  `bank` float NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_lottery_winners`
--

LOCK TABLES `db_lottery_winners` WRITE;
/*!40000 ALTER TABLE `db_lottery_winners` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_lottery_winners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_news`
--

DROP TABLE IF EXISTS `db_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `news` text NOT NULL,
  `date_add` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_news`
--

LOCK TABLES `db_news` WRITE;
/*!40000 ALTER TABLE `db_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_pay_dat`
--

DROP TABLE IF EXISTS `db_pay_dat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_pay_dat` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `sum` double NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_pay_dat`
--

LOCK TABLES `db_pay_dat` WRITE;
/*!40000 ALTER TABLE `db_pay_dat` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_pay_dat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_pay_systems`
--

DROP TABLE IF EXISTS `db_pay_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_pay_systems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `first_char` varchar(3) NOT NULL,
  `comment` text NOT NULL,
  `min_pay` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_pay_systems`
--

LOCK TABLES `db_pay_systems` WRITE;
/*!40000 ALTER TABLE `db_pay_systems` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_pay_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_payeer_insert`
--

DROP TABLE IF EXISTS `db_payeer_insert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_payeer_insert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user` varchar(10) NOT NULL DEFAULT '',
  `sum` double NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `system` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_payeer_insert`
--

LOCK TABLES `db_payeer_insert` WRITE;
/*!40000 ALTER TABLE `db_payeer_insert` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_payeer_insert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_payment`
--

DROP TABLE IF EXISTS `db_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `purse` varchar(20) NOT NULL DEFAULT '',
  `sum` double NOT NULL DEFAULT '0',
  `comission` double NOT NULL DEFAULT '0',
  `valuta` char(3) NOT NULL DEFAULT 'RUB',
  `serebro` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `pay_sys` varchar(100) NOT NULL DEFAULT '0',
  `pay_sys_id` int(11) NOT NULL DEFAULT '0',
  `response` int(1) NOT NULL DEFAULT '0',
  `payment_id` int(11) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_payment`
--

LOCK TABLES `db_payment` WRITE;
/*!40000 ALTER TABLE `db_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_recovery`
--

DROP TABLE IF EXISTS `db_recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_recovery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL DEFAULT '',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_recovery`
--

LOCK TABLES `db_recovery` WRITE;
/*!40000 ALTER TABLE `db_recovery` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_recovery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_regkey`
--

DROP TABLE IF EXISTS `db_regkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_regkey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL DEFAULT '',
  `referer_id` int(11) NOT NULL DEFAULT '0',
  `referer_name` varchar(10) NOT NULL DEFAULT '',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_regkey`
--

LOCK TABLES `db_regkey` WRITE;
/*!40000 ALTER TABLE `db_regkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_regkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_sell_items`
--

DROP TABLE IF EXISTS `db_sell_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_sell_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `a_s` int(11) NOT NULL DEFAULT '0',
  `b_s` int(11) NOT NULL DEFAULT '0',
  `c_s` int(11) NOT NULL DEFAULT '0',
  `d_s` int(11) NOT NULL DEFAULT '0',
  `e_s` int(11) NOT NULL DEFAULT '0',
  `f_s` int(11) NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `all_sell` int(11) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_sell_items`
--

LOCK TABLES `db_sell_items` WRITE;
/*!40000 ALTER TABLE `db_sell_items` DISABLE KEYS */;
INSERT INTO `db_sell_items` VALUES (1,'realist',1,77,328,425,0,0,0,16.6,830,1488277833,1489573833),(2,'realist',1,1,4,5,0,0,0,0.2,10,1488277877,1489573877),(3,'realist',1,2,7,9,0,0,0,0.18,18,1488277951,1489573951);
/*!40000 ALTER TABLE `db_sell_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_sender`
--

DROP TABLE IF EXISTS `db_sender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_sender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `mess` text NOT NULL,
  `page` int(5) NOT NULL DEFAULT '0',
  `sended` int(7) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_sender`
--

LOCK TABLES `db_sender` WRITE;
/*!40000 ALTER TABLE `db_sender` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_sender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_serfing`
--

DROP TABLE IF EXISTS `db_serfing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_serfing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `time_add` int(11) NOT NULL DEFAULT '0',
  `title` varchar(55) NOT NULL,
  `desc` varchar(55) NOT NULL,
  `url` varchar(255) NOT NULL,
  `timer` enum('20','30','40','50','60') NOT NULL DEFAULT '20',
  `move` enum('0','1','','') NOT NULL DEFAULT '0',
  `high` enum('0','1','','') NOT NULL DEFAULT '0',
  `speed` enum('1','2','3','4','5','6','7') NOT NULL DEFAULT '1',
  `baner` enum('0','1','','') NOT NULL,
  `baner_url` varchar(250) NOT NULL,
  `crev` enum('0','1','','') NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `money` double(10,2) NOT NULL DEFAULT '0.00',
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_serfing`
--

LOCK TABLES `db_serfing` WRITE;
/*!40000 ALTER TABLE `db_serfing` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_serfing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_serfing_view`
--

DROP TABLE IF EXISTS `db_serfing_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_serfing_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) NOT NULL DEFAULT '0',
  `time_add` datetime NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_serfing_view`
--

LOCK TABLES `db_serfing_view` WRITE;
/*!40000 ALTER TABLE `db_serfing_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_serfing_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_statday`
--

DROP TABLE IF EXISTS `db_statday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_statday` (
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` int(25) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_statday`
--

LOCK TABLES `db_statday` WRITE;
/*!40000 ALTER TABLE `db_statday` DISABLE KEYS */;
INSERT INTO `db_statday` VALUES ('188.166.1.190',1488670784),('130.193.51.62',1488708254),('37.23.9.29',1488700762),('212.193.117.245',1488691493),('82.146.49.235',1488691106),('130.193.50.2',1488681634);
/*!40000 ALTER TABLE `db_statday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_statonline`
--

DROP TABLE IF EXISTS `db_statonline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_statonline` (
  `user` int(11) NOT NULL DEFAULT '0',
  `away` int(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_statonline`
--

LOCK TABLES `db_statonline` WRITE;
/*!40000 ALTER TABLE `db_statonline` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_statonline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_stats`
--

DROP TABLE IF EXISTS `db_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `all_users` int(11) NOT NULL DEFAULT '0',
  `all_payments` double NOT NULL DEFAULT '0',
  `all_insert` double NOT NULL DEFAULT '0',
  `donations` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_stats`
--

LOCK TABLES `db_stats` WRITE;
/*!40000 ALTER TABLE `db_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_stats_btree`
--

DROP TABLE IF EXISTS `db_stats_btree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_stats_btree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user` varchar(10) NOT NULL DEFAULT '',
  `tree_name` varchar(10) NOT NULL DEFAULT '',
  `amount` double NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_stats_btree`
--

LOCK TABLES `db_stats_btree` WRITE;
/*!40000 ALTER TABLE `db_stats_btree` DISABLE KEYS */;
INSERT INTO `db_stats_btree` VALUES (1,1,'realist','BlackCoin',5000,1488274368,1489570368),(2,1,'realist','DashCoin',4000,1488274376,1489570376),(3,1,'realist','NameCoin',1000,1488274382,1489570382);
/*!40000 ALTER TABLE `db_stats_btree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_swap_ser`
--

DROP TABLE IF EXISTS `db_swap_ser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_swap_ser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user` varchar(10) NOT NULL DEFAULT '',
  `amount_b` double NOT NULL DEFAULT '0',
  `amount_p` double NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_swap_ser`
--

LOCK TABLES `db_swap_ser` WRITE;
/*!40000 ALTER TABLE `db_swap_ser` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_swap_ser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_users_a`
--

DROP TABLE IF EXISTS `db_users_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_users_a` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `pass` varchar(20) NOT NULL DEFAULT '',
  `plat_pass` varchar(50) NOT NULL DEFAULT '0',
  `referer` varchar(10) NOT NULL DEFAULT '',
  `referer_id` int(11) NOT NULL DEFAULT '0',
  `referals` int(11) NOT NULL DEFAULT '0',
  `date_reg` int(11) NOT NULL DEFAULT '0',
  `date_login` int(11) NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `banned` int(1) NOT NULL DEFAULT '0',
  `ava` varchar(255) NOT NULL DEFAULT '',
  `chat_moder` int(1) NOT NULL DEFAULT '0',
  `ban_chat` int(1) NOT NULL DEFAULT '0',
  `hide` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--



--
-- Table structure for table `db_users_b`
--

DROP TABLE IF EXISTS `db_users_b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_users_b` (
  `id` int(11) NOT NULL DEFAULT '0',
  `user` varchar(10) NOT NULL DEFAULT '',
  `money_b` double NOT NULL DEFAULT '0',
  `money_p` double NOT NULL DEFAULT '0',
  `a_t` int(11) NOT NULL DEFAULT '0',
  `b_t` int(11) NOT NULL DEFAULT '0',
  `c_t` int(11) NOT NULL DEFAULT '0',
  `d_t` int(11) NOT NULL DEFAULT '0',
  `e_t` int(11) NOT NULL DEFAULT '0',
  `f_t` int(11) NOT NULL DEFAULT '0',
  `a_b` int(11) NOT NULL DEFAULT '0',
  `b_b` int(11) NOT NULL DEFAULT '0',
  `c_b` int(11) NOT NULL DEFAULT '0',
  `d_b` int(11) NOT NULL DEFAULT '0',
  `e_b` int(11) NOT NULL DEFAULT '0',
  `f_b` int(11) NOT NULL DEFAULT '0',
  `all_time_a` int(11) NOT NULL DEFAULT '0',
  `all_time_b` int(11) NOT NULL DEFAULT '0',
  `all_time_c` int(11) NOT NULL DEFAULT '0',
  `all_time_d` int(11) NOT NULL DEFAULT '0',
  `all_time_e` int(11) NOT NULL DEFAULT '0',
  `all_time_f` int(11) NOT NULL DEFAULT '0',
  `last_sbor` int(11) NOT NULL DEFAULT '0',
  `from_referals` double NOT NULL DEFAULT '0',
  `to_referer` double NOT NULL DEFAULT '0',
  `payment_sum` double NOT NULL DEFAULT '0',
  `insert_sum` double NOT NULL DEFAULT '0',
  `chat` int(11) NOT NULL DEFAULT '0',
  `chat_money` double(10,2) NOT NULL DEFAULT '0.00',
  `bonuspayeer` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--



--
-- Table structure for table `paybanner`
--

DROP TABLE IF EXISTS `paybanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paybanner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `name` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL,
  `kow` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `description` int(11) NOT NULL DEFAULT '0',
  `url` varchar(50) NOT NULL,
  `url_ban` varchar(80) NOT NULL DEFAULT '/img/468x60.jpg',
  `name_baner` int(11) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL,
  `day_ban` int(11) NOT NULL,
  `date_del` int(11) NOT NULL DEFAULT '0',
  `pay` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paybanner`
--

LOCK TABLES `paybanner` WRITE;
/*!40000 ALTER TABLE `paybanner` DISABLE KEYS */;
/*!40000 ALTER TABLE `paybanner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-05 15:29:52
