/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.6.12-log : Database - disability_aid
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`disability_aid` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `disability_aid`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add login',7,'add_login'),
(26,'Can change login',7,'change_login'),
(27,'Can delete login',7,'delete_login'),
(28,'Can view login',7,'view_login'),
(29,'Can add user',8,'add_user'),
(30,'Can change user',8,'change_user'),
(31,'Can delete user',8,'delete_user'),
(32,'Can view user',8,'view_user'),
(33,'Can add transport',9,'add_transport'),
(34,'Can change transport',9,'change_transport'),
(35,'Can delete transport',9,'delete_transport'),
(36,'Can view transport',9,'view_transport'),
(37,'Can add panchayat',10,'add_panchayat'),
(38,'Can change panchayat',10,'change_panchayat'),
(39,'Can delete panchayat',10,'delete_panchayat'),
(40,'Can view panchayat',10,'view_panchayat'),
(41,'Can add hospital',11,'add_hospital'),
(42,'Can change hospital',11,'change_hospital'),
(43,'Can delete hospital',11,'delete_hospital'),
(44,'Can view hospital',11,'view_hospital'),
(45,'Can add concession',12,'add_concession'),
(46,'Can change concession',12,'change_concession'),
(47,'Can delete concession',12,'delete_concession'),
(48,'Can view concession',12,'view_concession'),
(49,'Can add p ension',13,'add_pension'),
(50,'Can change p ension',13,'change_pension'),
(51,'Can delete p ension',13,'delete_pension'),
(52,'Can view p ension',13,'view_pension'),
(53,'Can add pension_logs',14,'add_pension_logs'),
(54,'Can change pension_logs',14,'change_pension_logs'),
(55,'Can delete pension_logs',14,'delete_pension_logs'),
(56,'Can view pension_logs',14,'view_pension_logs'),
(57,'Can add feedback',15,'add_feedback'),
(58,'Can change feedback',15,'change_feedback'),
(59,'Can delete feedback',15,'delete_feedback'),
(60,'Can view feedback',15,'view_feedback');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user` */

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `disability_aid_concession` */

DROP TABLE IF EXISTS `disability_aid_concession`;

CREATE TABLE `disability_aid_concession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `concession` varchar(100) NOT NULL,
  `from_place` varchar(100) NOT NULL,
  `to_place` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `TRANSPORT_id` int(11) NOT NULL,
  `USER_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `disability_aid_conce_TRANSPORT_id_23c8da82_fk_disabilit` (`TRANSPORT_id`),
  KEY `disability_aid_conce_USER_id_bba3d63b_fk_disabilit` (`USER_id`),
  CONSTRAINT `disability_aid_conce_TRANSPORT_id_23c8da82_fk_disabilit` FOREIGN KEY (`TRANSPORT_id`) REFERENCES `disability_aid_transport` (`id`),
  CONSTRAINT `disability_aid_conce_USER_id_bba3d63b_fk_disabilit` FOREIGN KEY (`USER_id`) REFERENCES `disability_aid_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `disability_aid_concession` */

insert  into `disability_aid_concession`(`id`,`concession`,`from_place`,`to_place`,`status`,`TRANSPORT_id`,`USER_id`) values 
(1,'Handicapped','kottayam','pala','approved',1,1),
(2,'Blind','pala','kottayam','approved',1,1),
(3,'Blind','kanjirappally','Erumely','approved',1,1),
(4,'Handicapped','kochi','Thrissur','approved',1,1),
(5,'Deaf','pala','kottayam','approved',1,1),
(6,'Blind','palakkad','Thrissur','approved',1,1),
(7,'Deaf','Thrissur','Palakkad','approved',1,1),
(8,'Handicapped','Kottayam','pala','approved',1,8),
(9,'Blind','Kanjirappally','Koovappally','approved',1,8),
(10,'Deaf','Thrissur','Palakkad','approved',5,8),
(11,'Blind','Kottayam','Pala','approved',5,8);

/*Table structure for table `disability_aid_feedback` */

DROP TABLE IF EXISTS `disability_aid_feedback`;

