


CREATE DATABASE IF NOT EXISTS `flexshop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `flexshop`;

-- Dumping structure for table flexshop.admin_info
CREATE TABLE IF NOT EXISTS `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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


INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `pass`, `gender`, `phonenumber`, `address1`, `zipcode1`, `address2`, `zipcode2`, `country`) VALUES
	(1, 'Leandroo', 'Leites', 'leandro.leites234@gmail.com', '123', NULL, '968409267', '900', '4350-334', NULL, NULL, 'Portugal'),
	(17, 'Leandro', 'Ferreira', 'leandro@gmail.com', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL);


-- Dumping structure for table flexshop.types_clothes
CREATE TABLE IF NOT EXISTS `types_clothes` (
  `id` int(100) NOT NULL,
  `types` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `types_clothes` (`id`, `types`) VALUES
	(1, 'Sneakers'),
	(2, 'Clothes'),
	(3, 'Accessories');
/*!40000 ALTER TABLE `types_clothes` ENABLE KEYS */;

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
  FOREIGN KEY (`idtipo`) REFERENCES `types_clothes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `products` (`id`, `productname`, `productsubname`, `productdesc`, `productprice`, `product_brand`, `conditionn`, `idtipo`) VALUES
(1, 'Nike Dunk Low', 'Retro White Black Panda (2021)', 'Created for the hardwood but taken to the streets, the Nike Dunk Low returns with crisp overlays and original team colours. This basketball icon channels \'80s vibes with premium leather in the upper that looks good and breaks in even better. Modern footwear technology helps bring the comfort into the 21st century.', '210.00', 'Nike', 'New', 1),
(2, 'Nike Air Force 1', 'Low White 07', 'The legend lives on in the Nike Air Force 1, which stays true to its roots with iconic AF-1 style and Nike Air for all-day comfort and long-lasting wear.', '105.00', 'Nike', 'New', 1),
(3, 'Air Jordan 1 ', 'Low Ashen Slate', 'The Air Jordan 1 is immensely popular. It is the top selling Air Jordan shoe in the brand\'s history, and releases with with a nod to Michael Jordan\'s basketball career do particularly well.', '149.00', 'Air Jordan', 'New', 1),
(4, 'Air Jordan 1 ', 'Low Bred Toe', 'The Air Jordan 1 is immensely popular. It is the top selling Air Jordan shoe in the brand\'s history, and releases with with a nod to Michael Jordan\'s basketball career do particularly well.', '139.00', 'Air Jordan', 'New', 1),
(5, 'Nike Air Force 1', 'Low 07 White Black Pebbled Leather', 'The legend lives on in the Nike Air Force 1, which stays true to its roots with iconic AF-1 style and Nike Air for all-day comfort and long-lasting wear.', '105.00', 'Nike', 'New', 1),
(6, 'Nike Dunk Low', 'Racer Blue', 'Created for the hardwood but taken to the streets, the Nike Dunk Low returns with crisp overlays and original team colours. This basketball icon channels \'80s vibes with premium leather in the upper that looks good and breaks in even better. Modern footwear technology helps bring the comfort into the 21st century.', '185.00', 'Nike', 'New', 1),
(7, 'Nike Air Force 1', 'Low White Grey', 'The legend lives on in the Nike Air Force 1, which stays true to its roots with iconic AF-1 style and Nike Air for all-day comfort and long-lasting wear.', '179.00', 'Nike', 'New', 1),
(8, 'Nike Blazer Mid 77 ', 'NBA 75th Anniversary Knicks', 'Nike\'s legendary style has been a fact since 1972. An iconic look and experience game-changing innovation in apparel, accessories and sneakers! From the Air Max 270 react, 720, 90 and 95 to the latest React Element, Air Force 1 and Vapormax.', '147.00', 'Nike', 'New', 1),
(9, 'Nike Blazer Mid 77', 'Next Nature University Blue ', 'Nike\'s legendary style has been a fact since 1972. An iconic look and experience game-changing innovation in apparel, accessories and sneakers! From the Air Max 270 react, 720, 90 and 95 to the latest React Element, Air Force 1 and Vapormax.', '150.00', 'Nike', 'New', 1),
(10, 'Nike Dunk Low', 'Disrupt 2 Hyper Royal', 'Created for the hardwood but taken to the streets, the Nike Dunk Low returns with crisp overlays and original team colours. This basketball icon channels \'80s vibes with premium leather in the upper that looks good and breaks in even better. Modern footwear technology helps bring the comfort into the 21st century.', '268.00', 'Nike', 'New', 1),
(11, 'Air Jordan 4', 'Retro Military Black', 'Michael Jordan wore the first pair of Air Jordans during an NBA match in 1985 when he had just started playing for the Chicago Bulls and his greatest successes still lay far ahead of him. The sneakers were designed by Peter Moore and the rest is history. The pair auctioned at Sotheby’s were custom-made for ‘His Airness’ in sizes 48 and 49.', '500.00', 'Air Jordan', 'New', 1),
(12, 'Nike Air Force 1', 'Low White Navy Grey', 'The legend lives on in the Nike Air Force 1, which stays true to its roots with iconic AF-1 style and Nike Air for all-day comfort and long-lasting wear.', '125.00', 'Nike', 'New', 1),
(13, 'Nike Air Force 1', 'Low Supreme White', 'The legend lives on in the Nike Air Force 1, which stays true to its roots with iconic AF-1 style and Nike Air for all-day comfort and long-lasting wear.', '170.00', 'Nike', 'New', 1),
(14, 'Air Jordan 1', 'Mid Light Smoke Grey Anthracite ', 'The Air Jordan 1 Mid shoe was inspired by the first AJ1 and gives fans of retro Jordans an opportunity to follow in the footsteps of greatness. The fresh colour completes the sleek, classic materials and gives the familiar design something new.', '165.00', 'Air Jordan', 'New', 1),
(15, 'Nike Air Force 1', 'Low Multi-Swoosh White', 'The legend lives on in the Nike Air Force 1, which stays true to its roots with iconic AF-1 style and Nike Air for all-day comfort and long-lasting wear.', '170.00', 'Nike', 'New', 1),
(16, 'Nike Dunk Low', 'Essential Paisley Pack Green', 'Created for the hardwood but taken to the streets, the Nike Dunk Low returns with crisp overlays and original team colours. This basketball icon channels \'80s vibes with premium leather in the upper that looks good and breaks in even better. Modern footwear technology helps bring the comfort into the 21st century.', '575.00', 'Nike', 'New', 1),
(17, 'Nike Dunk High', 'University Red', 'Nike\'s legendary style has been a fact since 1972. An iconic look and experience game-changing innovation in apparel, accessories and sneakers! From the Air Max 270 react, 720, 90 and 95 to the latest React Element, Air Force 1 and Vapormax.', '130.00', 'Nike', 'New', 1),
(18, 'Nike Air Uptempo ', 'Summit White', 'Nike\'s legendary style has been a fact since 1972. An iconic look and experience game-changing innovation in apparel, accessories and sneakers! From the Air Max 270 react, 720, 90 and 95 to the latest React Element, Air Force 1 and Vapormax.', '200.00', 'Nike', 'New', 1),
(19, 'Nike Air Force 1 ', 'Low Cut Out Swoosh Game Royal', 'The legend lives on in the Nike Air Force 1, which stays true to its roots with iconic AF-1 style and Nike Air for all-day comfort and long-lasting wear.', '144.00', 'Nike', 'New', 1),
(20, 'Nike Waffle', 'One Game Royal', 'Nike\'s legendary style has been a fact since 1972. An iconic look and experience game-changing innovation in apparel, accessories and sneakers! From the Air Max 270 react, 720, 90 and 95 to the latest React Element, Air Force 1 and Vapormax.', '145.00', 'Nike', 'New', 1),
(21, 'Air Jordan 1', 'Mid Game Royal', 'The Air Jordan 1 Mid shoe was inspired by the first AJ1 and gives fans of retro Jordans an opportunity to follow in the footsteps of greatness. The fresh colour completes the sleek, classic materials and gives the familiar design something new.', '350.00', 'Nike', 'New', 1),
(22, 'Yeezy Boost ', '350 V2 Beluga Reflective (2021)', 'Building on the release of V1, the Yeezy Boost 350 V2 comes in a host of innovative new colourways. Our collection is a sneakerhead\'s dream with highly sought-after designs including Oreo, Frozen Yellow, Beluga and Zebra.', '270.00', 'Yeezy', 'New', 1),
(23, 'Yeezy Boost ', '350 V2 Light', 'Building on the release of V1, the Yeezy Boost 350 V2 comes in a host of innovative new colourways. Our collection is a sneakerhead\'s dream with highly sought-after designs including Oreo, Frozen Yellow, Beluga and Zebra.', '270.00', 'Yeezy', 'New', 1),
(24, 'Yeezy Boost', '350 V2 Bone', 'Building on the release of V1, the Yeezy Boost 350 V2 comes in a host of innovative new colourways. Our collection is a sneakerhead\'s dream with highly sought-after designs including Oreo, Frozen Yellow, Beluga and Zebra.', '270.00', 'Yeezy', 'New', 1),
(25, 'Yeezy Foam ', 'RNNR Sulfur', 'Kanye West’s promise to make adidas Yeezy accessible to anyone who wants it hasn’t manifested itself into looking like the adidas Superstar‘s situation (yet), but it’s made strides since first being proclaimed five years ago – partially by way of initial production numbers, but more recently through reissues. ', '483.00', 'Yeezy', 'New', 1),
(26, 'Yeezy Boost', '350 V2 Mono Ice', 'Building on the release of V1, the Yeezy Boost 350 V2 comes in a host of innovative new colourways. Our collection is a sneakerhead\'s dream with highly sought-after designs including Oreo, Frozen Yellow, Beluga and Zebra.', '350.00', 'Yeezy', 'New', 1),
(27, 'Yeezy 500', 'Taupe Light', 'Kanye West’s promise to make adidas Yeezy accessible to anyone who wants it hasn’t manifested itself into looking like the adidas Superstar‘s situation (yet), but it’s made strides since first being proclaimed five years ago – partially by way of initial production numbers, but more recently through reissues. ', '240.00', 'Yeezy', 'New', 1),
(28, 'Yeezy Boost', '700 V1 Wave Runner', 'Kanye West’s promise to make adidas Yeezy accessible to anyone who wants it hasn’t manifested itself into looking like the adidas Superstar‘s situation (yet), but it’s made strides since first being proclaimed five years ago – partially by way of initial production numbers, but more recently through reissues. ', '500.00', 'Yeezy', 'New', 1),
(29, 'Yeezy Slide', 'Pure', 'Kanye West’s promise to make adidas Yeezy accessible to anyone who wants it hasn’t manifested itself into looking like the adidas Superstar‘s situation (yet), but it’s made strides since first being proclaimed five years ago – partially by way of initial production numbers, but more recently through reissues. ', '229.00', 'Yeezy', 'New', 1),
(30, 'Yeezy Boost', '350 V2 Zebra', 'Building on the release of V1, the Yeezy Boost 350 V2 comes in a host of innovative new colourways. Our collection is a sneakerhead\'s dream with highly sought-after designs including Oreo, Frozen Yellow, Beluga and Zebra.', '320.00', 'Yeezy', 'New', 1),
(31, 'Nike Air', 'Vapormax Off-White (2018)', 'Nike\'s legendary style has been a fact since 1972. An iconic look and experience game-changing innovation in apparel, accessories and sneakers! From the Air Max 270 react, 720, 90 and 95 to the latest React Element, Air Force 1 and Vapormax.', '740.00', 'Off-White', 'New', 1),
(32, 'OFF-WHITE', 'Vulc Low Stripe Violet SS20', '10s across the board. Virgil Abloh likened his “The Ten” project with Nike to the sculpture of ‘David’ or ‘Mona Lisa’. Whether you agree or disagree, you can’t dispute the highly influential nature of these designs. Explore our range of Nike x Off-White and discover the Dunk, the Air Max and Jordans, each with Abloh’s signature quote marks and red tag.', '600.00', 'Off-White', 'New', 1),
(33, 'OFF-WHITE', 'Vulc Low \'Red\'', '10s across the board. Virgil Abloh likened his “The Ten” project with Nike to the sculpture of ‘David’ or ‘Mona Lisa’. Whether you agree or disagree, you can’t dispute the highly influential nature of these designs. Explore our range of Nike x Off-White and discover the Dunk, the Air Max and Jordans, each with Abloh’s signature quote marks and red tag.', '1000.00', 'Off-White', 'New', 1),
(34, 'OFF-WHITE', 'Vulc Low \'White Updated Stripes\'', '10s across the board. Virgil Abloh likened his “The Ten” project with Nike to the sculpture of ‘David’ or ‘Mona Lisa’. Whether you agree or disagree, you can’t dispute the highly influential nature of these designs. Explore our range of Nike x Off-White and discover the Dunk, the Air Max and Jordans, each with Abloh’s signature quote marks and red tag.', '499.00', 'Off-White', 'New', 1),
(35, 'OFF-WHITE', 'Vulc Low \'Black Updated Stripes\'', '10s across the board. Virgil Abloh likened his “The Ten” project with Nike to the sculpture of ‘David’ or ‘Mona Lisa’. Whether you agree or disagree, you can’t dispute the highly influential nature of these designs. Explore our range of Nike x Off-White and discover the Dunk, the Air Max and Jordans, each with Abloh’s signature quote marks and red tag.', '600.00', 'Off-White', 'New', 1),
(36, 'Nike Dunk Low', 'Off-White Lot 32', '10s across the board. Virgil Abloh likened his “The Ten” project with Nike to the sculpture of ‘David’ or ‘Mona Lisa’. Whether you agree or disagree, you can’t dispute the highly influential nature of these designs. Explore our range of Nike x Off-White and discover the Dunk, the Air Max and Jordans, each with Abloh’s signature quote marks and red tag.', '1800.00', 'Off-White', 'New', 1),
(37, 'adidas Ultra Boost', 'DNA Beyonce Ivy Park Black', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', '115.00', 'adidas', 'New', 1),
(38, 'adidas NMD', 'HU Pharrell NERD Chalk White', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', '320.00', 'adidas', 'New', 1),
(39, 'adidas Forum', '84 Low Blue', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', '370.00', 'adidas', 'New', 1),
(40, 'adidas Luna', 'Rossa 21 Prada White', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', '475.00', 'adidas', 'New', 1),
(41, 'adidas Stan Smith', 'Triple White', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', '85.00', 'adidas', 'New', 1),
(42, 'adidas Pharrell Williams', 'NMD Human Race Trail HU Infinite Species', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', '385.00', 'adidas', 'New', 1),
(43, 'adidas Pharrell Williams', 'BBC Adidas HU NMD Power Blue', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', '309.00', 'adidas', 'New', 1),
(44, 'adidas Forum', 'Low 84 BSTN Panathinaikos', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', '185.00', 'adidas', 'New', 1),
(45, 'adidas Forum', 'Low M&M\'s Blue', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', '299.00', 'adidas', 'New', 1),
(46, 'adidas HU', 'NMD S1 RYAT Pharrell Core White', 'The adidas brand has been a household name in the sports world since 1924. The brand belongs to the absolute top segment of the sports market and has shown that it represents more than sport for quite some time! Everything adidas creates is worn in different sports, as streetwear with a casual look, and by the big stars across the whole world.', '400.00', 'adidas', 'New', 1),
(47, 'Puma MB.01', 'LaMelo Ball Rock Ridge Red Blast', 'Sport has the power to transform and empower us. As one of the world’s leading sports brands, it’s only natural that we want to stand on the same playing field as the fastest athletes on the planet. To achieve that, the PUMA brand is based on the very values that make an excellent athlete.', '190.00', 'Puma', 'New', 1),
(48, 'Puma MB.01', 'LaMelo Ball Rick and Morty', 'Sport has the power to transform and empower us. As one of the world’s leading sports brands, it’s only natural that we want to stand on the same playing field as the fastest athletes on the planet. To achieve that, the PUMA brand is based on the very values that make an excellent athlete.', '760.00', 'Puma', 'New', 1),
(49, 'Puma', 'Creeper Velvet', 'Sport has the power to transform and empower us. As one of the world’s leading sports brands, it’s only natural that we want to stand on the same playing field as the fastest athletes on the planet. To achieve that, the PUMA brand is based on the very values that make an excellent athlete.', '200.00', 'Puma', 'New', 1),
(50, 'Puma MB.01', ' LaMelo Ball Queen City', 'Sport has the power to transform and empower us. As one of the world’s leading sports brands, it’s only natural that we want to stand on the same playing field as the fastest athletes on the planet. To achieve that, the PUMA brand is based on the very values that make an excellent athlete.', '260.00', 'Puma', 'New', 1),
(51, 'Juice Wrld x Vlone 999 T-shirt', 'Black', 'This black Juice Wrld x Vlone t-shirt was dropped on July 13th, 2020, and has since become one of the most popular apparel items on StockX. The t-shirt features the words \"Legends Never Die\" on the front, a phrase meant to honor the life of the late artist. The back of the t-shirt features an orange Vlone logo with a 999 inside of it. This t-shirt was made available at the retail price of $75 USD.', '58.00', 'Vlone', 'New', 2),
(52, 'Essentials Pullover Hoodie Applique ', 'Fear of God Buttercream', 'This buttercream Fear Of God Essentials hoodie dropped alongside five other colorways as a part of the brand\'s SS20 release in July. This particular hoodie has been extremely popular since it\'s release, demanding some of the highest price premiums of anything from Fear Of God SS20. This Essentials Hoodie was released on July 1st, 2020, at a retail price of $90 USD.', '144.00', 'Essentials', 'New', 2),
(53, 'Nike x Stussy Hoodie', 'Grey', 'This collaborative collection, as evolved over 20 years of partnership, features straightforward logo tees, sweatshirts and beanies for everyday wear. Timeless, simple and essential apparel done right.', '130.00', 'Nike', 'New', 2),
(54, 'Anti Social Social Club Kkoch Hoodie', 'Black', 'The Anti Social Social Club Kkoch Hoodie was one of the most resold hoodies on StockX in 2020. The hoodie features Anti Social Social Club’s unmissable logo beneath a growth of flowers and two butterflies on the back of the garment. This hoodie does an excellent job capturing the sensitive yet unapproachable spirit of Anti Social Social Club which has undoubtedly played into the piece’s popularity. This Anti Social Social Club Hoodie released at a retail price of $69 USD on March 28th, 2020.', '100.00', 'Anti Social Social Club', 'New', 2),
(55, 'The North Face 1996 Retro Nuptse 700 Fill Packable Jacket', 'Recycled TNF Black', 'This black The North Face 1996 Retro Nuptse Jacket takes the outerwear brand\'s classic, and potentially most popular design, and constructs it from 100% recycled fabric. Like the traditional Nuptse Jacket, the recycled version features 700 Fill-down, a stowable hood, and a water-repellent finish.', '189.00', 'The North Face', 'New', 2),
(56, 'Supreme Box Logo L/S Tee', 'White', 'Featuring a red Supreme Box Logo on the chest of a white long sleeve t-shirt, this tee dropped as a part of the brand\'s first ever release of a long sleeve box logo. The shirts dropped in nine different colorways, all except white and grey featuring a Supreme Box Logo of the same color as the t-shirt. Both the white and grey versions of the long sleeve Supreme Box logo feature a red logo graphic.', '164.00', 'Supreme', 'New', 2),
(57, 'Nike x Stussy Sweatpants', 'Grey', 'This collaborative collection, as evolved over 20 years of partnership, features straightforward logo tees, sweatshirts and beanies for everyday wear. Timeless, simple and essential apparel done right.', '117.00', 'Nike', 'New', 2),
(58, 'Off-White x Jordan T-shirt', 'White', 'Off-White released this collaborative T-shirt with Jordan as a part of an eight piece November 2021 collection.', '200.00', 'Off-White', 'New', 2),
(59, 'Yeezy x Gap Hoodie', 'Brown', 'This brown Yeezy x GAP Hoodie was made available as a part of a shock drop in September of 2021, which marked the first time that the two brands would release this collaborative garment.', '191.00', 'Yeezy', 'New', 2),
(60, 'Bravest Studios 2021 NY Shorts', 'Blue/Light Blue', 'Blue/Light Blue', '204.00', 'Bravest Studios', 'New', 2),
(61, 'Garment Workshop Fate/Karma College Jacket', 'Fire Red', '- 6 individually sewn, chenille-embroidered patches', '169.00', 'Garment ', 'New', 2),
(62, 'Kid Cudi CPFM For MOTM III Beautiful Trip Crewneck', 'Yellow', 'By listing this item for sale, you are committing to ship your item within the standard 2-day shipping window. Deadlines will not be extended to accommodate shipping delays from the retailer.', '164.00', 'CPFM For MOTM', 'New', 2),
(63, 'Nike Tech Fleece Full Zip Hoodie', 'Black/Dark Grey Heather/White', 'BLACK/DARK GREY HEATHER/WHITE', '118.00', 'Nike', 'New', 2),
(64, 'Supreme Burberry Crusher', 'Beige', '05/19/2022', 200.00, 'Burberry', 'New', 3),
(65, 'OFF-WHITE Virgil Square Frame Sunglasses', 'Black White Grey (FW21)', 'Season: FW21', 300.00, 'Off-White', 'New', 3),
(66, 'Louis Vuitton GM Sunglasses Case', 'Green', 'Louis Vuitton GM Sunglasses Case Green, Style Number GI0770.', 617.00, 'Louis Vuitton', 'New', 3),
(67, 'Swatch x Omega Bioceramic Moonswatch Mission to Earth', 'SO33G100', 'The Swatch x Omega Bioceramic Moonswatch Mission to Earth (SO33G100) is one of 11 silhouettes released by the collaboration between Swatch and Omega, offering a unique take on the Omega Speedmaster. The Swatch x Omega Mission to Earth (SO33G100) features both the Omega and Swatch logos on the "Moonswatch," with a velcro strap.', 395.00, 'Swatch', 'New', 3),
(68, 'Nike Pro Hyperwarm Hood Balaclava', 'Black', 'BLACK', 64.00, 'Nike', 'New', 3),
(69, 'Swatch x Omega Bioceramic Moonswatch Mission to the Sun', 'SO33J100', 'Harness the power of the sun with the Swatch x Omega Bioceramic Moonswatch Mission to the Sun (SO33J100). The Swatch x Omega Mission to the Sun (SO33J100) features a white velcro strap, and a yellow sun-colored dial. ', 429.00, 'Swatch', 'New', 3),
(70, 'Supreme Repeat Leather Belt', 'Red', 'Season: SS22', 142.00, 'Supreme', 'New', 3),
(71, 'Supreme Nike Arc Corduroy 6-Panel', 'Purple', 'Season: SS22', 89.00, 'Supreme', 'New', 3),
(72, 'Off-White Industrial Belt', 'Yellow/Black', 'The Off-White Industrial Belt is potentially the most well-recognized and popular item the brand has ever made. The yellow and black version is the most classic iteration of the belt and features Off-White branding as well as red stitching down the middle. This belt has been seen on celebrities both inside and outside of Virgil Abloh\'s direct circle, from Lil Uzi Vert to Tan France. This particular Off-White Industrial Belt retailed for $225 USD but has primarily resold on StockX for below retai', 100.00, 'Off-White', 'New', 3),
(73, 'Nike x Drake Certified Lover Boy Hat', 'White', 'Drake and Nike released a collaborative merchandise capsule in late October, 2020, for the artist\'s new album, "Certified Lover Boy." Though the album would not drop until several months after the merch capsule was dropped, Drake set the stage for the album\'s release with his Nike collaboration. The Drake Certified Lover Boy capsule included 12 pieces, of which four were friends and family only. ', 42.00, 'Nike', 'New', 3),
(74, 'Supreme Sling Bag (SS22)', 'Black', 'Season: SS22', 98.00, 'Supreme', 'New', 3),
(75, 'Supreme Glow In The Dark Zippo', 'White', 'Dropped as a part of Supreme\'s inaugural SS20 Week One release, the Glow-In-The-Dark Zippo was undoubtedly one of the most hyped items of the season debut. The lighter features the same Supreme Logo design as SS18\'s Zippo lighter, this time on a glow in the dark white color instead of red. The Supreme Glow-in-the-Dark Zippo released on February 20th, 2020, and retailed for $48 USD.', 126.00, 'Supreme', 'New', 3),
(76, 'BAPE Glow In The Dark Shark Mask', 'White', 'Season: SS20', 75.00, 'BAPE', 'New', 3),
(77, 'Supreme Duffle Bag (FW21)', 'Black', 'Season: FW21', 167.00, 'Supreme', 'New', 3),
(78, 'Supreme Franklin CFX Pro Batting Glove', 'Red', 'Season: SS22', 82.00, 'Supreme', 'New', 3),
(79, 'Supreme Backpack (FW20)', 'Olive', 'The Supreme Backpack (FW20) Olive features an all-olive backpack with a Supreme box logo as the centerpoint of the silhouette. Two vertical straps also feature a repeating Supreme logo motif. The backpack is equipped with straps and hardware, so your gear is always secure when you’re on the go.', 301.00, 'Supreme', 'New', 3);





CREATE TABLE IF NOT EXISTS `orders_items` (
  `orderitemsid` int(200) NOT NULL AUTO_INCREMENT,
  `productid` int(100) NOT NULL,
  `idclient` int(100) NOT NULL,
  `order_item_quantity` int(10) NOT NULL,
  `order_item_price` decimal(10,2) NOT NULL,
  `order_item_details` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`orderitemsid`),
  KEY `productid` (`productid`),
  FOREIGN KEY (`productid`) REFERENCES `products` (`id`),
  FOREIGN KEY (`idclient`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Dumping structure for table flexshop.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int(200) NOT NULL,
  `userid` int(100) NOT NULL,
  PRIMARY KEY (`orderid`),
  KEY `userid` (`userid`),
  FOREIGN KEY (`orderid`) REFERENCES `orders_items` (`orderitemsid`),
  FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- Dumping structure for table flexshop.products


-- Dumping structure for table flexshop.shipments
CREATE TABLE IF NOT EXISTS `shipments` (
  `shipment_id` int(100) NOT NULL,
  `orderid` int(100) NOT NULL,
  `shipment_tracking_number` varchar(100) NOT NULL,
  `shipment_date` datetime DEFAULT NULL,
  `details_shipment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`shipment_id`),
  KEY `orderid` (`orderid`),
  FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Dumping structure for table flexshop.stocks
CREATE TABLE IF NOT EXISTS `stocks` (
  `ids` int(100) NOT NULL,
  `idproduct` int(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `stock` int(100) NOT NULL,
  `color` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ids`),
  KEY `idproduct` (`idproduct`),
  FOREIGN KEY (`idproduct`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





-- Dumping structure for table flexshop.users

