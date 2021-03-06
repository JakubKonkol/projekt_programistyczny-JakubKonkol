-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: topmovies
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `tytul` varchar(50) DEFAULT NULL,
  `gatunek` varchar(50) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `ilosc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES ('The Batman','Action/Sci-Fi',50,'admin@wp.pl',NULL),('Better Call Saul','Crime/Drama',100,'admin@wp.pl',NULL),('WandaVision','Action/Sci-Fi',150,'admin@wp.pl',NULL),('Django','Western',20,'ph@wp.pl',NULL),('Hereditary','Horror',45,'ph@wp.pl',NULL),('Better Call Saul','Crime/Drama',100,'z1@wp.pl',NULL),('The Irishman','Crime/Drama',50,'z1@wp.pl',NULL),('The Batman','Action/Sci-Fi',50,'jakubkonkol1@wp.pl',8),('Morbius','Action/Sci-Fi',450,'jakubkonkol1@wp.pl',99);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmy`
--

DROP TABLE IF EXISTS `filmy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filmy` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `quantity` int(11) NOT NULL,
  `img_src` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmy`
--

LOCK TABLES `filmy` WRITE;
/*!40000 ALTER TABLE `filmy` DISABLE KEYS */;
INSERT INTO `filmy` VALUES (0,'El Camino','Drama',100,'Po dramatycznej ucieczce Jesse musi pogodzi?? si?? z przesz??o??ci??, aby w og??le m??c my??le?? o jakiejkolwiek przysz??o??ci.',999,'assets/0.jpg'),(1,'The Batman','Action/Sci-Fi',50,'Batman i James Gordon stawiaj?? czo??a nieobliczalnemu Cz??owiekowi-Zagadce w skorumpowanym Gotham City.',5,'assets/1.jpeg'),(2,'Breaking Bad ','Crime/Drama',100,'Gdy nauczyciel chemii dowiaduje si??, ??e ma raka, postanawia rozpocz???? produkcj?? metamfetaminy, by finansowo zabezpieczy?? swoj?? rodzin??.',99,'assets/2.jpeg'),(3,'Forrest Gump','Drama',35,'Historia ??ycia Forresta, ch??opca o niskim ilorazie inteligencji z niedow??adem ko??czyn, kt??ry staje si?? miliarderem i bohaterem wojny w Wietnamie.',15,'assets/3.jpeg'),(4,'Better Call Saul','Crime/Drama',100,'Pechowy prawnik robi wszystko, by zaistnie?? na s??dowej scenie w Albuquerque.',100,'assets/4.jpeg'),(5,'The Irishman','Crime/Drama',50,'P??atny zab??jca Frank Sheeran powraca do sekret??w, kt??rych strzeg?? jako lojalny cz??onek rodziny przest??pczej Bufalino.',5,'assets/5.jpeg'),(6,'The Wolf of Wall Street','Biography',80,'Historia Jordana Belforta, brokera, kt??rego b??yskawiczna droga na szczyt i rozrzutny styl ??ycia wzbudzi??y zainteresowanie FBI.',43,'assets/6.jpeg'),(7,'Django','Western',20,'??owca nagr??d Schultz i czarnosk??ry niewolnik Django wyruszaj?? w podr????, aby odbi?? ??on?? tego drugiego z r??k bezlitosnego Calvina Candie\'ego.',23,'assets/7.jpeg'),(8,'The Lincoln Lawyer','Drama',200,'Odstawiony po wypadku na boczny tor gwiazdor palestry Los Angeles Mickey Haller wznawia karier?? i wraca do swojego s??ynnego lincolna. Zaczyna od sprawy zab??jstwa.',5,'assets/8.jpeg'),(9,'Hereditary','Horror',45,'Wkr??tce po ??mierci seniorki rodu jej rodzin?? zaczynaj?? niepokoi?? tajemnicze zdarzenia.',64,'assets/9.jpeg'),(10,'Doctor Sleep','Horror',60,'Doros??y Dan Torrance b????kaj??c si?? po Ameryce spotyka ma???? dziewczynk?? o takich samych zdolno??ciach jak on i stara si?? j?? uchroni?? przed kultem Prawdziwy W??ze??.',45,'assets/10.jpeg'),(11,'WandaVision','Action/Sci-Fi',150,'Wanda Maximoff i Vision wiod?? idealne ??ycie w domu na przedmie??ciach, jednak z czasem zaczynaj?? podejrzewa??, ??e nie wszystko jest takie, jakim si?? wydaje.',999,'assets/11.jpeg'),(12,'Friends','Comedy',10,'Losy sz??stki przyjaci????, kt??rzy mieszkaj?? i pracuj?? w Nowym Jorku.',999,'assets/12.jpeg'),(13,'Morbius','Action/Sci-Fi',450,'Biochemik Michael Morbius, pr??buj??c wyleczy?? si?? z rzadkiej choroby krwi, niechc??cy zara??a si?? pewnym rodzajem wampiryzmu.',999,'assets/13.jpg'),(14,'Joker','Crime/Drama',55,'Strudzony ??yciem komik popada w ob????d i staje si?? psychopatycznym morderc??.',30,'assets/14.jpg'),(15,'Bohemian Rhapsody','Biography',100,'Dzi??ki oryginalnemu brzmieniu Queen staje si?? jednym z najpopularniejszych zespo????w w historii muzyki.',99,'assets/15.jpg'),(16,'Nobody','Thriller',75,'Przechodzie?? jest ??wiadkiem jak grupa m????czyzn atakuje kobiet??, wi??c podejmuje interwencj??. Tym samym staje si?? celem narkotykowego bossa.',999,'assets/16.jpg'),(17,'Se7en','Thriller',30,'Dw??ch policjant??w stara si?? z??apa?? seryjnego morderc?? wybieraj??cego swoje ofiary wed??ug specjalnego klucza - siedmiu grzech??w g????wnych.',100,'assets/17.jpg'),(18,'Mr. Robot','Drama',100,'M??ody programista komputerowy pracuj??cy nad bezpiecze??stwem sieciowym wielkich korporacji zostaje zwerbowany przez grup?? haker??w.  ',90,'assets/18.jpg'),(19,'Office','Comedy',100,'Kamery towarzysz?? pracownikom oddzia??u firmy sprzedaj??cej artyku??y papierowe w czasie ich codziennych obowi??zk??w.',100,'assets/19.jpg'),(20,'The Northman','Drama',200,'Islandia, X wiek. Ksi?????? Wiking??w szuka zemsty na mordercach ojca.',5,'assets/20.jpg');
/*!40000 ALTER TABLE `filmy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opinie`
--

DROP TABLE IF EXISTS `opinie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opinie` (
  `user_email` varchar(50) DEFAULT NULL,
  `opinia` varchar(200) DEFAULT NULL,
  `id_filmu` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opinie`
