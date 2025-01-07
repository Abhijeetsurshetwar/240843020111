--
-- Dumping data for table `accomodation`
--

LOCK TABLES `accomodation` WRITE;
/*!40000 ALTER TABLE `accomodation` DISABLE KEYS */;
INSERT INTO `accomodation` VALUES (1,'Hotel Radhesh','100','Shivaji Chowk,Pandharpur','9518505699'),(2,'Hotel Shree sai','20','Gopalpura,Pandharpur','9518505699'),(3,'Shivram Delux Lodge','20','Shivaji Chowk, Pandharpur','9586745689'),(4,'Shivkrupa delux Bhakt nivas','10','Shivaji Chowk , Pandharpur','9865320147');
/*!40000 ALTER TABLE `accomodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

--
-- Dumping data for table `devotee`
--

LOCK TABLES `devotee` WRITE;
/*!40000 ALTER TABLE `devotee` DISABLE KEYS */;
INSERT INTO `devotee` VALUES (1766,'18','male','MithileshPathnkar@gmail.com','789654125',45),(2234,'22','male','tambeabhay@gmail.com','9876543210',41),(2355,'21','male','Suryansh@gmail.com','4569631472',43),(2777,'20','male','abhijeetsurshetwar@gmail.com','9518505699',40),(3297,'23','male','Sidmessi@gmail.com','985476321',44),(5622,'26','male','Jatin@gmail.com','4568521397',42),(6974,'20','female','Sakshibohra@gmail.com','789654125',46),(7877,'20','female','Sanju@gmail.com','789654125',47);
/*!40000 ALTER TABLE `devotee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation`
--


--
-- Dumping data for table `slot`
--

LOCK TABLES `slot` WRITE;
/*!40000 ALTER TABLE `slot` DISABLE KEYS */;
INSERT INTO `slot` VALUES (1,'7:00 TO 8:00','P',5),(2,'17:00 TO 18:00','P',5),(3,'8:00 TO 9:00','D',5),(4,'11:00 TO 12:00','D',5),(5,'14:00 TO 15:00','D',5),(6,'17:00 TO 18:00','D',5),(7,'20:00 TO 21:00','D',5);
/*!40000 ALTER TABLE `slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Abhijeet','Abhi@413','Admin'),(2,'Wasique','Wasi@123','Owner'),(3,'Anjali','Anja@567','Admin'),(4,'Sharayu','Shar@890','Admin'),(5,'Ajinkya','Aju@123','Devotee'),(40,'Abhij','Abhi@413','Devotee'),(41,'Abhay','Abha@413','Devotee'),(42,'Jatin','Jatin@895','Devotee'),(43,'Suryansh','surya#123','Devotee'),(44,'Siddhart','Sid#861','Devotee'),(45,'Mithilesh','myth%785','Devotee'),(46,'Sakshi','Saksh@123','Devotee'),(47,'Sajivani','Sanju@123','Devotee');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;