DROP DATABASE IF EXISTS bamazonDB;

CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE products (
item_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(255),
department_name VARCHAR(255),
item_price INT NOT NULL,
stock_quantity INT NOT NULL,
PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, item_price, stock_quantity)
VALUES
("Ultra Monster 500 series #36: GUN Q", "Big Big Kaiju", "5.95", "14"),

("Ultra Monster 500 series #60: GUDON", "Big Big Kaiju", "7.95", "8"),

("Ultra Monster 500 series #59: TWIN TAIL", "Big Big Kaiju", "6.49", "9"),

("Ultra Monster 500 series #10: KING PANDON", "Big Big Kaiju", "9.49", "11"),

("Ultraman Superheroes Ultra Hero 500 series #1: ULTRAMAN", "Big Big Hero", "2.99", "0"),

("Ultra Monster 500 series #14: RED KING", "Big Big Kaiju", "3.95", "13"),

("Ultraman Superheroes Ultra Hero 500 series #1: ULTRAMAN", "Big Big Hero", "4.95", "9"),

("Ultra Monster 500 series #1: ALIEN BALTAN", "Big Big Alien", "7.95", "5"),

("Ultra Monster 500 series #65: BEMLER", "Big Big Alien", "7.95", "8"),

("Ultra Monster 500 Series #63: REICUBAS", "Big Big Kaiju", "7.95", "16"),

("Ultra Monster 500 series #62: MELBA", "Big Big Kaiju", "4.45", "11"),

("Ultra Monster 500 series #68: ALIEN METRON", "Big Big Alien", "13.95", "2"),

("Ultra Monster 500 series #69: BIRDON", "Big Big Kaiju", "9.95", "4"),

("Ultra Hero 500 - Ultraman: Ultra Father", "Big Big Hero", "6.95", "7"),

("Ultra Monster 500 series #34: ASTROMONS", "Big Big Kaiju", "14.95", "1"),

("Ultra Monster 500 series #28: ALIEN ICARUS", "Big Big Alien", "7.95", "9"),

("Ultra Monster 500 series #55: MICLAS", "Big Big Kaiju", "22.95", "1"),

("Ultra Hero 500 series #26: DARK ULTRAMAN (SD)", "Big Big Hero", "4.95", "3");
