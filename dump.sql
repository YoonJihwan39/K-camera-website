-- MySQL dump 10.15  Distrib 10.0.38-MariaDB, for debian-linux-gnu (x86_64)          
--                                                                                   
-- Host: localhost    Database: db2015410104                                         
-- ------------------------------------------------------                            
-- Server version       10.0.38-MariaDB-0ubuntu0.16.04.1                             
                                                                                     
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;                    
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;                  
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;                    
/*!40101 SET NAMES utf8mb4 */;                                                       
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;                                          
/*!40103 SET TIME_ZONE='+00:00' */;                                                  
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;                 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;  
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;          
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;                             
                                                                                     
--                                                                                   
-- Table structure for table `advisor`                                               
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `advisor`;                                                      
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `advisor` (                                                             
  `s_ID` varchar(5) NOT NULL,                                                        
  `i_ID` varchar(5) NOT NULL,                                                        
  PRIMARY KEY (`s_ID`),                                                              
  KEY `i_ID` (`i_ID`),                                                               
  CONSTRAINT `advisor_ibfk_1` FOREIGN KEY (`i_ID`) REFERENCES `instructor` (`ID`),   
  CONSTRAINT `advisor_ibfk_2` FOREIGN KEY (`s_ID`) REFERENCES `student` (`ID`)       
) ENGINE=InnoDB DEFAULT CHARSET=utf8;                                                
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `advisor`                                                  
--                                                                                   
                                                                                     
