CREATE TABLE employees(id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,middle_name VARCHAR(50),
     last_name VARCHAR(50) NOT NULL,age INT NOT NULL,
    current_status VARCHAR(50) NOT NULL DEFAULT 'employed',PRIMARY KEY(id));
    
    INSERT INTO employees(first_name,last_name,age) VALUES('Dora','Smith',58);
    