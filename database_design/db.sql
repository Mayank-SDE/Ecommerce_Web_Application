CREATE DATABASE my_store_db;
use my_store_db;

-- Admin table
CREATE TABLE Admin(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
firstName VARCHAR(50),
lastName VARCHAR(50),
email VARCHAR(50),
phone VARCHAR(50),
password VARCHAR(200),
isActive INT(1) DEFAULT 1,
createdDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Customer table

CREATE TABLE Customer(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  firstName VARCHAR(50),
  lastName VARCHAR(50),
  phone VARCHAR(50),
  email VARCHAR(50),
  password VARCHAR(200),
  isActive INT(1) DEFAULT 1,
  createdDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Address Table 
CREATE TABLE CustomerAddress(
id INTEGER PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(50),
address1 VARCHAR(100),
address2 VARCHAR(100),
state VARCHAR(50),
city VARCHAR(50),
zipCode VARCHAR(50),
isActive INT(1) DEFAULT 1,
createdDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Category table 
CREATE TABLE Category(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),
  details VARCHAR(200),
  isActive INT(1) DEFAULT 1,
  createdDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Brand Table
CREATE TABLE ProductBrand(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),
  details VARCHAR(200),
  isActive INT(1) DEFAULT 1,
  createdDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Product Table 
CREATE TABLE Product(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),
  details VARCHAR(10000),
  price FLOAT,
  categoryId INTEGER,
  brandId INTEGER,
  tags VARCHAR(1000),
  isActive INT(1) DEFAULT 1,
  createdDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--product image table

CREATE TABLE ProductMetaData(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  productId INTEGER,
  fileName VARCHAR(100),
type VARCHAR(10),
createDataTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- product review table
CREATE TABLE ProductReview(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  productId INTEGER,
  customerId INTEGER,
  comments VARCHAR(1000),
  ratings FLOAT,
  createdDataTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- product review images table
CREATE TABLE ProductReviewImages(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  reviewId INTEGER,
  fileName VARCHAR(100),
  createdDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );

  -- Create table Cart
  CREATE TABLE Cart(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    customerId INTEGER,
    totalAmount VARCHAR(1000),
    createdDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );

  -- Cart Details Table
  CREATE TABLE CartDetails(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    cartId INTEGER,
    productId INTEGER,
    price FLOAT,
    quantity INTEGER,
    createdDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );


-- Order Table
CREATE TABLE CustomerOrder(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  customerId INTEGER,
  totalAmount VARCHAR(1000),
  paymentMethod VARCHAR(50),
  paymentReferenceId VARCHAR(100),
  status VARCHAR(50) DEFAULT 'placed',
  createdDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Cart Details Table
CREATE TABLE  OrderDetails (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  orderId INTEGER,
  productId INTEGER,
  price FLOAT,
  quantity INTEGER,
  createDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Coupon table
CREATE TABLE Coupon(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),
  discount float,
  type VARCHAR(50) DEFAULT 'percentage',
  activeFrom DATETIME,

);

-- FAQ Table 

CREATE TABLE FAQ(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  question VARCHAR(1000),
  answer VARCHAR(10000),
createdDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Complaint table
CREATE TABLE Complaint(
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  customerId INTEGER,
  title VARCHAR(100),
  details VARCHAR(1000),
  status INT(1),
  createDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);