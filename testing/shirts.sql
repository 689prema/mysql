CREATE TABLE shirts
(
shirt_id INT NOT NULL AUTO_INCREMENT,
article VARCHAR(100) NOT NULL,
color VARCHAR(100) NOT NULL,
shirt_size CHAR(5) NOT NULL,
last_worn INT,
PRIMARY KEY(shirt_id));

INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES ('t-shirt','white','S',10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);