LOCK TABLES `advisor` WRITE;                                                         
/*!40000 ALTER TABLE `advisor` DISABLE KEYS */;                                      
INSERT INTO `advisor` VALUES ('12345','10101'),('44553','22222'),('45678','22222'),('
00128','45565'),('76543','45565'),('23121','76543'),('98988','76766'),('76653','98345
'),('98765','98345');                                                                
/*!40000 ALTER TABLE `advisor` ENABLE KEYS */;                                       
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `battles`                                               
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `battles`;                                                      
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `battles` (                                                             
  `b_name` varchar(15) NOT NULL,                                                     
  `year` int(4) DEFAULT NULL,                                                        
  PRIMARY KEY (`b_name`)                                                             
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;                                             
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `battles`                                                  
--                                                                                   
                                                                                     
LOCK TABLES `battles` WRITE;                                                         
/*!40000 ALTER TABLE `battles` DISABLE KEYS */;                                      
INSERT INTO `battles` VALUES ('노량',1598),('대청',2009),('대한해협',1950),('레이테만',1944),('미드
웨이',1942),('산타크루즈',1942),('콜롬방가라',1943),('페낭',1945),('필리핀해',1944);                   
/*!40000 ALTER TABLE `battles` ENABLE KEYS */;                                       
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `booking`                                               
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `booking`;                                                      
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `booking` (                                                             
  `guest_id` varchar(10) NOT NULL,                                                   
  `hotel_id` varchar(10) NOT NULL,                                                   
  `room_id` varchar(5) NOT NULL,                                                     
  `date_from` varchar(10) NOT NULL,                                                  
  `date_to` varchar(10) NOT NULL,                                                    
  PRIMARY KEY (`guest_id`,`hotel_id`,`room_id`,`date_from`,`date_to`)                
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;                                             
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `booking`                                                  
--                                                                                   
                                                                                     
LOCK TABLES `booking` WRITE;                                                         
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;                                      
INSERT INTO `booking` VALUES ('1000','20000','102','20190331','20190401'),('1000','30
000','301','20190402','20190404'),('1001','10000','103','20190401','20190403'),('1001
','90000','201','20190405','20190407'),('1002','10000','103','20190405','20190407'),(
'1002','70000','201','20190408','20190410'),('1003','10000','302','20190402','2019040
3'),('1003','30000','301','20190404','20190412'),('1004','10001','101','20190402','20
190403'),('1004','30000','101','20190401','20190403'),('1005','10000','102','20190407
','20190409'),('1005','70000','202','20190404','20190406'),('1006','70000','103','201
90411','20190413'),('1006','90000','103','20190414','20190419'),('1007','20000','301'
,'20190407','20190409'),('1007','30000','201','20190403','20190404'),('1008','10000',
'101','20190402','20190409'),('1008','10000','102','20190410','20190411'),('1010','20
000','202','20190407','20190410'),('1010','90000','302','20190411','20190415');      
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;                                       
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `camera`                                                
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `camera`;                                                       
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `camera` (                                                              
  `camera_id` int(11) NOT NULL AUTO_INCREMENT,                                       
  `camera_name` varchar(50) NOT NULL,                                                
  `CMFR_id` int(11) NOT NULL,                                                        
  `sensor_size` varchar(30) NOT NULL,                                                
  `resolution` varchar(20) NOT NULL,                                                 
  `c_year` year(4) NOT NULL,                                                         
  `mount_id` int(11) NOT NULL,                                                       
  PRIMARY KEY (`camera_id`),                                                         
  KEY `CMFR_id` (`CMFR_id`),                                                         
  KEY `mount_id` (`mount_id`),                                                       
  CONSTRAINT `camera_ibfk_1` FOREIGN KEY (`CMFR_id`) REFERENCES `camera_manufacturer`
 (`CMFR_id`),                                                                        
  CONSTRAINT `camera_ibfk_2` FOREIGN KEY (`mount_id`) REFERENCES `mount` (`mount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;                           
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `camera`                                                   
--                                                                                   
                                                                                     
LOCK TABLES `camera` WRITE;                                                          
/*!40000 ALTER TABLE `camera` DISABLE KEYS */;                                       
INSERT INTO `camera` VALUES (1,'EOS 5D Mark IV',1,'24 x 36','6880 x 4544',2016,1),(2,
'EOS 6D Mark II',1,'24 x 35.9','6384 x 4224',2017,1),(3,'D850',2,'23.9 x 35.9','8288 
x 5520',2017,2),(4,'D750',2,'24 x 35.9','6032 x 4032',2014,2),(5,'OM-D E-M1 Mark II',
3,'13 x 17.4','5240 x 3912',2016,4),(6,'OM-D E-M10 Mark II',3,'13 x 17.3','4640 x 347
2',2015,4),(7,'A7R III',4,'24 x 35.9','8000 x 5320',2017,3),(8,'A7 III',4,'23.8 x 35.
6','6024 x 4024',2018,3),(9,'X-T3',5,'23.5 x 15.6','6240 x 4160',2018,5),(13,'EOS-1D 
X Mark II',1,'24 X 36','5496 X 3670',2016,1),(14,'EOS 80D',1,'15 X 22.5','6288 X 4056
',2016,6),(15,'a9',4,'23.8 X 35.6','6024 X 4024',2017,3),(16,'X1D-50c',7,'32.9 X 43.8
','8280 X 6208',2016,7);                                                             
/*!40000 ALTER TABLE `camera` ENABLE KEYS */;                                        
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `camera_manufacturer`                                   
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `camera_manufacturer`;                                          
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `camera_manufacturer` (                                                 
  `CMFR_id` int(11) NOT NULL AUTO_INCREMENT,                                         
  `CMFR_name` varchar(30) NOT NULL,                                                  
  `c_country` varchar(20) NOT NULL,                                                  
  PRIMARY KEY (`CMFR_id`)                                                            
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;                            
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `camera_manufacturer`                                      
--                                                                                   
                                                                                     
LOCK TABLES `camera_manufacturer` WRITE;                                             
/*!40000 ALTER TABLE `camera_manufacturer` DISABLE KEYS */;                          
INSERT INTO `camera_manufacturer` VALUES (1,'Canon','Japan'),(2,'Nikon','Japan'),(3,'
Olympus','Japan'),(4,'Sony','Japan'),(5,'Fujifilm','Japan'),(6,'Leica','Germany'),(7,
'Hasselblad','Sweden');                                                              
/*!40000 ALTER TABLE `camera_manufacturer` ENABLE KEYS */;                           
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `classes`                                               
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `classes`;                                                      
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `classes` (                                                             
  `class` varchar(15) NOT NULL,                                                      
  `type` char(2) NOT NULL,                                                           
  `numGuns` int(11) DEFAULT NULL,                                                    
  `displacement` int(11) DEFAULT NULL,                                               
  PRIMARY KEY (`class`)                                                              
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;                                             
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `classes`                                                  
--                                                                                   
                                                                                     
LOCK TABLES `classes` WRITE;                                                         
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;                                      
INSERT INTO `classes` VALUES ('세종대왕급','DD',1,7650),('아이오와급','BB',158,45000),('야마토급','
BB',61,72000),('요크타운급','CV',48,25000),('울산급','FF',5,1500),('일본목선급','BB',5,2000),('퀸 엘
리자베스급','BB',34,30000);                                                               
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;                                       
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `classroom`                                             
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `classroom`;                                                    
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `classroom` (                                                           
  `building` varchar(15) NOT NULL,                                                   
  `room_number` varchar(7) NOT NULL,                                                 
  `capacity` int(11) DEFAULT NULL,                                                   
  PRIMARY KEY (`building`,`room_number`)                                             
) ENGINE=InnoDB DEFAULT CHARSET=utf8;                                                
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `classroom`                                                
--                                                                                   
                                                                                     
LOCK TABLES `classroom` WRITE;                                                       
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;                                    
INSERT INTO `classroom` VALUES ('Packard','101',500),('Painter','514',10),('Taylor','
3128',70),('Watson','100',30),('Watson','120',50);                                   
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;                                     
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `course`                                                
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `course`;                                                       
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `course` (                                                              
  `course_id` varchar(8) NOT NULL,                                                   
  `title` varchar(50) DEFAULT NULL,                                                  
  `dept_name` varchar(20) NOT NULL,                                                  
  `credits` int(11) DEFAULT NULL,                                                    
  PRIMARY KEY (`course_id`),                                                         
  KEY `dept_name` (`dept_name`),                                                     
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept
_name`)                                                                              
) ENGINE=InnoDB DEFAULT CHARSET=utf8;                                                
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `course`                                                   
--                                                                                   
                                                                                     
LOCK TABLES `course` WRITE;                                                          
/*!40000 ALTER TABLE `course` DISABLE KEYS */;                                       
INSERT INTO `course` VALUES ('BIO-101','Intro. to Biology','Biology',4),('BIO-301','G
enetics','Biology',4),('BIO-399','Computational Biology','Biology',3),('CS-101','Intr
o. to Computer Science','Comp. Sci.',4),('CS-190','Game Design','Comp. Sci.',4),('CS-
315','Robotics','Comp. Sci.',3),('CS-319','Image Processing','Comp. Sci.',3),('CS-347
','Database System Concepts','Comp. Sci.',3),('EE-181','Intro. to Digital Systems','E
lec. Eng.',3),('FIN-201','Investment Banking','Finance',3),('HIS-351','World History'
,'History',3),('MU-199','Music Video Production','Music',3),('PHY-101','Physical Prin
ciples','Physics',4);                                                                
/*!40000 ALTER TABLE `course` ENABLE KEYS */;                                        
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `department`                                            
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `department`;                                                   
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `department` (                                                          
  `dept_name` varchar(20) NOT NULL,                                                  
  `building` varchar(15) DEFAULT NULL,                                               
  `budget` decimal(12,2) DEFAULT NULL,                                               
  PRIMARY KEY (`dept_name`)                                                          
) ENGINE=InnoDB DEFAULT CHARSET=utf8;                                                
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `department`                                               
--                                                                                   
                                                                                     
LOCK TABLES `department` WRITE;                                                      
/*!40000 ALTER TABLE `department` DISABLE KEYS */;                                   
INSERT INTO `department` VALUES ('Biology','Watson',90000.00),('Comp. Sci.','Taylor',
100000.00),('Elec. Eng.','Taylor',85000.00),('Finance','Painter',120000.00),('History
','Painter',50000.00),('Music','Packard',80000.00),('Physics','Watson',70000.00);    
/*!40000 ALTER TABLE `department` ENABLE KEYS */;                                    
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `guest`                                                 
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `guest`;                                                        
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `guest` (                                                               
  `guest_id` varchar(10) NOT NULL,                                                   
  `guest_name` varchar(20) NOT NULL,                                                 
  `age` int(11) NOT NULL,                                                            
  `guest_city` varchar(10) DEFAULT NULL,                                             
  PRIMARY KEY (`guest_id`)                                                           
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;                                             
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `guest`                                                    
--                                                                                   
                                                                                     
LOCK TABLES `guest` WRITE;                                                           
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;                                        
INSERT INTO `guest` VALUES ('1000','홍길동',35,'서울'),('1001','김길동',45,'서울'),('1002','고길동
',55,'원주'),('1003','김민수',65,'가평'),('1004','김만수',75,'원주'),('1005','김기동',25,'London'),(
'1006','김상수',32,'가평'),('1007','이상수',19,'London'),('1008','김하늘',23,'서울'),('1009','김노숙'
,60,'서울'),('1010','김기람',54,'가평');                                                    
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;                                         
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `hotel`                                                 
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `hotel`;                                                        
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `hotel` (                                                               
  `hotel_id` varchar(10) NOT NULL,                                                   
  `hotel_name` varchar(20) NOT NULL,                                                 
  `city` varchar(10) NOT NULL,                                                       
  PRIMARY KEY (`hotel_id`)                                                           
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;                                             
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `hotel`                                                    
--                                                                                   
                                                                                     
LOCK TABLES `hotel` WRITE;                                                           
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;                                        
INSERT INTO `hotel` VALUES ('10000','한국호텔','서울'),('10001','세인트존스호텔','서울'),('20000','강
한친구호텔','원주'),('30000','스카이캐슬호텔','가평'),('70000','Rundon_Hotel','London'),('90000','Rak
uten_Hotel','London');                                                               
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;                                         
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `instructor`                                            
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `instructor`;                                                   
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `instructor` (                                                          
  `ID` char(5) NOT NULL,                                                             
  `name` varchar(20) NOT NULL,                                                       
  `dept_name` varchar(20) NOT NULL,                                                  
  `salary` decimal(8,2) DEFAULT NULL,                                                
  PRIMARY KEY (`ID`),                                                                
  KEY `dept_name` (`dept_name`),                                                     
  CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`
dept_name`)                                                                          
) ENGINE=InnoDB DEFAULT CHARSET=utf8;                                                
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `instructor`                                               
--                                                                                   
                                                                                     
LOCK TABLES `instructor` WRITE;                                                      
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;                                   
INSERT INTO `instructor` VALUES ('10101','Srinivasan','Comp. Sci.',65000.00),('12121'
,'Wu','Finance',90000.00),('15151','Mozart','Music',40000.00),('22222','Einstein','Ph
ysics',95000.00),('32343','El Said','History',60000.00),('33456','Gold','Physics',870
00.00),('45565','Katz','Comp. Sci.',75000.00),('58583','Califieri','History',62000.00
),('76543','Singh','Finance',80000.00),('76766','Crick','Biology',72000.00),('83821',
'Brandt','Comp. Sci.',92000.00),('98345','Kim','Elec. Eng.',80000.00);               
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;                                    
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `lens`                                                  
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `lens`;                                                         
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `lens` (                                                                
  `lens_id` int(11) NOT NULL AUTO_INCREMENT,                                         
  `lens_name` varchar(50) NOT NULL,                                                  
  `LMFR_id` int(11) NOT NULL,                                                        
  `focal_range` varchar(20) NOT NULL,                                                
  `Aperture` varchar(10) NOT NULL,                                                   
  `l_year` year(4) NOT NULL,                                                         
  `mount_id` int(11) NOT NULL,                                                       
  PRIMARY KEY (`lens_id`),                                                           
  KEY `LMFR_id` (`LMFR_id`),                                                         
  KEY `mount_id` (`mount_id`),                                                       
  CONSTRAINT `lens_ibfk_1` FOREIGN KEY (`LMFR_id`) REFERENCES `lens_manufacturer` (`L
MFR_id`),                                                                            
  CONSTRAINT `lens_ibfk_2` FOREIGN KEY (`mount_id`) REFERENCES `mount` (`mount_id`)  
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;                           
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `lens`                                                     
--                                                                                   
                                                                                     
LOCK TABLES `lens` WRITE;                                                            
/*!40000 ALTER TABLE `lens` DISABLE KEYS */;                                         
INSERT INTO `lens` VALUES (1,'EF 35mm f/1.4L II USM',1,'35','f/1.4',2015,1),(2,'EF 24
-70mm f/2.8L II USM',1,'24-70','f/2.8',2012,1),(3,'AF-S Nikkor 85mm f/1.4G',2,'85','f
/1.4',2010,2),(4,'AF-S NIKKOR 300mm f/2.8G ED VR',2,'300','f/2.8',2009,2),(5,'M.ZUIKO
 DIGITAL ED 75mm F1.8',3,'75','f/1.8',2012,4),(6,'M.ZUIKO DIGITAL ED 12-40mm F2.8',3,
'12-40','f/2.8',2013,4),(7,'FE 85mm F1.4 GM',4,'85','f/1.4',2016,3),(8,'FE 50mm F2.8 
MACRO',4,'50','f/2.8',2016,3),(9,'XF 35mm F/1.4 R',5,'35','f/1.4',2012,5),(10,'85mm F
1.4 DG HSM A Canon',8,'85','f/1.4',2016,1),(11,'85mm F1.4 DG HSM A Nikon',8,'85','f/1
.4',2016,2),(12,'AF 85 mm F1.4 F',9,'85','f/1.4',2019,2),(13,'XP 10mm F3.5',9,'10','f
/3.5',2019,1),(15,'18-35mm F1.8 DC HSM A Canon',8,'18-35','f/1.8',2013,6),(16,'16mm f
/2.0 ED AS UMC CS Canon',9,'16','f/2.0',2013,6);                                     
/*!40000 ALTER TABLE `lens` ENABLE KEYS */;                                          
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `lens_manufacturer`                                     
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `lens_manufacturer`;                                            
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `lens_manufacturer` (                                                   
  `LMFR_id` int(11) NOT NULL AUTO_INCREMENT,                                         
  `LMFR_name` varchar(30) NOT NULL,                                                  
  `l_country` varchar(20) NOT NULL,                                                  
  PRIMARY KEY (`LMFR_id`)                                                            
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;                           
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `lens_manufacturer`                                        
--                                                                                   
                                                                                     
LOCK TABLES `lens_manufacturer` WRITE;                                               
/*!40000 ALTER TABLE `lens_manufacturer` DISABLE KEYS */;                            
INSERT INTO `lens_manufacturer` VALUES (1,'Canon','Japan'),(2,'Nikon','Japan'),(3,'Ol
ympus','Japan'),(4,'Sony','Japan'),(5,'Fujifilm','Japan'),(6,'Leica','Germany'),(7,'H
asselblad','Sweden'),(8,'Sigma','Japan'),(9,'Samyang','South Korea'),(10,'Zeiss','Ger
many');                                                                              
/*!40000 ALTER TABLE `lens_manufacturer` ENABLE KEYS */;                             
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `mount`                                                 
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `mount`;                                                        
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `mount` (                                                               
  `mount_id` int(11) NOT NULL AUTO_INCREMENT,                                        
  `mount_name` varchar(20) NOT NULL,                                                 
  PRIMARY KEY (`mount_id`)                                                           
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;                            
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `mount`                                                    
--                                                                                   
                                                                                     
LOCK TABLES `mount` WRITE;                                                           
/*!40000 ALTER TABLE `mount` DISABLE KEYS */;                                        
INSERT INTO `mount` VALUES (1,'Canon EF'),(2,'Nikon F'),(3,'Sony FE'),(4,'Micro 4/3')
,(5,'FUJIFILM X'),(6,'Canon EF-S'),(7,'Hasselblad X');                               
/*!40000 ALTER TABLE `mount` ENABLE KEYS */;                                         
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `outcomes`                                              
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `outcomes`;                                                     
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `outcomes` (                                                            
  `s_name` varchar(30) NOT NULL,                                                     
  `b_name` varchar(15) NOT NULL,                                                     
  `result` varchar(5) NOT NULL,                                                      
  PRIMARY KEY (`s_name`,`b_name`)                                                    
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;                                             
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `outcomes`                                                 
--                                                                                   
                                                                                     
LOCK TABLES `outcomes` WRITE;                                                        
/*!40000 ALTER TABLE `outcomes` DISABLE KEYS */;                                     
INSERT INTO `outcomes` VALUES ('아이오와','대한해협','손상'),('아이오와','레이테만','OK'),('아이오와','콜롬방가
라','OK'),('아이오와','페낭','OK'),('아이오와','필리핀해','OK'),('야마토','미드웨이','손상'),('엔터프라이즈','산타크루즈
','손상'),('요크타운','미드웨이','침몰'),('워스파이트','페낭','OK'),('일본전선','노량','침몰'),('전남','대청','OK'),
('퀸 엘리자베스','페낭','OK'),('호넷','산타크루즈','손상');                                           
/*!40000 ALTER TABLE `outcomes` ENABLE KEYS */;                                      
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `prereq`                                                
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `prereq`;                                                       
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `prereq` (                                                              
  `course_id` varchar(8) NOT NULL,                                                   
  `prereq_id` varchar(8) NOT NULL,                                                   
  PRIMARY KEY (`course_id`,`prereq_id`),                                             
  KEY `prereq_id` (`prereq_id`),                                                     
  CONSTRAINT `prereq_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_i
d`),                                                                                 
  CONSTRAINT `prereq_ibfk_2` FOREIGN KEY (`prereq_id`) REFERENCES `course` (`course_i
d`)                                                                                  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;                                                
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `prereq`                                                   
--                                                                                   
                                                                                     
LOCK TABLES `prereq` WRITE;                                                          
/*!40000 ALTER TABLE `prereq` DISABLE KEYS */;                                       
INSERT INTO `prereq` VALUES ('BIO-301','BIO-101'),('BIO-399','BIO-101'),('CS-190','CS
-101'),('CS-315','CS-101'),('CS-319','CS-101'),('CS-347','CS-101'),('EE-181','PHY-101
');                                                                                  
/*!40000 ALTER TABLE `prereq` ENABLE KEYS */;                                        
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `room`                                                  
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `room`;                                                         
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `room` (                                                                
  `hotel_id` varchar(10) NOT NULL,                                                   
  `room_id` varchar(5) NOT NULL,                                                     
  `type` varchar(20) NOT NULL,                                                       
  `price` int(11) DEFAULT NULL,                                                      
  PRIMARY KEY (`hotel_id`,`room_id`)                                                 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;                                             
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `room`                                                     
--                                                                                   
                                                                                     
LOCK TABLES `room` WRITE;                                                            
/*!40000 ALTER TABLE `room` DISABLE KEYS */;                                         
INSERT INTO `room` VALUES ('10000','101','single_room',100000),('10000','102','single
_room',100000),('10000','103','single_room',100000),('10000','201','doouble_room',180
000),('10000','202','doouble_room',180000),('10000','203','doouble_room',180000),('10
000','301','permium_room',300000),('10000','302','permium_room',300000),('10001','101
','single_room',130000),('10001','102','single_room',130000),('10001','103','single_r
oom',130000),('10001','201','doouble_room',200000),('10001','202','doouble_room',2000
00),('10001','203','doouble_room',200000),('10001','301','permium_room',400000),('100
01','302','permium_room',400000),('20000','101','single_room',50000),('20000','102','
single_room',50000),('20000','103','single_room',50000),('20000','201','doouble_room'
,80000),('20000','202','doouble_room',80000),('20000','301','permium_room',120000),('
30000','101','single_room',500000),('30000','102','single_room',500000),('30000','103
','single_room',500000),('30000','201','doouble_room',900000),('30000','202','doouble
_room',900000),('30000','301','permium_room',1500000),('30000','302','permium_room',1
500000),('70000','101','single_room',100000),('70000','102','single_room',100000),('7
0000','103','single_room',100000),('70000','201','doouble_room',200000),('70000','202
','doouble_room',200000),('70000','301','permium_room',300000),('70000','302','permiu
m_room',300000),('90000','101','single_room',120000),('90000','102','single_room',120
000),('90000','103','single_room',120000),('90000','201','doouble_room',200000),('900
00','202','doouble_room',200000),('90000','301','permium_room',300000),('90000','302'
,'permium_room',300000);                                                             
/*!40000 ALTER TABLE `room` ENABLE KEYS */;                                          
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `section`                                               
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `section`;                                                      
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `section` (                                                             
  `course_id` varchar(8) NOT NULL,                                                   
  `sec_id` varchar(8) NOT NULL,                                                      
  `semester` varchar(6) NOT NULL,                                                    
  `year` int(11) NOT NULL,                                                           
  `building` varchar(15) NOT NULL,                                                   
  `room_number` varchar(7) NOT NULL,                                                 
  `time_slot_id` varchar(4) NOT NULL,                                                
  PRIMARY KEY (`course_id`,`sec_id`,`semester`,`year`),                              
  KEY `building` (`building`,`room_number`),                                         
  KEY `time_slot_id` (`time_slot_id`),                                               
  CONSTRAINT `section_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_
id`),                                                                                
  CONSTRAINT `section_ibfk_2` FOREIGN KEY (`building`, `room_number`) REFERENCES `cla
ssroom` (`building`, `room_number`),                                                 
  CONSTRAINT `section_ibfk_3` FOREIGN KEY (`time_slot_id`) REFERENCES `time_slot` (`t
ime_slot_id`)                                                                        
) ENGINE=InnoDB DEFAULT CHARSET=utf8;                                                
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `section`                                                  
--                                                                                   
                                                                                     
LOCK TABLES `section` WRITE;                                                         
/*!40000 ALTER TABLE `section` DISABLE KEYS */;                                      
INSERT INTO `section` VALUES ('BIO-101','1','Summer',2009,'Painter','514','B'),('BIO-
301','1','Summer',2010,'Painter','514','A'),('CS-101','1','Fall',2009,'Packard','101'
,'H'),('CS-101','1','Spring',2010,'Packard','101','F'),('CS-190','1','Spring',2009,'T
aylor','3128','E'),('CS-190','2','Spring',2009,'Taylor','3128','A'),('CS-315','1','Sp
ring',2010,'Watson','120','D'),('CS-319','1','Spring',2010,'Watson','100','B'),('CS-3
19','2','Spring',2010,'Taylor','3128','C'),('CS-347','1','Fall',2009,'Taylor','3128',
'A'),('EE-181','1','Spring',2009,'Taylor','3128','C'),('FIN-201','1','Spring',2010,'P
ackard','101','B'),('HIS-351','1','Spring',2010,'Painter','514','C'),('MU-199','1','S
pring',2010,'Packard','101','D'),('PHY-101','1','Fall',2009,'Watson','100','A');     
/*!40000 ALTER TABLE `section` ENABLE KEYS */;                                       
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `ships`                                                 
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `ships`;                                                        
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `ships` (                                                               
  `s_name` varchar(30) NOT NULL,                                                     
  `class` varchar(15) DEFAULT NULL,                                                  
  `country` varchar(15) NOT NULL,                                                    
  `launched` int(11) DEFAULT NULL,                                                   
  PRIMARY KEY (`s_name`)                                                             
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;                                             
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `ships`                                                    
--                                                                                   
                                                                                     
LOCK TABLES `ships` WRITE;                                                           
/*!40000 ALTER TABLE `ships` DISABLE KEYS */;                                        
INSERT INTO `ships` VALUES ('뉴저지','아이오와급','미국',1943),('미주리','아이오와급','미국',1944),('밸리언트
','퀸 엘리자베스급','영국',1916),('서애 류성룡','세종대왕급','대한민국',2012),('세종 대왕','세종대왕급','대한민국',2008),
('아이오와','아이오와급','미국',1943),('야마토','야마토급','일본',1942),('엔터프라이즈','요크타운급','미국',1938),('요크
타운','요크타운급','미국',1937),('워스파이트','퀸 엘리자베스급','영국',1915),('위스콘신','아이오와급','미국',1944),('율곡
 이이','세종대왕급','대한민국',2010),('일본전선','일본목선급','일본',NULL),('전남','울산급','대한민국',1988),('퀸 엘리자
베스','퀸 엘리자베스급','영국',1915),('호넷','요크타운급','미국',1942);                                  
/*!40000 ALTER TABLE `ships` ENABLE KEYS */;                                         
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `student`                                               
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `student`;                                                      
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `student` (                                                             
  `ID` varchar(5) NOT NULL,                                                          
  `name` varchar(20) NOT NULL,                                                       
  `dept_name` varchar(20) DEFAULT NULL,                                              
  `tot_cred` int(11) DEFAULT NULL,                                                   
  PRIMARY KEY (`ID`),                                                                
  KEY `dept_name` (`dept_name`),                                                     
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dep
t_name`)                                                                             
) ENGINE=InnoDB DEFAULT CHARSET=utf8;                                                
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `student`                                                  
--                                                                                   
                                                                                     
LOCK TABLES `student` WRITE;                                                         
/*!40000 ALTER TABLE `student` DISABLE KEYS */;                                      
INSERT INTO `student` VALUES ('00000','ShinHwan Kang','Comp. Sci.',100),('00001','Hoe
Hoon Jung','Comp. Sci.',100),('00128','Zhang','Comp. Sci.',102),('12345','Shankar','C
omp. Sci.',32),('19991','Brandt','History',80),('23121','Chavez','Finance',110),('445
53','Peltier','Physics',56),('45678','Levy','Physics',46),('54321','Williams','Comp. 
Sci.',54),('55739','Sanchez','Music',38),('70557','Snow','Physics',0),('76543','Brown
','Comp. Sci.',58),('76653','Aoi','Elec. Eng.',60),('98765','Bourikas','Elec. Eng.',9
8),('98988','Tanaka','Biology',120);                                                 
/*!40000 ALTER TABLE `student` ENABLE KEYS */;                                       
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `takes`                                                 
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `takes`;                                                        
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `takes` (                                                               
  `ID` varchar(5) NOT NULL,                                                          
  `course_id` varchar(8) NOT NULL,                                                   
  `sec_id` varchar(8) NOT NULL,                                                      
  `semester` varchar(6) NOT NULL,                                                    
  `year` int(11) NOT NULL,                                                           
  `grade` varchar(2) DEFAULT NULL,                                                   
  PRIMARY KEY (`ID`,`course_id`,`sec_id`,`semester`,`year`),                         
  KEY `course_id` (`course_id`,`sec_id`,`semester`,`year`),                          
  CONSTRAINT `takes_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `student` (`ID`),          
  CONSTRAINT `takes_ibfk_2` FOREIGN KEY (`course_id`, `sec_id`, `semester`, `year`) R
EFERENCES `section` (`course_id`, `sec_id`, `semester`, `year`)                      
) ENGINE=InnoDB DEFAULT CHARSET=utf8;                                                
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `takes`                                                    
--                                                                                   
                                                                                     
LOCK TABLES `takes` WRITE;                                                           
/*!40000 ALTER TABLE `takes` DISABLE KEYS */;                                        
INSERT INTO `takes` VALUES ('00000','CS-347','1','Fall',2009,'A+'),('00001','CS-347',
'1','Fall',2009,'A+'),('00128','CS-101','1','Fall',2009,'A'),('00128','CS-347','1','F
all',2009,'A-'),('12345','CS-101','1','Fall',2009,'C'),('12345','CS-190','2','Spring'
,2009,'A'),('12345','CS-315','1','Spring',2010,'A'),('12345','CS-347','1','Fall',2009
,'A'),('19991','HIS-351','1','Spring',2010,'B'),('23121','FIN-201','1','Spring',2010,
'C+'),('44553','PHY-101','1','Fall',2009,'B-'),('45678','CS-101','1','Fall',2009,'F')
,('45678','CS-101','1','Spring',2010,'B+'),('45678','CS-319','1','Spring',2010,'B'),(
'54321','CS-101','1','Fall',2009,'A-'),('54321','CS-190','2','Spring',2009,'B+'),('55
739','MU-199','1','Spring',2010,'A-'),('76543','CS-101','1','Fall',2009,'A'),('76543'
,'CS-319','2','Spring',2010,'A'),('76653','EE-181','1','Spring',2009,'C'),('98765','C
S-101','1','Fall',2009,'C-'),('98765','CS-315','1','Spring',2010,'B'),('98988','BIO-1
01','1','Summer',2009,'A'),('98988','BIO-301','1','Summer',2010,NULL);               
/*!40000 ALTER TABLE `takes` ENABLE KEYS */;                                         
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `teaches`                                               
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `teaches`;                                                      
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `teaches` (                                                             
  `ID` varchar(5) NOT NULL,                                                          
  `course_id` varchar(8) NOT NULL,                                                   
  `sec_id` varchar(8) NOT NULL,                                                      
  `semester` varchar(6) NOT NULL,                                                    
  `year` int(11) NOT NULL,                                                           
  PRIMARY KEY (`ID`,`course_id`,`sec_id`,`semester`,`year`),                         
  KEY `course_id` (`course_id`,`sec_id`,`semester`,`year`),                          
  CONSTRAINT `teaches_ibfk_1` FOREIGN KEY (`course_id`, `sec_id`, `semester`, `year`)
 REFERENCES `section` (`course_id`, `sec_id`, `semester`, `year`),                   
  CONSTRAINT `teaches_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `instructor` (`ID`)      
) ENGINE=InnoDB DEFAULT CHARSET=utf8;                                                
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `teaches`                                                  
--                                                                                   
                                                                                     
LOCK TABLES `teaches` WRITE;                                                         
/*!40000 ALTER TABLE `teaches` DISABLE KEYS */;                                      
INSERT INTO `teaches` VALUES ('10101','CS-101','1','Fall',2009),('10101','CS-315','1'
,'Spring',2010),('10101','CS-347','1','Fall',2009),('12121','FIN-201','1','Spring',20
10),('15151','MU-199','1','Spring',2010),('22222','PHY-101','1','Fall',2009),('32343'
,'HIS-351','1','Spring',2010),('45565','CS-101','1','Spring',2010),('45565','CS-319',
'1','Spring',2010),('76766','BIO-101','1','Summer',2009),('76766','BIO-301','1','Summ
er',2010),('83821','CS-190','1','Spring',2009),('83821','CS-190','2','Spring',2009),(
'83821','CS-319','2','Spring',2010),('98345','EE-181','1','Spring',2009);            
/*!40000 ALTER TABLE `teaches` ENABLE KEYS */;                                       
UNLOCK TABLES;                                                                       
                                                                                     
--                                                                                   
-- Table structure for table `time_slot`                                             
--                                                                                   
                                                                                     
DROP TABLE IF EXISTS `time_slot`;                                                    
/*!40101 SET @saved_cs_client     = @@character_set_client */;                       
/*!40101 SET character_set_client = utf8 */;                                         
CREATE TABLE `time_slot` (                                                           
  `time_slot_id` varchar(4) NOT NULL,                                                
  `day` varchar(1) NOT NULL,                                                         
  `start_hr` decimal(2,0) NOT NULL,                                                  
  `start_min` decimal(2,0) NOT NULL,                                                 
  `end_hr` decimal(2,0) NOT NULL,                                                    
  `end_min` decimal(2,0) NOT NULL,                                                   
  PRIMARY KEY (`time_slot_id`,`day`,`start_hr`,`start_min`)                          
) ENGINE=InnoDB DEFAULT CHARSET=utf8;                                                
/*!40101 SET character_set_client = @saved_cs_client */;                             
                                                                                     
--                                                                                   
-- Dumping data for table `time_slot`                                                
--                                                                                   
                                                                                     
LOCK TABLES `time_slot` WRITE;                                                       
/*!40000 ALTER TABLE `time_slot` DISABLE KEYS */;                                    
INSERT INTO `time_slot` VALUES ('A','F',8,0,8,50),('A','M',8,0,8,50),('A','W',8,0,8,5
0),('B','F',9,0,9,50),('B','M',9,0,9,50),('B','W',9,0,9,50),('C','F',11,0,11,50),('C'
,'M',11,0,11,50),('C','W',11,0,11,50),('D','F',13,0,13,50),('D','M',13,0,13,50),('D',
'W',13,0,13,50),('E','R',10,30,11,45),('E','T',10,30,11,45),('F','R',14,30,15,45),('F
','T',14,30,15,45),('G','F',16,0,16,50),('G','M',16,0,16,50),('G','W',16,0,16,50),('H
','W',10,0,12,30);                                                                   
/*!40000 ALTER TABLE `time_slot` ENABLE KEYS */;                                     
UNLOCK TABLES;                                                                       
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;                                            
                                                                                     
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;                                              
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;                          
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;                                    
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;                      
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;                    
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;                      
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;                                            
                                                                                     
-- Dump completed on 2019-07-03 15:27:16                                             