CREATE TABLE `disability_aid_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `feedback` varchar(100) NOT NULL,
  `USER_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `disability_aid_feedb_USER_id_03de20d1_fk_disabilit` (`USER_id`),
  CONSTRAINT `disability_aid_feedb_USER_id_03de20d1_fk_disabilit` FOREIGN KEY (`USER_id`) REFERENCES `disability_aid_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `disability_aid_feedback` */

insert  into `disability_aid_feedback`(`id`,`date`,`feedback`,`USER_id`) values 
(1,'2024-03-07','abcd',8);

/*Table structure for table `disability_aid_hospital` */

DROP TABLE IF EXISTS `disability_aid_hospital`;

CREATE TABLE `disability_aid_hospital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `LOGIN_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `disability_aid_hospi_LOGIN_id_2b3650e2_fk_disabilit` (`LOGIN_id`),
  CONSTRAINT `disability_aid_hospi_LOGIN_id_2b3650e2_fk_disabilit` FOREIGN KEY (`LOGIN_id`) REFERENCES `disability_aid_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `disability_aid_hospital` */

insert  into `disability_aid_hospital`(`id`,`name`,`email`,`phone`,`place`,`post`,`pin`,`latitude`,`longitude`,`LOGIN_id`) values 
(2,'mary queenshospital','maryqueens@gmail.com','8281769748','kanjirappally','kanjirappally','670602','9.528409416081304','76.82229304068383',5);

/*Table structure for table `disability_aid_login` */

DROP TABLE IF EXISTS `disability_aid_login`;

CREATE TABLE `disability_aid_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `disability_aid_login` */

insert  into `disability_aid_login`(`id`,`username`,`password`,`user_type`) values 
(1,'a','abcd','admin'),
(2,'fortune@gmail.com','6002','transport'),
(5,'maryqueens@gmail.com','4030','hospital'),
(6,'ann@gmail.com','ann123','user'),
(7,'future@gmail.com','8706','transport'),
(8,'koovappally@gmail.com','9779','panchayat'),
(9,'easteleri@gmail.com','8833','panchayat'),
(11,'annmariyashaju51@gmail.com','Ann@123','user'),
(12,'vijicakarakkattu01@gamil.com','Viji@123','user'),
(13,'focus@gmail.com','6667','transport'),
(14,'karakkattushaju@gmail.com','Shaju@123','user'),
(15,'kottayam@gmail.com','126','panchayat');

/*Table structure for table `disability_aid_panchayat` */

DROP TABLE IF EXISTS `disability_aid_panchayat`;

CREATE TABLE `disability_aid_panchayat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `LOGIN_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `disability_aid_panch_LOGIN_id_c2866f91_fk_disabilit` (`LOGIN_id`),
  CONSTRAINT `disability_aid_panch_LOGIN_id_c2866f91_fk_disabilit` FOREIGN KEY (`LOGIN_id`) REFERENCES `disability_aid_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `disability_aid_panchayat` */

insert  into `disability_aid_panchayat`(`id`,`name`,`email`,`phone`,`place`,`post`,`pin`,`LOGIN_id`) values 
(1,'koovappally panchayath','koovappally@gmail.com','9605240748','kanjirappally','kanjirappally','601278',8),
(2,'easteleri','easteleri@gmail.com','7306140092','kochi','kochi','600127',9),
(3,'kottayam panchayath','kottayam@gmail.com','8086807078','kottayam','kottayam','670021',15);

/*Table structure for table `disability_aid_pension` */

DROP TABLE IF EXISTS `disability_aid_pension`;

CREATE TABLE `disability_aid_pension` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `PANCHAYAT_id` int(11) NOT NULL,
  `USER_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `disability_aid_pensi_PANCHAYAT_id_bf05d257_fk_disabilit` (`PANCHAYAT_id`),
  KEY `disability_aid_pensi_USER_id_e8665e3d_fk_disabilit` (`USER_id`),
  CONSTRAINT `disability_aid_pensi_PANCHAYAT_id_bf05d257_fk_disabilit` FOREIGN KEY (`PANCHAYAT_id`) REFERENCES `disability_aid_panchayat` (`id`),
  CONSTRAINT `disability_aid_pensi_USER_id_e8665e3d_fk_disabilit` FOREIGN KEY (`USER_id`) REFERENCES `disability_aid_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `disability_aid_pension` */

