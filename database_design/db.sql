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
  createdDateTime TIMESTAMP DEFAULT CURENT_TIMESTAMP
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
)