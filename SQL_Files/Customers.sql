CREATE TABLE Customers (
  	customer_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	  customer_name VARCHAR(255) NOT NULL,
  	age INT NOT NULL);
    
INSERT INTO Customers (customer_id, customer_name, age)   
VALUES (101, 'John Amogus', 20),
       (102, 'Martin Septim', 35),
	     (103, 'Bianca Gomez', 19);
