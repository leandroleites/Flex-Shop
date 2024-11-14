DROP database if exists flexshop;

CREATE DATABASE IF NOT EXISTS flexshop DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

SET character_set_connection=utf8;
SET character_set_client=utf8;
SET character_set_results=utf8;
USE flexshop ;


CREATE TABLE admin_info (
  admin_id int(10) NOT NULL,
  admin_name varchar(100) NOT NULL,
  admin_email varchar(300) NOT NULL,
  admin_password varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela orders
--

CREATE TABLE orders (
  orderid int(200) NOT NULL ,
  userid int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela orders_items
--

CREATE TABLE orders_items (
  orderitemsid int(200) NOT NULL  ,
  productid int(100) NOT NULL,
  orderid int(100) NOT NULL,
  order_item_quantity int(10) NOT NULL,
  order_item_price decimal(10,2) NOT NULL,
  order_item_details varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela products
--

CREATE TABLE products (
  id int(100) NOT NULL,
  productname varchar(100) NOT NULL,
  productdesc varchar(100) NOT NULL,
  productprice decimal(10,2) NOT NULL,
  product_brand varchar(100) NOT NULL,
  conditionn varchar(100) NOT NULL,
  idtipo int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela shipments
--

CREATE TABLE shipments (
  shipment_id int(100) NOT NULL,
  orderid int(100) NOT NULL,
  shipment_tracking_number varchar(100) NOT NULL,
  shipment_date datetime DEFAULT NULL,
  details_shipment varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela stocks
--

CREATE TABLE stocks (
  ids int(100) NOT NULL,
  idproduct int(100) NOT NULL,
  size varchar(100) NOT NULL,
  stock int(100) NOT NULL,
  color varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela types_clothes
--

CREATE TABLE types_clothes (
  id int(100) NOT NULL,
  types varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela users
--

CREATE TABLE users (
  id int(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  firstname varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  lastname varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  email varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  pass varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  gender varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  phonenumber varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  address1 varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  zipcode1 varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  address2 varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  zipcode2 varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  country varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela orders
--
ALTER TABLE orders
  ADD PRIMARY KEY (orderid),
  ADD KEY userid (userid);

--
-- Índices para tabela orders_items
--
ALTER TABLE orders_items
  ADD PRIMARY KEY (orderitemsid),
  ADD KEY productid (productid),
  ADD KEY orderid (orderid);

--
-- Índices para tabela products
--
ALTER TABLE products
  ADD PRIMARY KEY (id),
  ADD KEY idtipo (idtipo);

--
-- Índices para tabela shipments
--
ALTER TABLE shipments
  ADD PRIMARY KEY (shipment_id),
  ADD KEY orderid (orderid);

--
-- Índices para tabela stocks
--
ALTER TABLE stocks
  ADD PRIMARY KEY (ids),
  ADD KEY idproduct (idproduct);

--
-- Índices para tabela types_clothes
--
ALTER TABLE types_clothes
  ADD PRIMARY KEY (id);


-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela orders
--
ALTER TABLE orders
  ADD CONSTRAINT orders_ibfk_1 FOREIGN KEY (userid) REFERENCES users (id);

--
-- Limitadores para a tabela orders_items
--
ALTER TABLE orders_items
  ADD CONSTRAINT orders_items_ibfk_1 FOREIGN KEY (productid) REFERENCES products (id),
  ADD CONSTRAINT orders_items_ibfk_2 FOREIGN KEY (orderid) REFERENCES orders (orderid);

--
-- Limitadores para a tabela products
--
ALTER TABLE products
  ADD CONSTRAINT products_ibfk_1 FOREIGN KEY (idtipo) REFERENCES types_clothes (id);

--
-- Limitadores para a tabela shipments
--
ALTER TABLE shipments
  ADD CONSTRAINT shipments_ibfk_1 FOREIGN KEY (orderid) REFERENCES orders (orderid);

--
-- Limitadores para a tabela stocks
--
ALTER TABLE stocks
  ADD CONSTRAINT stocks_ibfk_1 FOREIGN KEY (idproduct) REFERENCES products (id);



