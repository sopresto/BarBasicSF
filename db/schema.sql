-- CREATE DATABASE users_db;
-- USE DATABASE users_db;

-- CREATE TABLE users (
--     id INT NOT NULL AUTO_INCREMENT,
--     email VARCHAR(255) NOT NULL,
--     password VARCHAR(255) NOT NULL,
--     PRIMARY KEY(id)
-- );

CREATE TABLE products(
    product_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    image_url TEXT NOT NULL,
    quantity INT NOT NULL,
    SKU INT NOT NULL,
    price INT NOT NULL,
    PRIMARY KEY(product_id)
);

INSERT INTO products (title, category, description, image_url, quantity, SKU, price) VALUES 
("Summer Fun", "Dresses", "Overwhelm in Yellow, fun in the sun magic", "/assets/images/summer-yellow.jpg", 1, 1234, 150),
("Black Out", "sport", "Staying Sporty in black","/assets/images/black-adidas-fit.jpg", 1, 12345, 85),
("Transitional", "casual", "Transition from day to night, stay casual my friends!", "/assets/images/black-teddy.jpg" , 1, 123456, 200),
("Its Fall Out", "fall","Are you trying to rep fall yet?","/assets/images/fall-brown.jpg", 1, 1234567, 275),
("Feeling Relaxed", "sport", "Stay LAX ", "/assets/images/pink-sweater-adidas.jpg", 1, 12345678, 90), 
("Slightly Bundled", "fall", "Caramel Lattes and Autumn Vibes","/assets/images/stripped-pant.jpg", 1, 123456789, 150), 
("Sweatered and Flirty", "fall",  "Basic decisions come easy... ", "/assets/images/sweater-dress.jpg", 1, 10, 55), 
("Hug your Teddy", "fall", "Somewhere in between fall and summer, so SF!", "/assets/images/teddy-jacket.jpg", 1, 109, 175),
("Black & White", "casual", "Basic and nothing else...", "/assets/images/classic-blk.jpg", 1, 1098, 115), 
("Black", "sport", "Workout or go for that pizza this outfit does both!", "/assets/images/sporty-leather.jpg", 1, 10987, 95); 

