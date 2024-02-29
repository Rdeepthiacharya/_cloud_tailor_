/* SQLyog Ultimate v10.00 Beta1
MySQL - 5.0.51b-community-nt : Database - CloudTailor */

/*!40101 SET NAMES utf8 */;
/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`CloudTailor` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `CloudTailor`;

/*Table structure for table `adminlogin` */

CREATE TABLE `adminlogin` (
  `u` varchar(100) default NULL,
  `p` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlogin` */

insert  into `adminlogin`(`u`,`p`) values ('hdadmin21@gmail.com','HDadmin@21');

/*Table structure for table `carttemp` */

CREATE TABLE `carttemp` (
  `pid` varchar(100) default NULL,
  `pdesc` varchar(100) default NULL,
  `rate` varchar(100) default NULL,
  `gst` varchar(100) default NULL,
  `pic` varchar(100) default NULL,
  `emailid` varchar(100) default NULL,
  `statu` varchar(100) default NULL,
  `productid` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/*Table structure for table `custom` */

CREATE TABLE `custom` (
  `Id` varchar(100) default NULL,
  `Name` varchar(100) default NULL,
  `Emailid` varchar(100) default NULL,
  `Address` varchar(100) default NULL,
  `Mobile` varchar(100) default NULL,
  `Images` varchar(100) default NULL,
  `Material` varchar(100) default NULL,
  `Accessories` varchar(100) default NULL,
  `Requirement` varchar(100) default NULL,
  `Dates` varchar(100) default NULL,
  `Status` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/*Table structure for table `feedback` */

CREATE TABLE `feedback` (
  `fname` varchar(100) default NULL,
  `feedback` varchar(100) default NULL,
  `ph` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `rating` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/*Table structure for table `payment2` */

CREATE TABLE `payment2` (
  `billno` varchar(100) default NULL,
  `productid` varchar(100) default NULL,
  `famt` varchar(100) default NULL,
  `emailid` varchar(100) default NULL,
  `fullname` varchar(100) default NULL,
  `addr` varchar(100) default NULL,
  `ph` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  `bdate` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/*Table structure for table `product` */

CREATE TABLE `product` (
  `pid` varchar(100) default NULL,
  `pdesc` varchar(100) default NULL,
  `rate` varchar(100) default NULL,
  `pic` varchar(100) default NULL,
  `Category` varchar(100) default NULL,
  `gst` varchar(100) default NULL,
  `size` varchar(100) default NULL,
  `stock` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/*Table structure for table `signup` */

CREATE TABLE `signup` (
  `emailid` varchar(100) default NULL,
  `fullname` varchar(100) default NULL,
  `pwd` varchar(100) default NULL,
  `addr` varchar(100) default NULL,
  `ph` varchar(100) default NULL,
  `dob` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