--

LOCK TABLES `opinie` WRITE;
/*!40000 ALTER TABLE `opinie` DISABLE KEYS */;
INSERT INTO `opinie` VALUES ('jakubkonkol1@wp.pl',' SUPER SERIAL MOJ ULUBIONY <3',1,49),('jakubkonkol1@wp.pl',' sdasdsadsa',1,50);
/*!40000 ALTER TABLE `opinie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id_zamowienia` int(11) NOT NULL AUTO_INCREMENT,
  `sposob_dostawy` varchar(50) DEFAULT NULL,
  `metoda_platnosci` varchar(50) DEFAULT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nr_tel` int(11) DEFAULT NULL,
  `koszt_zamowienia` int(11) DEFAULT NULL,
  `data_zamowienia` date DEFAULT NULL,
  `ulica` varchar(50) DEFAULT NULL,
  `nrdomu` int(11) DEFAULT NULL,
  `miasto` varchar(50) DEFAULT NULL,
  `kodpocztowy` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_zamowienia`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (7,'kurier','applepay','Piwo','piwo','jakubkonkol1@wp.pl',666666666,50,'2022-06-01','Topolowa',11,'Rumia','84-230'),(8,'paczkomat','paypal','Ziutek','ziutowski','jakubkonkol1@wp.pl',666666666,445,'2022-06-01','Topolowa',11,'Rumia','84-230'),(9,'paczkomat','paypal','Jakub','Konkol','jakubkonkol1@wp.pl',666666666,445,'2022-06-02','Topolowa',11,'Rumia','84-230'),(10,'kurier','karta','Jakub','Konkol','jakubkonkol1@wp.pl',666666666,245,'2022-06-02','ds',0,'ds','ds');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(100) NOT NULL,
  `nazwisko` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `isadmin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'Jakub','Konkol','jakubkonkol1@wp.pl','202cb962ac59075b964b07152d234b70',1),(6,'Ziutek','ziutowski','z1@wp.pl','202cb962ac59075b964b07152d234b70',NULL),(7,'Piwo','piwo','piwo@wp.pl','202cb962ac59075b964b07152d234b70',NULL),(8,'piwo','123','qwer@wp.pl','202cb962ac59075b964b07152d234b70',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-12 20:02:09
