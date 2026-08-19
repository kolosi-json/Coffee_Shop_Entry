CREATE TABLE Menu (
  	item_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  	item_name VARCHAR(255) NOT NULL,
  	price DECIMAL NOT NULL);
  
INSERT INTO Menu (item_id, item_name, price)   
VALUES (1, 'Americano Latte', 3.99),
       (2, 'Caramel Macchiatto', 4.99),
	     (3, 'Cappuchino', 4.99);
    
