CREATE DATABASE users_db;
USE DATABASE users_db;

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE products(
    product_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    image_url TEXT NOT NULL,
    quantity INT NOT NULL,
    SKU INT NOT NULL,
    price INT NOT NULL,
    total INT NOT NULL,
    PRIMARY KEY(product_id)
);