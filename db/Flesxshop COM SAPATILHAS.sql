-- --------------------------------------------------------
-- Anfitrião:                    127.0.0.1
-- Versão do servidor:           10.4.17-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Versão:              11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for flexshop
CREATE DATABASE IF NOT EXISTS `flexshop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `flexshop`;

-- Dumping structure for table flexshop.admin_info
CREATE TABLE IF NOT EXISTS `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table flexshop.admin_info: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_info` ENABLE KEYS */;

-- Dumping structure for table flexshop.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int(200) NOT NULL,
  `userid` int(100) NOT NULL,
  PRIMARY KEY (`orderid`),
  KEY `userid` (`userid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table flexshop.orders: ~0 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table flexshop.orders_items
CREATE TABLE IF NOT EXISTS `orders_items` (
  `orderitemsid` int(200) NOT NULL,
  `productid` int(100) NOT NULL,
  `orderid` int(100) NOT NULL,
  `order_item_quantity` int(10) NOT NULL,
  `order_item_price` decimal(10,2) NOT NULL,
  `order_item_details` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`orderitemsid`),
  KEY `productid` (`productid`),
  KEY `orderid` (`orderid`),
  CONSTRAINT `orders_items_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `products` (`id`),
  CONSTRAINT `orders_items_ibfk_2` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table flexshop.orders_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `orders_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_items` ENABLE KEYS */;

-- Dumping structure for table flexshop.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(100) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `productsubname` varchar(100) NOT NULL,
  `productdesc` varchar(500) NOT NULL,
  `productprice` decimal(10,2) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `conditionn` varchar(100) NOT NULL,
  `idtipo` int(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idtipo` (`idtipo`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idtipo`) REFERENCES `types_clothes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table flexshop.products: ~0 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `productname`, `productsubname`, `productdesc`, `productprice`, `product_brand`, `conditionn`, `idtipo`) VALUES
	(1, 'Nike Dunk Low', 'Retro White Black Panda (2021)', 'Created for the hardwood but taken to the streets, the Nike Dunk Low returns with crisp overlays and original team colours. This basketball icon channels \'80s vibes with premium leather in the upper that looks good and breaks in even better. Modern footwear technology helps bring the comfort into the 21st century.', 210.00, 'Nike', 'New', 1),
	(2, 'Nike Air Force 1', 'Low White 07', 'The legend lives on in the Nike Air Force 1, which stays true to its roots with iconic AF-1 style and Nike Air for all-day comfort and long-lasting wear.', 105.00, 'Nike', 'New', 1),
	(3, 'Air Jordan 1 ', 'Low Ashen Slate', 'The Air Jordan 1 is immensely popular. It is the top selling Air Jordan shoe in the brand\'s history, and releases with with a nod to Michael Jordan\'s basketball career do particularly well.', 149.00, 'Air Jordan', 'New', 1),
	(4, 'Air Jordan 1 ', 'Low Bred Toe', 'The Air Jordan 1 is immensely popular. It is the top selling Air Jordan shoe in the brand\'s history, and releases with with a nod to Michael Jordan\'s basketball career do particularly well.', 139.00, 'Air Jordan', 'New', 1),
	(5, 'Nike Air Force 1', 'Low 07 White Black Pebbled Leather', 'The legend lives on in the Nike Air Force 1, which stays true to its roots with iconic AF-1 style and Nike Air for all-day comfort and long-lasting wear.', 105.00, 'Nike', 'New', 1),
	(6, 'Nike Dunk Low', 'Racer Blue', 'Created for the hardwood but taken to the streets, the Nike Dunk Low returns with crisp overlays and original team colours. This basketball icon channels \'80s vibes with premium leather in the upper that looks good and breaks in even better. Modern footwear technology helps bring the comfort into the 21st century.', 185.00, 'Nike', 'New', 1),
	(7, 'Nike Air Force 1', 'Low White Grey', 'The legend lives on in the Nike Air Force 1, which stays true to its roots with iconic AF-1 style and Nike Air for all-day comfort and long-lasting wear.', 179.00, 'Nike', 'New', 1),
	(8, 'Nike Blazer Mid 77 ', 'NBA 75th Anniversary Knicks', 'Nike\'s legendary style has been a fact since 1972. An iconic look and experience game-changing innovation in apparel, accessories and sneakers! From the Air Max 270 react, 720, 90 and 95 to the latest React Element, Air Force 1 and Vapormax.', 147.00, 'Nike', 'New', 1),
	(9, 'Nike Blazer Mid 77', 'Next Nature University Blue ', 'Nike\'s legendary style has been a fact since 1972. An iconic look and experience game-changing innovation in apparel, accessories and sneakers! From the Air Max 270 react, 720, 90 and 95 to the latest React Element, Air Force 1 and Vapormax.', 150.00, 'Nike', 'New', 1),
	(10, 'Nike Dunk Low', 'Disrupt 2 Hyper Royal', 'Created for the hardwood but taken to the streets, the Nike Dunk Low returns with crisp overlays and original team colours. This basketball icon channels \'80s vibes with premium leather in the upper that looks good and breaks in even better. Modern footwear technology helps bring the comfort into the 21st century.', 268.00, 'Nike', 'New', 1),
	(11, 'Air Jordan 4', 'Retro Military Black', 'Michael Jordan wore the first pair of Air Jordans during an NBA match in 1985 when he had just started playing for the Chicago Bulls and his greatest successes still lay far ahead of him. The sneakers were designed by Peter Moore and the rest is history. The pair auctioned at Sotheby’s were custom-made for ‘His Airness’ in sizes 48 and 49.', 500.00, 'Air Jordan', 'New', 1),
	(12, 'Nike Air Force 1', 'Low White Navy Grey', 'The legend lives on in the Nike Air Force 1, which stays true to its roots with iconic AF-1 style and Nike Air for all-day comfort and long-lasting wear.', 125.00, 'Nike', 'New', 1),
	(13, 'Nike Air Force 1', 'Low Supreme White', 'The legend lives on in the Nike Air Force 1, which stays true to its roots with iconic AF-1 style and Nike Air for all-day comfort and long-lasting wear.', 170.00, 'Nike', 'New', 1),
	(14, 'Air Jordan 1', 'Mid Light Smoke Grey Anthracite ', 'The Air Jordan 1 Mid shoe was inspired by the first AJ1 and gives fans of retro Jordans an opportunity to follow in the footsteps of greatness. The fresh colour completes the sleek, classic materials and gives the familiar design something new.', 165.00, 'Air Jordan', 'New', 1),
	(15, 'Nike Air Force 1', 'Low Multi-Swoosh White', 'The legend lives on in the Nike Air Force 1, which stays true to its roots with iconic AF-1 style and Nike Air for all-day comfort and long-lasting wear.', 170.00, 'Nike', 'New', 1),
	(16, 'Nike Dunk Low', 'Essential Paisley Pack Green', 'Created for the hardwood but taken to the streets, the Nike Dunk Low returns with crisp overlays and original team colours. This basketball icon channels \'80s vibes with premium leather in the upper that looks good and breaks in even better. Modern footwear technology helps bring the comfort into the 21st century.', 575.00, 'Nike', 'New', 1),
	(17, 'Nike Dunk High', 'University Red', 'Nike\'s legendary style has been a fact since 1972. An iconic look and experience game-changing innovation in apparel, accessories and sneakers! From the Air Max 270 react, 720, 90 and 95 to the latest React Element, Air Force 1 and Vapormax.', 130.00, 'Nike', 'New', 1),
	(18, 'Nike Air Uptempo ', 'Summit White', 'Nike\'s legendary style has been a fact since 1972. An iconic look and experience game-changing innovation in apparel, accessories and sneakers! From the Air Max 270 react, 720, 90 and 95 to the latest React Element, Air Force 1 and Vapormax.', 200.00, 'Nike', 'New', 1),
	(19, 'Nike Air Force 1 ', 'Low Cut Out Swoosh Game Royal', 'The legend lives on in the Nike Air Force 1, which stays true to its roots with iconic AF-1 style and Nike Air for all-day comfort and long-lasting wear.', 144.00, 'Nike', 'New', 1),
	(20, 'Nike Waffle', 'One Game Royal', 'Nike\'s legendary style has been a fact since 1972. An iconic look and experience game-changing innovation in apparel, accessories and sneakers! From the Air Max 270 react, 720, 90 and 95 to the latest React Element, Air Force 1 and Vapormax.', 145.00, 'Nike', 'New', 1),
	(21, 'Air Jordan 1', 'Mid Game Royal', 'The Air Jordan 1 Mid shoe was inspired by the first AJ1 and gives fans of retro Jordans an opportunity to follow in the footsteps of greatness. The fresh colour completes the sleek, classic materials and gives the familiar design something new.', 350.00, 'Nike', 'New', 1),
	(22, 'Yeezy Boost ', '350 V2 Beluga Reflective (2021)', 'Building on the release of V1, the Yeezy Boost 350 V2 comes in a host of innovative new colourways. Our collection is a sneakerhead\'s dream with highly sought-after designs including Oreo, Frozen Yellow, Beluga and Zebra.', 270.00, 'Yeezy', 'New', 1),
	(23, 'Yeezy Boost ', '350 V2 Light', 'Building on the release of V1, the Yeezy Boost 350 V2 comes in a host of innovative new colourways. Our collection is a sneakerhead\'s dream with highly sought-after designs including Oreo, Frozen Yellow, Beluga and Zebra.', 270.00, 'Yeezy', 'New', 1),
	(24, 'Yeezy Boost', '350 V2 Bone', 'Building on the release of V1, the Yeezy Boost 350 V2 comes in a host of innovative new colourways. Our collection is a sneakerhead\'s dream with highly sought-after designs including Oreo, Frozen Yellow, Beluga and Zebra.', 270.00, 'Yeezy', 'New', 1),
	(25, 'Yeezy Foam ', 'RNNR Sulfur', 'Kanye West’s promise to make adidas Yeezy accessible to anyone who wants it hasn’t manifested itself into looking like the adidas Superstar‘s situation (yet), but it’s made strides since first being proclaimed five years ago – partially by way of initial production numbers, but more recently through reissues. ', 483.00, 'Yeezy', 'New', 1),
	(26, 'Yeezy Boost', '350 V2 Mono Ice', 'Building on the release of V1, the Yeezy Boost 350 V2 comes in a host of innovative new colourways. Our collection is a sneakerhead\'s dream with highly sought-after designs including Oreo, Frozen Yellow, Beluga and Zebra.', 350.00, 'Yeezy', 'New', 1),
	(27, 'Yeezy 500', 'Taupe Light', 'Kanye West’s promise to make adidas Yeezy accessible to anyone who wants it hasn’t manifested itself into looking like the adidas Superstar‘s situation (yet), but it’s made strides since first being proclaimed five years ago – partially by way of initial production numbers, but more recently through reissues. ', 240.00, 'Yeezy', 'New', 1),
	(28, 'Yeezy Boost', '700 V1 Wave Runner', 'Kanye West’s promise to make adidas Yeezy accessible to anyone who wants it hasn’t manifested itself into looking like the adidas Superstar‘s situation (yet), but it’s made strides since first being proclaimed five years ago – partially by way of initial production numbers, but more recently through reissues. ', 500.00, 'Yeezy', 'New', 1),
	(29, 'Yeezy Slide', 'Pure', 'Kanye West’s promise to make adidas Yeezy accessible to anyone who wants it hasn’t manifested itself into looking like the adidas Superstar‘s situation (yet), but it’s made strides since first being proclaimed five years ago – partially by way of initial production numbers, but more recently through reissues. ', 229.00, 'Yeezy', 'New', 1),
	(30, 'Yeezy Boost', '350 V2 Zebra', 'Building on the release of V1, the Yeezy Boost 350 V2 comes in a host of innovative new colourways. Our collection is a sneakerhead\'s dream with highly sought-after designs including Oreo, Frozen Yellow, Beluga and Zebra.', 320.00, 'Yeezy', 'New', 1),
	(31, 'Nike Air', 'Vapormax Off-White (2018)', 'Nike\'s legendary style has been a fact since 1972. An iconic look and experience game-changing innovation in apparel, accessories and sneakers! From the Air Max 270 react, 720, 90 and 95 to the latest React Element, Air Force 1 and Vapormax.', 740.00, 'Off-White', 'New', 1),
	(32, 'OFF-WHITE', 'Vulc Low Stripe Violet SS20', '10s across the board. Virgil Abloh likened his “The Ten” project with Nike to the sculpture of ‘David’ or ‘Mona Lisa’. Whether you agree or disagree, you can’t dispute the highly influential nature of these designs. Explore our range of Nike x Off-White and discover the Dunk, the Air Max and Jordans, each with Abloh’s signature quote marks and red tag.', 600.00, 'Off-White', 'New', 1),
	(33, 'OFF-WHITE', 'Vulc Low \'Red\'', '10s across the board. Virgil Abloh likened his “The Ten” project with Nike to the sculpture of ‘David’ or ‘Mona Lisa’. Whether you agree or disagree, you can’t dispute the highly influential nature of these designs. Explore our range of Nike x Off-White and discover the Dunk, the Air Max and Jordans, each with Abloh’s signature quote marks and red tag.', 1000.00, 'Off-White', 'New', 1),
	(34, 'OFF-WHITE', 'Vulc Low \'White Updated Stripes\'', '10s across the board. Virgil Abloh likened his “The Ten” project with Nike to the sculpture of ‘David’ or ‘Mona Lisa’. Whether you agree or disagree, you can’t dispute the highly influential nature of these designs. Explore our range of Nike x Off-White and discover the Dunk, the Air Max and Jordans, each with Abloh’s signature quote marks and red tag.', 499.00, 'Off-White', 'New', 1),
	(35, 'OFF-WHITE', 'Vulc Low \'Black Updated Stripes\'', '10s across the board. Virgil Abloh likened his “The Ten” project with Nike to the sculpture of ‘David’ or ‘Mona Lisa’. Whether you agree or disagree, you can’t dispute the highly influential nature of these designs. Explore our range of Nike x Off-White and discover the Dunk, the Air Max and Jordans, each with Abloh’s signature quote marks and red tag.', 600.00, 'Off-White', 'New', 1),
	(36, 'Nike Dunk Low', 'Off-White Lot 32', '10s across the board. Virgil Abloh likened his “The Ten” project with Nike to the sculpture of ‘David’ or ‘Mona Lisa’. Whether you agree or disagree, you can’t dispute the highly influential nature of these designs. Explore our range of Nike x Off-White and discover the Dunk, the Air Max and Jordans, each with Abloh’s signature quote marks and red tag.', 1800.00, 'Off-White', 'New', 1),
	(37, 'adidas Ultra Boost', 'DNA Beyonce Ivy Park Black', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', 115.00, 'adidas', 'New', 1),
	(38, 'adidas NMD', 'HU Pharrell NERD Chalk White', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', 320.00, 'adidas', 'New', 1),
	(39, 'adidas Forum', '84 Low Blue', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', 370.00, 'adidas', 'New', 1),
	(40, 'adidas Luna', 'Rossa 21 Prada White', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', 475.00, 'adidas', 'New', 1),
	(41, 'adidas Stan Smith', 'Triple White', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', 85.00, 'adidas', 'New', 1),
	(42, 'adidas Pharrell Williams', 'NMD Human Race Trail HU Infinite Species', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', 385.00, 'adidas', 'New', 1),
	(43, 'adidas Pharrell Williams', 'BBC Adidas HU NMD Power Blue', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', 309.00, 'adidas', 'New', 1),
	(44, 'adidas Forum', 'Low 84 BSTN Panathinaikos', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', 185.00, 'adidas', 'New', 1),
	(45, 'adidas Forum', 'Low M&M\'s Blue', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', 299.00, 'adidas', 'New', 1),
	(46, 'adidas HU', 'NMD S1 RYAT Pharrell Core White', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', 400.00, 'adidas', 'New', 1),
	(47, 'Puma MB.01', 'LaMelo Ball Rock Ridge Red Blast', 'Sport has the power to transform and empower us. As one of the world’s leading sports brands, it’s only natural that we want to stand on the same playing field as the fastest athletes on the planet. To achieve that, the PUMA brand is based on the very values that make an excellent athlete.', 190.00, 'Puma', 'New', 1),
	(48, 'Puma MB.01', 'LaMelo Ball Rick and Morty', 'Sport has the power to transform and empower us. As one of the world’s leading sports brands, it’s only natural that we want to stand on the same playing field as the fastest athletes on the planet. To achieve that, the PUMA brand is based on the very values that make an excellent athlete.', 760.00, 'Puma', 'New', 1),
	(49, 'Puma', 'Creeper Velvet', 'Sport has the power to transform and empower us. As one of the world’s leading sports brands, it’s only natural that we want to stand on the same playing field as the fastest athletes on the planet. To achieve that, the PUMA brand is based on the very values that make an excellent athlete.', 200.00, 'Puma', 'New', 1),
	(50, 'Puma MB.01', ' LaMelo Ball Queen City', 'Sport has the power to transform and empower us. As one of the world’s leading sports brands, it’s only natural that we want to stand on the same playing field as the fastest athletes on the planet. To achieve that, the PUMA brand is based on the very values that make an excellent athlete.', 260.00, 'Puma', 'New', 1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table flexshop.shipments
CREATE TABLE IF NOT EXISTS `shipments` (
  `shipment_id` int(100) NOT NULL,
  `orderid` int(100) NOT NULL,
  `shipment_tracking_number` varchar(100) NOT NULL,
  `shipment_date` datetime DEFAULT NULL,
  `details_shipment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`shipment_id`),
  KEY `orderid` (`orderid`),
  CONSTRAINT `shipments_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table flexshop.shipments: ~0 rows (approximately)
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;

-- Dumping structure for table flexshop.stocks
CREATE TABLE IF NOT EXISTS `stocks` (
  `ids` int(100) NOT NULL,
  `idproduct` int(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `stock` int(100) NOT NULL,
  `color` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ids`),
  KEY `idproduct` (`idproduct`),
  CONSTRAINT `stocks_ibfk_1` FOREIGN KEY (`idproduct`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table flexshop.stocks: ~0 rows (approximately)
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;

-- Dumping structure for table flexshop.types_clothes
CREATE TABLE IF NOT EXISTS `types_clothes` (
  `id` int(100) NOT NULL,
  `types` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table flexshop.types_clothes: ~3 rows (approximately)
/*!40000 ALTER TABLE `types_clothes` DISABLE KEYS */;
INSERT INTO `types_clothes` (`id`, `types`) VALUES
	(1, 'Sneakers'),
	(2, 'Clothes'),
	(3, 'Accessories');
/*!40000 ALTER TABLE `types_clothes` ENABLE KEYS */;

-- Dumping structure for table flexshop.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(50) DEFAULT NULL,
  `address1` varchar(150) DEFAULT NULL,
  `zipcode1` varchar(150) DEFAULT NULL,
  `address2` varchar(150) DEFAULT NULL,
  `zipcode2` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table flexshop.users: ~6 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `pass`, `gender`, `phonenumber`, `address1`, `zipcode1`, `address2`, `zipcode2`, `country`) VALUES
	(1, 'Leandro', 'antonio', 'leandro.leites234@gmail.com', '123', NULL, '79797979', '560', '4350-334', NULL, NULL, 'Portugal'),
	(5, 'Lourenço', 'Ortigão', 'lourencogg@gmail.com', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 'Pinto', 'Rei', 'pintorei@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 'adsadasd', 'asdasdasd', 'plays4noob@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 'Leandro', 'Ferreira', 'leandro.leites234@gmail.com', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, 'Leandro', 'Ferreira', 'suporte@serveasy.pt', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, 'Leandro', 'Ferreira', 'ruizinhogameplays@gmail.com', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
