/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.0.77-community-nt : Database - bloodbank
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bloodbank` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bloodbank`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(4) default NULL,
  `name` varchar(7) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group` */

insert  into `auth_group`(`id`,`name`) values (3,'DONOR'),(2,'PATIENT'),(1,'patient');

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(4) default NULL,
  `group_id` int(4) default NULL,
  `permission_id` int(4) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group_permissions` */

insert  into `auth_group_permissions`(`id`,`group_id`,`permission_id`) values (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44);

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(4) default NULL,
  `content_type_id` int(4) default NULL,
  `codename` varchar(19) default NULL,
  `name` varchar(24) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`content_type_id`,`codename`,`name`) values (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_stock','Can add stock'),(26,7,'change_stock','Can change stock'),(27,7,'delete_stock','Can delete stock'),(28,7,'view_stock','Can view stock'),(29,8,'add_bloodrequest','Can add blood request'),(30,8,'change_bloodrequest','Can change blood request'),(31,8,'delete_bloodrequest','Can delete blood request'),(32,8,'view_bloodrequest','Can view blood request'),(33,9,'add_donor','Can add donor'),(34,9,'change_donor','Can change donor'),(35,9,'delete_donor','Can delete donor'),(36,9,'view_donor','Can view donor'),(37,10,'add_blooddonate','Can add blood donate'),(38,10,'change_blooddonate','Can change blood donate'),(39,10,'delete_blooddonate','Can delete blood donate'),(40,10,'view_blooddonate','Can view blood donate'),(41,11,'add_patient','Can add patient'),(42,11,'change_patient','Can change patient'),(43,11,'delete_patient','Can delete patient'),(44,11,'view_patient','Can view patient');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(4) default NULL,
  `password` varchar(88) default NULL,
  `last_login` varchar(10) default NULL,
  `is_superuser` int(4) default NULL,
  `username` varchar(12) default NULL,
  `last_name` varchar(6) default NULL,
  `email` varchar(15) default NULL,
  `is_staff` int(4) default NULL,
  `is_active` int(4) default NULL,
  `date_joined` varchar(10) default NULL,
  `first_name` varchar(6) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`,`first_name`) values (1,'pbkdf2_sha256$390000$oTiK4PVuDwx75R3jnTTemF$FiCoy0yblODU1acwtd9e7VpMbNIRonrrPkFezUAWLII=','',1,'lenovo','','',1,1,'2023-02-15',''),(2,'pbkdf2_sha256$390000$H5BW4nrHckjnCS6Fk3YTAr$aDiJIDlUi0haiBoSnbMGiZvw2QlMfdY/iQrprJDw8zo=','2023-02-15',1,'aksh','','',1,1,'2023-02-15',''),(4,'pbkdf2_sha256$260000$5XZB15h284XNXlNrglGydo$bjbgs1ysfZ7iPlmC/3o0b1wvC/qISi3wSi5eUoqt1x0=','2023-02-27',1,'vivek','','vivek@gmail.com',1,1,'2023-02-27',''),(5,'pbkdf2_sha256$390000$YcmT54VKiECpTczhoIxUpy$ih8rPjGTChCAvHg7EfOQdas7ufNfqjC0T6rLdmXOr30=','2023-03-10',0,'aditi.kapoor','Kapoor','',0,1,'2023-03-10','Aditi'),(6,'pbkdf2_sha256$390000$rvqbMmSDwwUw75ZWTAnICg$y3BQmfPDqsYwyzREv/pXfXy2q8SedZpdB8gjasAXCpQ=','2023-03-10',0,'aditya.singh','Singh','',0,1,'2023-03-10','Aditya'),(7,'pbkdf2_sha256$390000$ZYR5w53OoQlxj8ZD0Xiggt$Xa08d/nrJz7QXx/1LAixNsPTXxqZp/MDx4FKvJV+KsQ=','2023-03-10',1,'admin@12','','',1,1,'2023-03-10','');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(4) default NULL,
  `user_id` int(4) default NULL,
  `group_id` int(4) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_groups` */

insert  into `auth_user_groups`(`id`,`user_id`,`group_id`) values (2,5,2),(3,6,3);

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` varchar(0) default NULL,
  `user_id` varchar(0) default NULL,
  `permission_id` varchar(0) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `blood_bloodrequest` */

DROP TABLE IF EXISTS `blood_bloodrequest`;

CREATE TABLE `blood_bloodrequest` (
  `id` int(4) default NULL,
  `reason` varchar(5) default NULL,
  `bloodgroup` varchar(2) default NULL,
  `unit` int(4) default NULL,
  `status` varchar(8) default NULL,
  `patient_age` int(4) default NULL,
  `patient_name` varchar(6) default NULL,
  `request_by_donor_id` varchar(1) default NULL,
  `request_by_patient_id` varchar(1) default NULL,
  `date` varchar(0) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `blood_bloodrequest` */

insert  into `blood_bloodrequest`(`id`,`reason`,`bloodgroup`,`unit`,`status`,`patient_age`,`patient_name`,`request_by_donor_id`,`request_by_patient_id`,`date`) values (2,'fevar','A+',5,'Approved',25,'Aditi','','2',''),(3,'Cold','A+',5,'Approved',27,'Aditya','1','','');

/*Table structure for table `blood_stock` */

DROP TABLE IF EXISTS `blood_stock`;

CREATE TABLE `blood_stock` (
  `id` int(4) default NULL,
  `bloodgroup` varchar(3) default NULL,
  `unit` int(4) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `blood_stock` */

insert  into `blood_stock`(`id`,`bloodgroup`,`unit`) values (1,'A+',20),(2,'A-',0),(3,'B+',0),(4,'B-',0),(5,'AB+',0),(6,'AB-',0),(7,'O+',10),(8,'O-',0);

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(4) default NULL,
  `object_id` int(4) default NULL,
  `object_repr` varchar(7) default NULL,
  `action_flag` int(4) default NULL,
  `change_message` varchar(15) default NULL,
  `content_type_id` int(4) default NULL,
  `user_id` int(4) default NULL,
  `action_time` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`,`action_time`) values (1,1,'patient',1,'[{\"added\": {}}]',3,2,'2023-02-15');

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(4) default NULL,
  `app_label` varchar(12) default NULL,
  `model` varchar(12) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'blood','bloodrequest'),(7,'blood','stock'),(5,'contenttypes','contenttype'),(10,'donor','blooddonate'),(9,'donor','donor'),(11,'patient','patient'),(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(4) default NULL,
  `app` varchar(12) default NULL,
  `name` varchar(40) default NULL,
  `applied` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2023-02-14'),(2,'auth','0001_initial','2023-02-14'),(3,'admin','0001_initial','2023-02-14'),(4,'admin','0002_logentry_remove_auto_add','2023-02-14'),(5,'admin','0003_logentry_add_action_flag_choices','2023-02-14'),(6,'contenttypes','0002_remove_content_type_name','2023-02-14'),(7,'auth','0002_alter_permission_name_max_length','2023-02-14'),(8,'auth','0003_alter_user_email_max_length','2023-02-14'),(9,'auth','0004_alter_user_username_opts','2023-02-14'),(10,'auth','0005_alter_user_last_login_null','2023-02-14'),(11,'auth','0006_require_contenttypes_0002','2023-02-14'),(12,'auth','0007_alter_validators_add_error_messages','2023-02-14'),(13,'auth','0008_alter_user_username_max_length','2023-02-14'),(14,'auth','0009_alter_user_last_name_max_length','2023-02-14'),(15,'auth','0010_alter_group_name_max_length','2023-02-14'),(16,'auth','0011_update_proxy_permissions','2023-02-14'),(17,'auth','0012_alter_user_first_name_max_length','2023-02-14'),(18,'patient','0001_initial','2023-02-14'),(19,'donor','0001_initial','2023-02-14'),(20,'blood','0001_initial','2023-02-14'),(21,'blood','0002_bloodrequest','2023-02-14'),(22,'blood','0003_auto_20210213_1053','2023-02-14'),(23,'blood','0004_bloodrequest_date','2023-02-14'),(24,'donor','0002_auto_20210213_1602','2023-02-14'),(25,'sessions','0001_initial','2023-02-14');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(32) default NULL,
  `session_data` varchar(228) default NULL,
  `expire_date` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('97toznnccgcvqu9tjckev4okfstjm6m7','.eJxVjMsOwiAQRf-FtSFAebp07zcQmBmkamhS2pXx35WkC93ec859sZj2rca90xpnZGem2Ol3ywke1AbAe2q3hcPStnXOfCj8oJ1fF6Tn5XD_Dmrq9VuDJyWhBHRGWENSGyGDmSBNAlT2iKSgZEuuaDQ5CQUBrdN6iMETsvcH6Pc4Ag:1pSChA:pyGr5AXi8sTDSeAFsRlQwUcFAbCteJ72yq4rg4tNNQA','2023-03-01'),('qj2ablscoe9dhj4ov3mlqelb4ve1qqdl','.eJxVjMsOwiAQRf-FtSEtjw64dO83EGYYpGogKe3K-O_apAvd3nPOfYkQt7WErfMS5iTOQovT74aRHlx3kO6x3pqkVtdlRrkr8qBdXlvi5-Vw_w5K7OVbA6IjdkNkg9l5BiDIGsiyHQzwqAjQ6ZQyupxVJAXk0Rs76YlGn5V4fwAOVzi1:1pWa0r:Nhbau9a3xjhU8CxAFeH3G4OkQzYtJ_UwWX-mtx9okrw','2023-03-13');

/*Table structure for table `donor_blooddonate` */

DROP TABLE IF EXISTS `donor_blooddonate`;

CREATE TABLE `donor_blooddonate` (
  `id` int(4) default NULL,
  `disease` varchar(7) default NULL,
  `age` int(4) default NULL,
  `bloodgroup` varchar(2) default NULL,
  `unit` int(4) default NULL,
  `status` varchar(8) default NULL,
  `date` varchar(0) default NULL,
  `donor_id` int(4) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `donor_blooddonate` */

insert  into `donor_blooddonate`(`id`,`disease`,`age`,`bloodgroup`,`unit`,`status`,`date`,`donor_id`) values (1,'Nothing',27,'A+',5,'Approved','',1);

/*Table structure for table `donor_donor` */

DROP TABLE IF EXISTS `donor_donor`;

CREATE TABLE `donor_donor` (
  `id` int(4) default NULL,
  `profile_pic` varchar(35) default NULL,
  `bloodgroup` varchar(2) default NULL,
  `address` varchar(6) default NULL,
  `mobile` bigint(20) default NULL,
  `user_id` int(4) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `donor_donor` */

insert  into `donor_donor`(`id`,`profile_pic`,`bloodgroup`,`address`,`mobile`,`user_id`) values (1,'profile_pic/Donor/Medical_Heart.jpg','A+','Mumbai',85412144214,6);

/*Table structure for table `patient_patient` */

DROP TABLE IF EXISTS `patient_patient`;

CREATE TABLE `patient_patient` (
  `id` int(4) default NULL,
  `profile_pic` varchar(31) default NULL,
  `age` int(4) default NULL,
  `bloodgroup` varchar(2) default NULL,
  `disease` varchar(5) default NULL,
  `doctorname` varchar(5) default NULL,
  `address` varchar(4) default NULL,
  `mobile` bigint(20) default NULL,
  `user_id` int(4) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `patient_patient` */

insert  into `patient_patient`(`id`,`profile_pic`,`age`,`bloodgroup`,`disease`,`doctorname`,`address`,`mobile`,`user_id`) values (2,'profile_pic/Patient/images1.jpg',25,'A+','Fevar','Anand','Pune',8966455478,5);

/*Table structure for table `sqlite_sequence` */

DROP TABLE IF EXISTS `sqlite_sequence`;

CREATE TABLE `sqlite_sequence` (
  `name` varchar(22) default NULL,
  `seq` int(4) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sqlite_sequence` */

insert  into `sqlite_sequence`(`name`,`seq`) values ('django_migrations',25),('django_admin_log',1),('django_content_type',11),('auth_permission',44),('auth_group',3),('auth_user',7),('blood_bloodrequest',3),('blood_stock',8),('auth_group_permissions',44),('patient_patient',2),('auth_user_groups',3),('donor_donor',1),('donor_blooddonate',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
