CREATE DATABASE `ordermgmt` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;


DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `category_image` longblob,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;


CREATE TABLE products (
    product_id BIGINT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(50) DEFAULT NULL,
    price DOUBLE DEFAULT NULL,
    description VARCHAR(500) DEFAULT NULL,
    category_id bigint  DEFAULT NULL,  -- Ensure the data types match
    product_image LONGBLOB,
    PRIMARY KEY (product_id),
        FOREIGN KEY (category_id)
        REFERENCES category(category_id)
);