insert  into `disability_aid_pension`(`id`,`file`,`status`,`PANCHAYAT_id`,`USER_id`,`date`) values 
(1,'Agriculture','',1,8,''),
(2,'Agriculture','',1,8,''),
(3,'/static/pics20240227_115854.pdf','Approved',2,8,'2024-02-27'),
(4,'/static/pics20240229_152327.pdf','Approved',2,8,'2024-02-29'),
(5,'/static/pics20240307_104959.pdf','Approved',2,8,'2024-03-07');

/*Table structure for table `disability_aid_pension_logs` */

DROP TABLE IF EXISTS `disability_aid_pension_logs`;

CREATE TABLE `disability_aid_pension_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `PENSION_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `disability_aid_pensi_PENSION_id_aa14d687_fk_disabilit` (`PENSION_id`),
  CONSTRAINT `disability_aid_pensi_PENSION_id_aa14d687_fk_disabilit` FOREIGN KEY (`PENSION_id`) REFERENCES `disability_aid_pension` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `disability_aid_pension_logs` */

insert  into `disability_aid_pension_logs`(`id`,`date`,`time`,`amount`,`PENSION_id`) values 
(1,'2024-02-07','10:05','1000',5),
(2,'2024-03-07','15:40','750',5);

/*Table structure for table `disability_aid_transport` */

DROP TABLE IF EXISTS `disability_aid_transport`;

CREATE TABLE `disability_aid_transport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `LOGIN_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `disability_aid_trans_LOGIN_id_be8af6bd_fk_disabilit` (`LOGIN_id`),
  CONSTRAINT `disability_aid_trans_LOGIN_id_be8af6bd_fk_disabilit` FOREIGN KEY (`LOGIN_id`) REFERENCES `disability_aid_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `disability_aid_transport` */

insert  into `disability_aid_transport`(`id`,`name`,`email`,`phone`,`place`,`post`,`pin`,`LOGIN_id`) values 
(1,'Fortune','fortune@gmail.com','8281155746','Kottayam','Koovappally','673211',2),
(3,'Future','future@gmail.com','8003478100','kochi','kochi','670052',7),
(5,'Focus GLobal','focus@gmail.com','8086807078','Kottayam','Pala','686574',13);

/*Table structure for table `disability_aid_user` */

DROP TABLE IF EXISTS `disability_aid_user`;

CREATE TABLE `disability_aid_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `LOGIN_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `disability_aid_user_LOGIN_id_bd5ad4be_fk_disability_aid_login_id` (`LOGIN_id`),
  CONSTRAINT `disability_aid_user_LOGIN_id_bd5ad4be_fk_disability_aid_login_id` FOREIGN KEY (`LOGIN_id`) REFERENCES `disability_aid_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `disability_aid_user` */

insert  into `disability_aid_user`(`id`,`photo`,`name`,`email`,`phone`,`place`,`post`,`pin`,`LOGIN_id`) values 
(1,'abc','anu','anu@gmail.com','8086807071','Kannur','kannur','670021',6),
(2,'asm','anju','anju@gmail.com','9142873109','pala','pala','302011',6),
(4,'mnv','Riya','riya@gmail.com','7090441204','Kasargod','kasargod','670511',6),
(5,'qwe','Liya','liya@gmail.com','8157981900','Kottayam','Kottayam','432100',6),
(6,'asd','Neha','neha@gmail.com','9033607112','Kannur','Thalassery','670032',6),
(7,'bdf','Athira','athira@gmail.com','7020144778','Kochi','Kochi','702214',6),
(8,'/static/pics20240220_121630.jpg','Ann Mariya Shaju','annmariyashaju51@gmail.com','8281155748','Cherupuzha','Kadumeni','670511',11),
(9,'/static/pics20240221_212217.jpg','Viji Shaju','vijicakarakkattu01@gamil.com','8281769748','Cherupuzha','Kadumeni','670511',12),
(10,'/static/pics20240226_223549.jpg','Shaju','karakkattushaju@gmail.com','9605240748','Kannur','Kadumeni','670511',14);

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(12,'disability_aid','concession'),
(15,'disability_aid','feedback'),
(11,'disability_aid','hospital'),
(7,'disability_aid','login'),
(10,'disability_aid','panchayat'),
(13,'disability_aid','pension'),
(14,'disability_aid','pension_logs'),
(9,'disability_aid','transport'),
(8,'disability_aid','user'),
(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2024-02-12 09:29:11.441921'),
(2,'auth','0001_initial','2024-02-12 09:29:11.835116'),
(3,'admin','0001_initial','2024-02-12 09:29:11.923199'),
(4,'admin','0002_logentry_remove_auto_add','2024-02-12 09:29:11.934260'),
(5,'admin','0003_logentry_add_action_flag_choices','2024-02-12 09:29:11.943263'),
(6,'contenttypes','0002_remove_content_type_name','2024-02-12 09:29:12.002464'),
(7,'auth','0002_alter_permission_name_max_length','2024-02-12 09:29:12.028629'),
(8,'auth','0003_alter_user_email_max_length','2024-02-12 09:29:12.059046'),
(9,'auth','0004_alter_user_username_opts','2024-02-12 09:29:12.067199'),
(10,'auth','0005_alter_user_last_login_null','2024-02-12 09:29:12.097267'),
(11,'auth','0006_require_contenttypes_0002','2024-02-12 09:29:12.100671'),
(12,'auth','0007_alter_validators_add_error_messages','2024-02-12 09:29:12.110015'),
(13,'auth','0008_alter_user_username_max_length','2024-02-12 09:29:12.140926'),
(14,'auth','0009_alter_user_last_name_max_length','2024-02-12 09:29:12.174506'),
(15,'auth','0010_alter_group_name_max_length','2024-02-12 09:29:12.206242'),
(16,'auth','0011_update_proxy_permissions','2024-02-12 09:29:12.214839'),
(17,'auth','0012_alter_user_first_name_max_length','2024-02-12 09:29:12.247501'),
(18,'disability_aid','0001_initial','2024-02-12 09:29:12.546776'),
(19,'sessions','0001_initial','2024-02-12 09:29:12.578407'),
(20,'disability_aid','0002_pension','2024-02-26 14:52:02.154548'),
(21,'disability_aid','0003_auto_20240227_1124','2024-02-27 05:55:49.692780'),
(22,'disability_aid','0004_pension_date','2024-02-27 06:17:09.770510'),
(23,'disability_aid','0005_feedback_pension_logs','2024-03-07 04:17:29.426480');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('cb8wp8oqzchebnn275jsr7ss2er9tmz1','eyJsaWQiOjEsImhlYWQiOiJWaWV3IFBhbmNoYXlhdCJ9:1rZY5t:YeYDqCrQg_Sm4s88cTttb1BZx48jnouc3t37XJ4lwYs','2024-02-26 15:19:41.611785'),
('cubw001496fygonzszh25vqb7y5s377q','eyJsaWQiOjE1LCJoZWFkIjoiVmlldyBQYW5jaGF5YXQifQ:1rfdHL:Zmo5ujmsCZrjvZSTzV-yLGle-8PS-zbwdxZ1C1dgpv0','2024-03-14 10:04:39.748510'),
('d33e2ciet0uc3im3o20srjk1j1nfzdzs','eyJsaWQiOjExLCJoZWFkIjoiIn0:1riAiN:Cv49wPMeaCSjnztj2EwYuMN-OMMLkdSZ5SYgni7sZ9Y','2024-03-21 10:11:03.016269'),
('fqi9yq5ck9cxq6034syv8b5ldwbrlett','eyJoZWFkIjoiVmlldyBUcmFuc3BvcnQifQ:1rZnqo:gE69JwymLkWDFw977iyRzmcXBlv3FUej4H5Y1L4ZGaI','2024-02-27 08:09:10.270838');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
